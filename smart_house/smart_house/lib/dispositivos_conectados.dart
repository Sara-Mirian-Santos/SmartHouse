import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'perfil.dart' show perfil;

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
      actions: [
        ElevatedButton.icon(
            onPressed: Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => perfil())),
            icon: Icon(CupertinoIcons.profile_circled), label: label)
      ],),);
  }
}
