import 'package:flutter/material.dart';
import 'Home.dart';
import 'dispositivos_conectados.dart';
import 'perfil.dart';



class CloudOff extends StatefulWidget {
  const CloudOff({super.key});
  @override
  State<CloudOff> createState() => _CloudOffState();
}

class _CloudOffState extends State<CloudOff> {
  @override
Widget build(BuildContext context) {
    return Scaffold(appBar:
    AppBar(
      centerTitle: true,
      backgroundColor: Color.fromRGBO(197, 200, 196, 100),
      actions: [
        IconButton(onPressed: () {
          Navigator.push(
            context,
          MaterialPageRoute(
              builder: (context) => Perfil()));
        }, icon: Icon(Icons.account_circle_sharp))
      ],
     ),
        bottomNavigationBar: BottomNavigationBar(           //barra inferior
          items: const <BottomNavigationBarItem> [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.wifi),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "",
            ),
          ],

          backgroundColor: Color(0xff537bd6),
          currentIndex: 0,
          elevation: 8,
          iconSize: 36,
          selectedItemColor: Color(0xffd0d3e2),
          unselectedItemColor: Color(0xff9e9e9e),
          selectedFontSize: 8,
          unselectedFontSize:8,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          onTap: (value1){
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => home()));
          },
        ),
    body:
     Container(
       width: MediaQuery.of(context).size.width,
       height: MediaQuery.of(context).size.height,
       color:  Color.fromRGBO(219, 219, 219, 100),


       child:
      Column(
        mainAxisAlignment:MainAxisAlignment.start,
        crossAxisAlignment:CrossAxisAlignment.center,
        mainAxisSize:MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0,50,0,0),
            child: GestureDetector(
              onTap: (){
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CloudON()));
              },
              child: Image(
                alignment: Alignment.center,
                image: AssetImage("images/Cloud.png"),
                height: 100,
                width:140,
                fit:BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text(
              "Não está concectado a nuvem",
              textAlign: TextAlign.center,
              style:TextStyle(
              overflow:TextOverflow.clip,
                fontWeight:FontWeight.w700,
                fontStyle:FontStyle.normal,
                fontSize:14,
                color:Color(0xff2a1ed4),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0,100,0,0),
            child: Container(
              margin: EdgeInsets.all(0),
              padding: EdgeInsets.all(0),
              height: 100,
              //color: Color.fromRGBO(196, 200, 197, 100),
              child: Padding(padding: EdgeInsets.all(20),
                child: MaterialButton(
                  onPressed: (){
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CloudON()));
                  },
                  color: Color(0xff14e9a4),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side: BorderSide(color: Color(0xff000000), width: 1),
                  ),
                  padding: EdgeInsets.all(16),
                  child: Text(
                    "Conectar a núvem",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  textColor: Color(0xff000000),
                  height: 40,
                  minWidth: 140,
                ),
              ),
            ),
          ),
        ],


    ),
     )
    );
  }}
