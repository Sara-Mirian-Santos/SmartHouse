///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
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
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 240, 0),
            child: Icon(Icons.person, color: Color(0xff212435), size: 24),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    margin: EdgeInsets.all(0),
                    padding: EdgeInsets.all(0),
                    width: 250,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0x00ffffff),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.zero,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          child: ImageIcon(
                            AssetImage("images/quarto.png"),
                            size: 90,
                            color: Color(0xffffffff),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          child: ImageIcon(
                            AssetImage("images/sala-de-estar.png"),
                            size: 90,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                  padding: EdgeInsets.all(0),
                  width: 250,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0x00ffffff),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.zero,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: ImageIcon(
                          AssetImage("images/cozinha.png"),
                          size: 90,
                          color: Color(0xffffffff),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: ImageIcon(
                          AssetImage("images/banheiro-publico.png"),
                          size: 90,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    margin: EdgeInsets.all(0),
                    padding: EdgeInsets.all(0),
                    width: 250,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0x00ffffff),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.zero,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 90),
                          child: ImageIcon(
                            AssetImage("images/mais.png"),
                            size: 50,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [],
            ),
          ],
        ),
      ),
    );
  }
}
