import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  final _tLogin = TextEditingController();
  final _tPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text("Roupas"),
      ),
      body: _body(),
    );
  }

  _body() {
    return Form(
      key: _formKey,
      child: Container(
          padding: EdgeInsets.all(12),
          child: ListView(
            children: <Widget>[
              _text("Login", "Digite o seu email",
                  controller: _tLogin, validator: _validator),
              SizedBox(
                height: 20,
              ),
              _text("Senha", "Digite a sua senha",
                  password: true, controller: _tPass, validator: _validator),
              SizedBox(
                height: 20,
              ),
              _button("Login", _onClickLogin)
            ],
            //  color: Colors.white,
          )),
    );
  }

  String _validator(String text) {
    if (text.isEmpty) return "Campo vazio";
    if (text.length < 3)
      return "O campo precisa ter pelo menos três caracteres";
    return null;
  }

  void _onClickLogin() {
    String login = _tLogin.text;
    String pass = _tPass.text;
    bool formOk = _formKey.currentState.validate();
    if (!formOk) {
      return;
    }
    print("Login: $login, Senha: $pass");
  }

  _button(String text, Function onPressed) {
    return Container(
        height: 46,
        child: RaisedButton(
            color: Colors.blue,
            child: Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
            onPressed: onPressed));
  }

  _text(String label, String hint,
      {bool password = false,
      @required TextEditingController controller,
      FormFieldValidator<String> validator}) {
    return TextFormField(
      controller: controller,
      obscureText: password,
      validator: validator,
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(fontSize: 20, color: Colors.blue),
          hintText: hint),
    );
  }
}
