import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'DispositivosNconectados.dart';

class disp_conectados extends StatefulWidget {
  const disp_conectados({super.key});

  @override
  State<disp_conectados> createState() => _disp_conectadosState();
}

class _disp_conectadosState extends State<disp_conectados> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:
    AppBar(
      centerTitle: true,
      backgroundColor: Color.fromRGBO(197, 200, 196, 100),
      // actions: [
      //   IconButton(onPressed: () {
      //     Navigator.push(
      //       context,
      //     MaterialPageRoute(
      //         builder: (context) => Perfil()));
      //   }, icon: Icon(Icons.account_circle_sharp))
      // ],
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => dispNconectados()));
              },
              child: Image(
                alignment: Alignment.center,
                image: AssetImage("images/CloudON.png"),
                height: 100,
                width:140,
                fit:BoxFit.cover,
              ),
            ),
          ),
          Text(
            "Dispositivos conectados: qtdDisp",
            textAlign: TextAlign.center,
            style:TextStyle(
            overflow:TextOverflow.clip,
              fontWeight:FontWeight.w700,
              fontStyle:FontStyle.normal,
              fontSize:14,
              color:Color(0xff2a1ed4),
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
                  onPressed: () {},
                  color: Color(0xff14e9a4),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side: BorderSide(color: Color(0xff000000), width: 1),
                  ),
                  padding: EdgeInsets.all(16),
                  child: Text(
                    "Mostrar todos os dispositivos",
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
  }
}
