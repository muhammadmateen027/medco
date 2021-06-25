import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  AppTextField({
    Key? key,
    required this.controller,
    this.obscureText = false,
    this.hintText = 'Email',
    this.validator,
  }) : super(key: key);
  final TextEditingController? controller;
  final bool obscureText;
  final String hintText;
  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    OutlineInputBorder inputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(4.0),
      borderSide:
          BorderSide(width: 0.5, color: theme.secondaryHeaderColor),
    );

    return TextFormField(
      controller: controller,
      autofocus: true,
      obscureText: obscureText,
      autovalidateMode: AutovalidateMode.always,
      keyboardType: TextInputType.text,
      style: theme.textTheme.headline6,
      cursorColor: theme.secondaryHeaderColor,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 6),
        border: inputBorder,
        hintStyle: theme.textTheme.bodyText2!.copyWith(
          color: theme.disabledColor,
        ),
        errorStyle: theme.textTheme.caption!.copyWith(
              color: theme.errorColor,
            ),
        hintText: hintText,
        enabledBorder: inputBorder,
        focusedBorder: inputBorder,
        errorBorder: inputBorder,
      ),
      validator: validator,
    );
  }
}
