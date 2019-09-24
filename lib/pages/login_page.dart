import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
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
    return Container(
        padding: EdgeInsets.all(12),
        child: ListView(
          children: <Widget>[
            _text("Login", "Digite o seu email", controller: _tLogin),
            SizedBox(
              height: 20,
            ),
            _text("Senha", "Digite a sua senha",
                password: true, controller: _tPass),
            SizedBox(
              height: 20,
            ),
            _button("Login", _onClickLogin)
          ],
          //  color: Colors.white,
        ));
  }

  void _onClickLogin() {
    String login = _tLogin.text;
    String pass = _tPass.text;

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
      {bool password = false, @required TextEditingController controller}) {
    return TextFormField(
      controller: controller,
      obscureText: password,
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(fontSize: 20, color: Colors.blue),
          hintText: hint),
    );
  }
}
