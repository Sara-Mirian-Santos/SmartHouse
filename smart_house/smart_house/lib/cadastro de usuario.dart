import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

// Future<void> main() async{
//   WidgetsFlutterBinding.ensureInitialized(  );
//   await Firebase.initializeApp();
//   runApp(const MyApp());
// }



class cadastro_usuario extends StatefulWidget {
  const cadastro_usuario({super.key});

  @override
  State<cadastro_usuario> createState() => _cadastro_usuarioState();
}



class _cadastro_usuarioState extends State<cadastro_usuario> {
  final TextEditingController _txtid = TextEditingController();
  final TextEditingController _txtnome = TextEditingController();
  final TextEditingController _txtidade = TextEditingController();
  final TextEditingController _txtplacar = TextEditingController();
  String nome = "";
  String id = "";
  int idade = 0;
  int placar = 0;
  String dados = '';

  String _par1 = '';
  TextEditingController _par2 = TextEditingController();

  int currentIndex = 0;



  void _salvardb() async{
    FirebaseFirestore db = FirebaseFirestore.instance;
    id = _txtid.text;
    nome = _txtnome.text;
    idade = int.parse(_txtidade.text);
    placar = int.parse(_txtplacar.text);
    db.collection("001").doc(id).set({"nome": nome, "idade":idade, "placar":placar});
  }
  void _deletedb() async{
    FirebaseFirestore db = FirebaseFirestore.instance;
    id = _txtid.text;
    db.collection("001").doc(id).delete();
  }

  void _recuperardb() async{
    FirebaseFirestore db = FirebaseFirestore.instance;
    DocumentSnapshot snap = await db.collection("001").doc(_txtid.text).get();
    if(snap.exists) {
      Map<String,dynamic> info = snap.data() as Map<String, dynamic>;
      setState(() {
        dados = "${info['nome']} - ${info['idade']} -${info['placar']}";
        _txtnome.text = info['nome'];
        _txtidade.text = info['idade'].toString();
        _txtplacar.text = info['placar'].toString();
      });
    }
    else{
      showDialog(context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('Aviso'),
            content: const Text('Id procurado Não existe no banco de dados'),
            actions: [
              ElevatedButton(onPressed: () => Navigator.pop(context,'Ok'),
                  child: const Text('Ok'))
            ],
          ));
    }
  }

  void _filtrardb(String campo, TextEditingController tipo) async {
    FirebaseFirestore db = FirebaseFirestore.instance;
    QuerySnapshot querySnap = await db.collection("001").
    where(campo, isEqualTo: tipo.text).
    // orderBy("idade", descending: true).
    get();

    for (DocumentSnapshot item in querySnap.docs) {
      var info = item.data();
      // print("Dados filtrados: $info");
      Map<String, dynamic> infomod = info as Map<String, dynamic>;
      setState(() {
        // dados = dados + info.toString() + "\n";
        _txtid.text = item.id;
        _txtnome.text = infomod['nome'];
        _txtidade.text = infomod['idade'].toString();
        _txtplacar.text = infomod['placar'].toString();
      });
    }
  }

  void _limpar() {

    _txtid.text = '';
    _txtnome.text = '';
    _txtidade.text = '';
    _txtplacar.text = '';

  }
  double sizesetti=40.0;
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
                                    controller: _txtid,
                                    onSubmitted: (String texto) {
                                      _salvardb();
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
                                    controller: _txtid,
                                    onSubmitted: (String texto) {
                                      _salvardb();
                                    },
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
                                    controller: _txtid,
                                    onSubmitted: (String texto) {
                                      _salvardb();
                                    },
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
                                    controller: _txtid,
                                    onSubmitted: (String texto) {
                                      _salvardb();
                                    },
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
                                      _salvardb();
                                    },
                                    child: const Text("Criar conta", style: TextStyle(
                                        fontSize: 20
                                    ),)),

                              )
                            ]),
                      )],
                  )
              )
          ),
        )
    );
  }
}





