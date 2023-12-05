import 'package:flutter/material.dart';
import 'package:smart_house/Home.dart';
import 'DispositivosNconectados.dart';
import 'perfil.dart';

class lista_dispositivos extends StatefulWidget {
  const lista_dispositivos({super.key});

  @override
  State<lista_dispositivos> createState() => _lista_dispositivosState();
}

class _lista_dispositivosState extends State<lista_dispositivos> {
  bool _bt_lampada_cozinha = false;
  bool _bt_lampada_banheiro = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdbdbdb),
      appBar: AppBar(
        elevation: 1,
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xffc5c8c6),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 360, 0),
            child:
            IconButton(
              icon: const Icon(Icons.person),
              iconSize: 24,
              color: Colors.black,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Perfil()));
              },
            ),
          ),
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

        backgroundColor: const Color(0xff537bd6),
        currentIndex: 1,
        elevation: 8,
        iconSize: 36,
        selectedItemColor: const Color(0xffd0d3e2),
        unselectedItemColor: const Color(0xff9e9e9e),
        selectedFontSize: 8,
        unselectedFontSize:8,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (value1){
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  maintainState: true,
                  builder: (context) => const home()));
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
    Padding(
    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
    child: SwitchListTile(
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
    "Cozinha",
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
      Padding(
        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
        child: SwitchListTile(
          value: _bt_lampada_banheiro,
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
            "Banheiro",
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
              _bt_lampada_banheiro = value;
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
    onPressed: () {
      // Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //         maintainState: true,
      //         builder: (context) => const add_dispositivo()));
    },
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
    ]
    ),
    ),
      ),
    );
  }
}
