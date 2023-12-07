///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';
import 'package:smart_house/perfil.dart';
import 'inicial.dart';
import 'Home.dart';

class cozinha extends StatefulWidget {
  const cozinha({super.key});

  @override
  State<cozinha> createState() => _cozinhaState();
}

enum  _MenuValues{
  editar,
  excluir,
}

class _cozinhaState extends State<cozinha> {
  bool _bt_lampada_cozinha = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdbdbdb),
      appBar: AppBar(
        elevation: 1,
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffc5c8c6),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        actions: [
          IconButton(onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => perfil()));
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
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(0),
        padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Color(0x00000000),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.zero,
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                margin: EdgeInsets.all(0),
                padding: EdgeInsets.all(0),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0x00000000),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.zero,
                ),
                child: ImageIcon(
                  AssetImage("images/cozinha.png"),
                  size: 100,
                  color: Color(0xff000000),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 50),
                child: TextField(
                  controller: TextEditingController(text: "Cozinha"),
                  obscureText: false,
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontStyle: FontStyle.normal,
                    fontSize: 14,
                    color: Color(0xff000000),
                  ),
                  decoration: InputDecoration(
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.0),
                      borderSide:
                      BorderSide(color: Color(0xff000000), width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.0),
                      borderSide:
                      BorderSide(color: Color(0xff000000), width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.0),
                      borderSide:
                      BorderSide(color: Color(0xff000000), width: 1),
                    ),
                    hintText: "comôdo:",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontStyle: FontStyle.italic,
                      fontSize: 14,
                      color: Color(0xff000000),
                    ),
                    filled: false,
                    fillColor: Color(0x00f2f2f3),
                    isDense: true,
                    contentPadding: EdgeInsets.all(5),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Row(
                  children: [
                    Container(
                      width: 345,
                      child:
                      SwitchListTile(
                        value: _bt_lampada_cozinha,
                        title: Text(
                          "Lâmpada",
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            color: Color(0xff000000),
                          ),
                          textAlign: TextAlign.left,
                        ),
                        subtitle: Text(
                          "Quarto",
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            color: Color(0xff000000),
                          ),
                          textAlign: TextAlign.left,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                          side: BorderSide(color: Color(0xffa3a3a3), width: 1),
                        ),
                        onChanged: (bool value) {
                          setState(() {
                            _bt_lampada_cozinha = value;
                          });
                        },
                        tileColor: Color(0x00000000),
                        activeColor: Colors.white,
                        activeTrackColor: Colors.green,
                        controlAffinity: ListTileControlAffinity.trailing,
                        dense: false,
                        inactiveThumbColor: Colors.white,
                        inactiveTrackColor: Colors.red,
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                        secondary:
                        Icon(Icons.lightbulb, color: Colors.black, size: 24),
                        selected: false,
                        selectedTileColor: Color(0x42000000),
                      ),

                    ),
                    PopupMenuButton<_MenuValues>(
                      itemBuilder: (BuildContext context) => [
                        PopupMenuItem(
                          child: Text('Editar'),
                          value: _MenuValues.editar,
                        ),
                        PopupMenuItem(
                          child: Text('Excluir'),
                          value: _MenuValues.excluir,
                        ),
                      ],
                      onSelected: (value) {
                        switch (value) {
                          case _MenuValues.editar:
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (c) => inicio()));
                            break;
                          case _MenuValues.excluir:
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (c) => inicio()));
                            break;
                        // TODO: Handle this case.
                        }
                      },
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                padding: EdgeInsets.all(0),
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xff66ffda),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(25.0),
                  border: Border.all(color: Color(0xff008654), width: 1),
                ),
                child: MaterialButton(
                  onPressed: () {},
                  color: Color(0x00ffffff),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  padding: EdgeInsets.all(16),
                  child: Text(
                    "Adicionar Dispositivo",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  textColor: Color(0xff000000),
                  height: 50,
                  minWidth: 200,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
