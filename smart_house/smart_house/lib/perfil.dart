import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {

 @override
 Widget build(BuildContext context) {
  return Scaffold(
   backgroundColor: Color(0xffffffff),
   appBar:
   AppBar(
    elevation:4,
    centerTitle:false,
    automaticallyImplyLeading: false,
    backgroundColor:Color(0xffc7c8d0),
    shape:RoundedRectangleBorder(
     borderRadius:BorderRadius.zero,
    ),
    leading: Icon(
     Icons.menu,
     color:Color(0xff212435),
     size:24,
    ),
   ),
   bottomNavigationBar: BottomNavigationBar(
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
    onTap: (value){},
   ),
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
       ///***If you have exported images you must have to copy those images in assets/images directory.
       Image(
        image:AssetImage("assets/images/perfil.png"),
        height:160,
        width:160,
        fit:BoxFit.fill,
       ),
       Padding(
        padding:EdgeInsets.fromLTRB(3, 48, 0, 0),
        child:Align(
         alignment:Alignment.centerLeft,
         child:Text(
          "Nome de usuário",
          textAlign: TextAlign.left,
          overflow:TextOverflow.clip,
          style:TextStyle(
           fontWeight:FontWeight.w600,
           fontStyle:FontStyle.normal,
           fontSize:14,
           color:Color(0xff000000),
          ),
         ),
        ),
       ),
       TextField(
        controller:TextEditingController(),
        obscureText:false,
        textAlign:TextAlign.start,
        maxLines:1,
        style:TextStyle(
         fontWeight:FontWeight.w600,
         fontStyle:FontStyle.normal,
         fontSize:12,
         color:Color(0xff000000),
        ),
        decoration:InputDecoration(
         disabledBorder:OutlineInputBorder(
          borderRadius:BorderRadius.circular(4.0),
          borderSide:BorderSide(
              color:Color(0xff000000),
              width:1
          ),
         ),
         focusedBorder:OutlineInputBorder(
          borderRadius:BorderRadius.circular(4.0),
          borderSide:BorderSide(
              color:Color(0xff000000),
              width:1
          ),
         ),
         enabledBorder:OutlineInputBorder(
          borderRadius:BorderRadius.circular(4.0),
          borderSide:BorderSide(
              color:Color(0xff000000),
              width:1
          ),
         ),
         filled:true,
         fillColor:Color(0xffc4c8c4),
         isDense:false,
         contentPadding:EdgeInsets.symmetric(vertical: 8,horizontal:12),
        ),
       ),
       Padding(
        padding:EdgeInsets.fromLTRB(3, 8, 0, 0),
        child:Align(
         alignment:Alignment.centerLeft,
         child:Text(
          "E-mail",
          textAlign: TextAlign.start,
          overflow:TextOverflow.clip,
          style:TextStyle(
           fontWeight:FontWeight.w600,
           fontStyle:FontStyle.normal,
           fontSize:14,
           color:Color(0xff000000),
          ),
         ),
        ),
       ),
       TextField(
        controller:TextEditingController(),
        obscureText:false,
        textAlign:TextAlign.start,
        maxLines:1,
        style:TextStyle(
         fontWeight:FontWeight.w600,
         fontStyle:FontStyle.normal,
         fontSize:12,
         color:Color(0xff000000),
        ),
        decoration:InputDecoration(
         disabledBorder:OutlineInputBorder(
          borderRadius:BorderRadius.circular(4.0),
          borderSide:BorderSide(
              color:Color(0xff000000),
              width:1
          ),
         ),
         focusedBorder:OutlineInputBorder(
          borderRadius:BorderRadius.circular(4.0),
          borderSide:BorderSide(
              color:Color(0xff000000),
              width:1
          ),
         ),
         enabledBorder:OutlineInputBorder(
          borderRadius:BorderRadius.circular(4.0),
          borderSide:BorderSide(
              color:Color(0xff000000),
              width:1
          ),
         ),
         filled:true,
         fillColor:Color(0xffc4c8c7),
         isDense:false,
         contentPadding:EdgeInsets.symmetric(vertical: 8,horizontal:12),
        ),
       ),
      ],),),
   ),
  )
  ;}
}