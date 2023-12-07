import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:smart_house/login.dart';
import 'modelos/usuario.dart';
import 'Home.dart';
import 'package:firebase_auth/firebase_auth.dart';



class cadastro_usuario extends StatefulWidget {
  const cadastro_usuario({super.key});

  @override
  State<cadastro_usuario> createState() => _cadastro_usuarioState();
}



class _cadastro_usuarioState extends State<cadastro_usuario> {

  bool _cadastro = false;
  // String _botao = "Entrar";
  String _mensagemErro = "";
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerSenha = TextEditingController();

  _cadastrar(Usuario usuario){
    FirebaseAuth auth = FirebaseAuth.instance;
    auth.createUserWithEmailAndPassword(
        email: usuario.email,
        password: usuario.senha
    ).then((firebaseUser) =>
        Navigator.pushReplacement(context, //redireciona para a página de anúncios
            MaterialPageRoute(
                builder: (context) => login())));
  }

  _logar(Usuario usuario){
    FirebaseAuth auth = FirebaseAuth.instance;
    auth.signInWithEmailAndPassword(
        email: usuario.email,
        password: usuario.senha
    ).then((firebaseUser) =>
        Navigator.pushReplacement(context, //redireciona para a página de anúncios
            MaterialPageRoute(
                builder: (context) => home())));
  }

  _validarCampos(){
    //transfere os campos digitados para as variáveis
    String email = _controllerEmail.text;
    String senha = _controllerSenha.text;
    //compara se os compos estão vazios e email contém @ e senha tenha mais que 5 caracteres
    if (email.isNotEmpty && email.contains("@")) {
      if (senha.isNotEmpty && senha.length > 5) {
        setState(() {
          _mensagemErro = "";
        });
        //define usuário
        Usuario usuario = Usuario(); //cria o objeto usuario
        usuario.email = email;
        usuario.senha = senha;
        //cadastrar ou logar
        if (_cadastro) {
          _cadastrar(usuario);
        } else {
          _logar(usuario);
        }
      } else { //mensagem de erro de senha
        setState(() {
          _mensagemErro = "Preencha a senha! Deve ter mais de 5 caracteres";
        });
      }
    } else { //mensagem de erro de email
      setState(() {
        _mensagemErro = "Preencha o E-mail válido";
      });

    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Smart House"),
        ),

        body: Center(
          child:
          SingleChildScrollView(
              child:
              Container(padding: const EdgeInsets.all(15),
                  width: MediaQuery.of(context).size.width ,
                  height: MediaQuery.of(context).size.height,
                  color: const Color.fromRGBO(217, 217, 217, 100),
                  child:

                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,

                    children: [
                      Container(padding: const EdgeInsets.all(25),
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: MediaQuery.of(context).size.height * 0.8,
                        color: Color.fromRGBO(196, 200, 197, 100),
                        child:
                        Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                              Container(padding: const EdgeInsets.all(10),
                                height: 110,
                                width: 110,
                                decoration: const BoxDecoration(
                                    color: Colors.blue,
                                    shape: BoxShape.circle),
                                child:

                                ImageIcon(AssetImage("images/home.png"),),
                              ),
                              // Container(child:
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Padding(padding:
                                  EdgeInsets.only(top: 15, bottom: 5),
                                    child:
                                    Text("Nome do Usuário",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 19
                                      ),),
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12.0),)
                                    ),
                                    style: const TextStyle(
                                        fontSize: 19
                                    ),
                                    // controller: _txtid,
                                    onSubmitted: (String texto) {

                                    },
                                  ),
                                  const Padding(padding:
                                  EdgeInsets.only(top: 15, bottom: 5),
                                    child:
                                    Text("Email",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 19
                                      ),),
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12.0),)
                                    ),
                                    style: const TextStyle(
                                        fontSize: 19
                                    ),
                                    controller: _controllerEmail,
                                    keyboardType: TextInputType.emailAddress,
                                  ),
                                  const Padding(padding:
                                  EdgeInsets.only(top: 15, bottom: 5),
                                    child:
                                    Text("Criar senha",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 19
                                      ),),
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12.0),)
                                    ),
                                    style: const TextStyle(
                                        fontSize: 19
                                    ),
                                    obscureText: true,
                                    controller: _controllerSenha,
                                    keyboardType: TextInputType.emailAddress,
                                  ),
                                  const Padding(padding:
                                  EdgeInsets.only(top: 15, bottom: 5),
                                    child:
                                    Text("Confirmar senha",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 19
                                      ),),
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12.0),)
                                    ),
                                    style: const TextStyle(
                                        fontSize: 19
                                    ),
                                    controller: _controllerSenha,
                                    keyboardType: TextInputType.emailAddress,
                                    obscureText: true
                                  ),
                                ],),

                              const Padding(padding: EdgeInsets.only(top: 15, bottom: 5),),
                              SizedBox(
                                height: 60,
                                width: 180,
                                child:
                                ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(Color.fromRGBO(3, 187, 133, 100)),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(12.0),
                                          )
                                      ),

                                    ),
                                    onPressed: () {
                                      _cadastro = true;
                                      _validarCampos();
                                    },
                                    child: const Text("Criar conta", style: TextStyle(
                                        fontSize: 20
                                    ),)),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: Text(_mensagemErro,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red
                                  ),),)
                            ]),
                      )],
                  )
              )
          ),
        )
    );
  }
}





