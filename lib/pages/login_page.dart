import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
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
            _text("Login", "Digite o seu email"),
            SizedBox(
              height: 20,
            ),
            _text("Senha", "Digite a sua senha", password: true),
            SizedBox(
              height: 20,
            ),
            _button("Login"),
          ],
          //  color: Colors.white,
        ));
  }

  _button(String text) {
    return Container(
        height: 46,
        child: RaisedButton(
            color: Colors.blue,
            child: Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
            onPressed: () {}));
  }

  _text(String label, String hint, {bool password = false}) {
    return TextFormField(
      obscureText: password,
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(fontSize: 20, color: Colors.blue),
          hintText: hint),
    );
  }
}
