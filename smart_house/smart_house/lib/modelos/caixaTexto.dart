import 'package:flutter/material.dart';

//cria uma classe para usar TextField, passando diretamente os parâmetros
class caixaTexto extends StatelessWidget {

  //define as variáveis usadas, que serão passadas na criação do objeto
  final TextEditingController controller;
  final String hint;
  final bool obscure;
  final bool autofocus;
  final TextInputType type;

  caixaTexto({  //define os parâmetros obrigatórios (required) e opcionais
    required this.controller,
    required this.hint,
    this.obscure = false,
    this.autofocus = false,
    this.type = TextInputType.text,
});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscure,
      autofocus: autofocus,
      keyboardType: type,
      style: const TextStyle(fontSize: 20),
      cursorColor: Colors.deepPurple,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
          hintText: hint,
          filled: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6)
          )
      ),
    );
  }
}
