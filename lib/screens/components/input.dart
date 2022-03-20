import 'package:flutter/material.dart';

class JFInput extends StatelessWidget {
  final String? label;
  final String? hint;
  final bool isObscure;
  final Widget? prefix;
  final Widget? suffix;
  final TextStyle? hintStyle;
  final Color? borderColor;
  final TextEditingController? controller;

  const JFInput({
    Key? key,
    this.label,
    this.isObscure = false,
    this.hint,
    this.prefix,
    this.hintStyle,
    this.suffix,
    this.borderColor,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: isObscure,
      decoration: InputDecoration(
        prefixIcon: prefix,
        suffixIcon: suffix,
        labelText: label,
        hintText: hint,
        hintStyle: hintStyle,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            color: borderColor ?? Theme.of(context).primaryColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            color: borderColor ?? Colors.black,
          ),
        ),
      ),
    );
  }
}
