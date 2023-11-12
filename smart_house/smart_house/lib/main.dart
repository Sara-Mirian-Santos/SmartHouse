import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized(  );
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'banco de dados' ,
      home: Myhome(),
    );
  }
}

class Myhome extends StatefulWidget {
  const Myhome({super.key});

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Smart House"),
        ),

        body: SingleChildScrollView(
          child:
              Container(
                color: Colors.grey,
                child:
          Padding(padding: const EdgeInsets.all(10),
              child:
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  TextField(
                    decoration: const InputDecoration(
                        labelText: "ID"
                    ),
                    style: const TextStyle(
                        fontSize: 19
                    ),
                    keyboardType: TextInputType.number,
                    controller: _txtid,
                    onSubmitted: (String texto) {
                      _salvardb();
                    },
                  ),
                  TextField(decoration: const InputDecoration(
                      labelText: "Nome"
                  ),
                    style: const TextStyle(
                        fontSize: 19
                    ),
                    controller: _txtnome,
                    onSubmitted: (String texto) {
                      _salvardb();
                    },),
                  TextField(
                    decoration: const InputDecoration(
                        labelText: "Idade"
                    ),
                    style: const TextStyle(
                        fontSize: 19
                    ),
                    controller: _txtidade,
                    keyboardType: TextInputType.number,
                    onSubmitted: (String texto) {
                      _salvardb();
                    },),
                  TextField(decoration: const InputDecoration(
                      labelText: "Placar"
                  ),
                    style: const TextStyle(
                        fontSize: 19
                    ),
                    controller: _txtplacar,
                    keyboardType: TextInputType.number,
                    onSubmitted: (String texto) {
                      _salvardb();
                    },),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            _salvardb();
                          },
                          child: const Text("Salvar")),

                      ElevatedButton(
                          onPressed: () {
                            _deletedb();
                          }, child: const Text("Delete")),

                      ElevatedButton(
                          onPressed: () {
                            _recuperardb();
                          }, child: const Text("Recuperar")),

                      ElevatedButton(
                          onPressed: () {
                            if (_txtnome.text.isNotEmpty) {
                              _par1 = "nome";
                              _par2 = _txtnome;
                            }
                            _filtrardb(_par1, _par2);
                          },
                          child: const Text("Filtrar")),
                    ],
                  ),
                  ElevatedButton(
                      onPressed: (){
                        _limpar();
                      },
                      child: const Text("Limpar"))
                  // Text(dados,
                  //   style: TextStyle(
                  //       fontSize: 23
                  //   ),)
                ],
              )
          ),
         )
       ),
    );
  }
}





