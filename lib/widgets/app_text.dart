import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  String label;
  String hint;
  bool password = false;
  TextEditingController controller;
  FormFieldValidator<String> validator;
  TextInputType keyboardType;
  TextInputAction textInputAction;
  FocusNode focusNode;
  FocusNode nextFocus;

  AppText(this.label, this.hint,
      {this.controller,
      this.focusNode,
      this.keyboardType,
      this.nextFocus,
      this.password = false,
      this.textInputAction,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: password,
      validator: validator,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      focusNode: focusNode,
      onFieldSubmitted: (String text) {
        if (nextFocus != null) FocusScope.of(context).requestFocus(nextFocus);
      },
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(fontSize: 20, color: Colors.blue),
          hintText: hint),
    );
  }
}
