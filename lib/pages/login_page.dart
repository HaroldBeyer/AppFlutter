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
            TextFormField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  labelText: "Login",
                  labelStyle: TextStyle(fontSize: 20, color: Colors.blue),
                  hintText: "Digite o seu email"),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: "Senha",
                  labelStyle: TextStyle(fontSize: 20, color: Colors.blue),
                  hintText: "Digite a sua senha"),
              obscureText: true,
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
                color: Colors.blue,
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                onPressed: () {})
          ],
          //  color: Colors.white,
        ));
  }
}
