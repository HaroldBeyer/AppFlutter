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
            Text("Login"),
            TextFormField(),
            SizedBox(
              height: 20,
            ),
            Text("Senha"),
            TextFormField(
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
