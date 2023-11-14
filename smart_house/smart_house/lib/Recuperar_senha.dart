///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';

class Recuperar_senha extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdbdbdb),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                        child: Text(
                          "Esqueceu sua senha?",
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      Text(
                        "Nós enviaremos um link no seu email",
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 14,
                          color: Color(0xff000000),
                        ),
                      ),
                      Text(
                        "para altera-lá :)",
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 14,
                          color: Color(0xff000000),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
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
                      Expanded(
                        flex: 1,
                        child: TextField(
                          controller: TextEditingController(),
                          obscureText: false,
                          textAlign: TextAlign.start,
                          maxLines: 1,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            color: Color(0xff000000),
                          ),
                          decoration: InputDecoration(
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4.0),
                              borderSide: BorderSide(
                                  color: Color(0xff000000), width: 1),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4.0),
                              borderSide: BorderSide(
                                  color: Color(0xff000000), width: 1),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4.0),
                              borderSide: BorderSide(
                                  color: Color(0xff000000), width: 1),
                            ),
                            labelText: "Digite seu email",
                            labelStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              fontSize: 14,
                              color: Color(0xff000000),
                            ),
                            hintText: "Enter Text",
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              fontSize: 14,
                              color: Color(0xff000000),
                            ),
                            filled: true,
                            fillColor: Color(0xfff2f2f3),
                            isDense: false,
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 12),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
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
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 40),
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
                        "Enviar",
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
