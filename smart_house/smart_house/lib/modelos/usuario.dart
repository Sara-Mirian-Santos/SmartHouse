// definição da classe Usuario
class Usuario {
  late String _idUsuario;
  late String _nome;
  late String _email;
  late String _senha;

// contrutor do objeto Usuario (pressionar botão esquerdo, selecionar GENERATE e depois CONSTRUCTOR)
  Usuario();

  //criar um map para ser usado no Firebase
  Map<String, dynamic> toMap(){
    Map<String, dynamic> map = {
      "idUsuario" : idUsuario,
      "nome" : nome,
      "email" : email
    };
    return map;
  }

  //setters e getters (pressionar botão esquerdo, selecionar GENERATE e depois GETTER e SETTER, selecionar tudo)
  String get senha => _senha;

  set senha(String value) {
    _senha = value;
  }

  String get email => _email;

  set email(String value) {
    _email = value;
  }

  String get nome => _nome;

  set nome(String value) {
    _nome = value;
  }

  String get idUsuario => _idUsuario;

  set idUsuario(String value) {
    _idUsuario = value;
  }
}