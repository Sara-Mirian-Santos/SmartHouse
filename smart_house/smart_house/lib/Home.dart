///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';
import 'package:smart_house/perfil.dart';
import 'package:smart_house/quarto.dart';
import 'package:smart_house/sala.dart';

import 'banheiro.dart';
import 'cozinha.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
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
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
              child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                            Container(
                              width: 120,
                              height: 120,
                              decoration: new BoxDecoration(
                                color: Color.fromRGBO(83, 138, 245, 100),
                                shape: BoxShape.circle,
                              ),
                              child: Padding(padding: EdgeInsets.all(10),
                                child: IconButton(
                                  icon: ImageIcon(AssetImage("images/quarto.png")),
                                  iconSize: 70,
                                  color: Colors.white,
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => quarto()));
                                  },
                                  ),
                              ),
                        ),
                          Container(
                            width: 120,
                            height: 120,
                            decoration: new BoxDecoration(
                              color: Color.fromRGBO(83, 138, 245, 100),
                              shape: BoxShape.circle,
                            ),
                            child: Padding(padding: EdgeInsets.all(10),
                              child: IconButton(
                                icon: ImageIcon(AssetImage("images/sala.png")),
                                iconSize: 70,
                                color: Colors.white,
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => sala()));
                                },
                              ),
                            ),
                        ),
                      ],
                    ),
                  ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: new BoxDecoration(
                    color: Color.fromRGBO(83, 138, 245, 100),
                    shape: BoxShape.circle,
                  ),
                  child: Padding(padding: EdgeInsets.all(10),
                    child: IconButton(
                      icon: ImageIcon(AssetImage("images/cozinha.png")),
                      iconSize: 70,
                      color: Colors.white,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => cozinha()));
                      },
                    ),
                  ),
                ),
                Container(
                  width: 120,
                  height: 120,
                  decoration: new BoxDecoration(
                    color: Color.fromRGBO(83, 138, 245, 100),
                    shape: BoxShape.circle,
                  ),
                  child: Padding(padding: EdgeInsets.all(10),
                    child: IconButton(
                      icon: ImageIcon(AssetImage("images/banheiro.png")),
                      iconSize: 70,
                      color: Colors.white,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => banheiro()));
                      },
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
              Container(
              width: 80,
              height: 80,
              decoration: new BoxDecoration(
                color: Color.fromRGBO(83, 138, 245, 100),
                shape: BoxShape.circle,
              ),
              child: Padding(padding: EdgeInsets.all(10),
                child: IconButton(
                  icon: ImageIcon(AssetImage("images/mais.png")),
                  iconSize: 50,
                  color: Colors.white,
                  onPressed: () {},
                ),
              ),
            ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
