///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';

class Dispositivos_comodo extends StatelessWidget {
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
                  AssetImage("images/quarto.png"),
                  size: 100,
                  color: Color(0xff000000),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 50),
                child: TextField(
                  controller: TextEditingController(text: "Quarto"),
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
                child: SwitchListTile(
                  value: false,
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
                      fontWeight: FontWeight.w200,
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
                  onChanged: (value) {},
                  tileColor: Color(0x00000000),
                  activeColor: Color(0xff3a57e8),
                  activeTrackColor: Color(0xff92c6ef),
                  controlAffinity: ListTileControlAffinity.trailing,
                  dense: false,
                  inactiveThumbColor: Color(0xffffffff),
                  inactiveTrackColor: Color(0xffff0000),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                  secondary:
                      Icon(Icons.wb_cloudy, color: Color(0xff00bb45), size: 24),
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
              Padding(
                padding: EdgeInsets.fromLTRB(0, 170, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.all(0),
                              padding: EdgeInsets.all(0),
                              width: 200,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Color(0xff548cf7),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.zero,
                                border: Border.all(
                                    color: Color(0x4d9e9e9e), width: 1),
                              ),
                              child: Align(
                                alignment: Alignment(-0.0, -0.6),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                        margin: EdgeInsets.all(0),
                                        padding: EdgeInsets.all(0),
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: Color(0x00000000),
                                          shape: BoxShape.rectangle,
                                          borderRadius: BorderRadius.zero,
                                        ),
                                        child: IconButton(
                                          icon: Icon(Icons.home),
                                          onPressed: () {},
                                          color: Color(0xffffffff),
                                          iconSize: 30,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                        alignment: Alignment.center,
                                        margin: EdgeInsets.symmetric(
                                            vertical: 0, horizontal: 60),
                                        padding: EdgeInsets.all(0),
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: Color(0x1f000000),
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: Color(0xff7aff8c),
                                              width: 2),
                                        ),
                                        child: IconButton(
                                          icon: Icon(Icons.wifi),
                                          onPressed: () {},
                                          color: Color(0xff78fc8a),
                                          iconSize: 30,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                        alignment: Alignment.center,
                                        margin: EdgeInsets.all(0),
                                        padding: EdgeInsets.all(0),
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: Color(0x00000000),
                                          shape: BoxShape.rectangle,
                                          borderRadius: BorderRadius.zero,
                                        ),
                                        child: IconButton(
                                          icon: Icon(Icons.settings),
                                          onPressed: () {},
                                          color: Color(0xffffffff),
                                          iconSize: 30,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
