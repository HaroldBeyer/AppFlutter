import 'package:flutter/material.dart';
import 'package:todo/widgets/app_button.dart';
import 'package:todo/widgets/app_text.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final _tLogin = TextEditingController();

  final _tPass = TextEditingController();

  final _focusPass = FocusNode();

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
              AppText("Login", "Digite o seu email",
                  controller: _tLogin,
                  validator: _validator,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  nextFocus: _focusPass),
              SizedBox(
                height: 20,
              ),
              AppText("Senha", "Digite a sua senha",
                  password: true,
                  controller: _tPass,
                  validator: _validator,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.send,
                  focusNode: _focusPass),
              SizedBox(
                height: 20,
              ),
              AppButton("Login", _onClickLogin)
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

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
