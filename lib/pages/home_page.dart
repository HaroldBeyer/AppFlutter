import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Página inicial"),
      ),
      body: _body(),
    );
  }

  _body() {
    //VV ou Center3
    return Center(
      child: Text(
        "Roupas",
        style: TextStyle(fontSize: 22),
      ),
    );
  }
}
