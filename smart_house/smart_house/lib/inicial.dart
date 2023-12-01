///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';


class inicio extends StatefulWidget {
  const inicio({super.key});

  @override
  State<inicio> createState() => _inicioState();
}

class _inicioState extends State<inicio> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body:Container(
        margin:EdgeInsets.all(0),
        padding:EdgeInsets.all(0),
        width:MediaQuery.of(context).size.width,
        height:MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color:Color(0xffd9d9d9),
          shape:BoxShape.rectangle,
          borderRadius:BorderRadius.zero,
          border:Border.all(color:Color(0x4d9e9e9e),width:1),
        ),
        child:
        Align(
          alignment:Alignment.center,
          child:
          Column(
            mainAxisAlignment:MainAxisAlignment.center,
            crossAxisAlignment:CrossAxisAlignment.center,
            mainAxisSize:MainAxisSize.max,
            children: [
              Align(
                alignment:Alignment.center,
                child:///***If you have exported images you must have to copy those images in assets/images directory.
                Image(
                  image:AssetImage("images/logo.png"),
                  height:240,
                  width:240,
                  fit:BoxFit.fill,
                ),
              ),
              Padding(
                padding:EdgeInsets.fromLTRB(0, 32, 0, 0),
                child:MaterialButton(
                  onPressed:(){},
                  color:Color(0xff03bb85),
                  elevation:0,
                  shape:RoundedRectangleBorder(
                    borderRadius:BorderRadius.circular(6.0),
                    side:BorderSide(color:Color(0xff808080),width:1),
                  ),
                  padding:EdgeInsets.all(16),
                  child:Text("Login", style: TextStyle( fontSize:16,
                    fontWeight:FontWeight.w700,
                    fontStyle:FontStyle.normal,
                  ),),
                  textColor:Color(0xffffffff),
                  height:50,
                  minWidth:180,
                ),
              ),
            ],),),
      ),
    )
    ;}
}
