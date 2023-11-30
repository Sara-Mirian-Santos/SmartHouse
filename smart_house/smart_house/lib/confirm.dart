import 'package:flutter/material.dart';

class Confirmar_exclusao extends StatelessWidget {

 @override
 Widget build(BuildContext context) {
  return Scaffold(
   backgroundColor: Color(0xffdad9d9),
   appBar:
   AppBar(
    elevation:4,
    centerTitle:false,
    automaticallyImplyLeading: false,
    backgroundColor:Color(0xffc4c8c4),
    shape:RoundedRectangleBorder(
     borderRadius:BorderRadius.zero,
    ),
    leading: Icon(
     Icons.menu,
     color:Color(0xff212435),
     size:24,
    ),
    actions:[
     Icon(Icons.person,color:Color(0xff212435),size:24),
    ],
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
    backgroundColor: Color(0xff5389f5),
    currentIndex: 0,
    elevation: 8,
    iconSize: 36,
    selectedItemColor: Color(0xffdddee7),
    unselectedItemColor: Color(0xff9e9e9e),
    selectedFontSize: 8,
    unselectedFontSize:14,
    showSelectedLabels: true,
    showUnselectedLabels: true,
    onTap: (value){},
   ),
   body:Align(
    alignment:Alignment.center,
    child:Container(
     margin:EdgeInsets.zero,
     padding:EdgeInsets.zero,
     width:240,
     height:180,
     decoration: BoxDecoration(
      color:Color(0x1f000000),
      shape:BoxShape.rectangle,
      borderRadius:BorderRadius.zero,
      border:Border.all(color:Color(0x4d9e9e9e),width:1),
     ),
     child:

     Column(
      mainAxisAlignment:MainAxisAlignment.start,
      crossAxisAlignment:CrossAxisAlignment.center,
      mainAxisSize:MainAxisSize.max,
      children: [
       Padding(
        padding:EdgeInsets.fromLTRB(25, 30, 0, 0),
        child:Align(
         alignment:Alignment.center,
         child:Text(
          "Tem certeza que deseja excluir esse dispositivo?",
          textAlign: TextAlign.center,
          overflow:TextOverflow.clip,
          style:TextStyle(
           fontWeight:FontWeight.w600,
           fontStyle:FontStyle.normal,
           fontSize:16,
           color:Color(0xff000000),
          ),
         ),
        ),
       ),
       Row(
        mainAxisAlignment:MainAxisAlignment.start,
        crossAxisAlignment:CrossAxisAlignment.center,
        mainAxisSize:MainAxisSize.max,
        children:[

         Padding(
          padding:EdgeInsets.fromLTRB(20, 35, 0, 0),
          child:MaterialButton(
           onPressed:(){},
           color:Color(0xff00bb84),
           elevation:0,
           shape:RoundedRectangleBorder(
            borderRadius:BorderRadius.circular(8.0),
            side:BorderSide(color:Color(0xff808080),width:1),
           ),
           padding:EdgeInsets.symmetric(horizontal: 16, vertical: 8),
           child:Text("Sim", style: TextStyle( fontSize:14,
            fontWeight:FontWeight.w600,
            fontStyle:FontStyle.normal,
           ),),
           textColor:Color(0xffffffff),
           height:50,
           minWidth:80,
          ),
         ),
         Padding(
          padding:EdgeInsets.fromLTRB(50, 35, 0, 0),
          child:MaterialButton(
           onPressed:(){},
           color:Color(0xffc30031),
           elevation:0,
           shape:RoundedRectangleBorder(
            borderRadius:BorderRadius.circular(8.0),
            side:BorderSide(color:Color(0xff808080),width:1),
           ),
           padding:EdgeInsets.symmetric(horizontal: 16, vertical: 8),
           child:Text("Não", style: TextStyle( fontSize:14,
            fontWeight:FontWeight.w600,
            fontStyle:FontStyle.normal,
           ),),
           textColor:Color(0xffffffff),
           height:50,
           minWidth:80,
          ),
         ),
        ],),
      ],),
    ),),
  )
  ;}
}
