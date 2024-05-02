import 'dart:core';

import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
  TextForm(
      {
        super.key,
        this.labelText,
        this.onChanged,
        this.suffixIcon,
        this.prefixIcon,
        this.labelStyle,
        this.validate,
        this.controller,
        this.onTap,
        this.onTap1,
        this.onEditingComplete,
        this.obscureText = false,
        this.autovalidateMode =  AutovalidateMode.onUserInteraction,
        this.keyBoard = TextInputType.emailAddress,
        this.radius = 20,
        this.readOnly = false,
        this.color = Colors.white
      });

  bool readOnly = false;
  Color color = Colors.white;
  String? labelText;

  TextInputType keyBoard = TextInputType.emailAddress;
  TextEditingController? controller;
  Function(String)? onChanged;

  String? Function(String?)? validate;
  Function()? onEditingComplete;
  Widget? suffixIcon;

  Widget? prefixIcon;
  double radius = 20;
  TextStyle? labelStyle;
  bool obscureText = false;
  Function()? onTap;
  Function()? onTap1;
  AutovalidateMode autovalidateMode = AutovalidateMode.onUserInteraction;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: readOnly,
      onEditingComplete: onEditingComplete,
      keyboardType: keyBoard,
      controller: controller,
      onChanged: onChanged,
      obscureText: obscureText,
      onTap: onTap,
      validator: validate,
      autovalidateMode: autovalidateMode,
      decoration: InputDecoration(
          filled: true,
          fillColor: color,
          labelText: labelText,
          suffixIcon: suffixIcon != null
              ? InkWell(onTap: onTap1, child: suffixIcon)
              : suffixIcon,
          prefixIcon: prefixIcon,
          labelStyle: labelStyle,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius))),

    );
  }
}