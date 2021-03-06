import 'package:donieltheme/donieltheme.dart';
import 'package:flutter/material.dart';

typedef String Validator(string);
typedef void OnSaved(string);

class TextFieldCustomer extends StatelessWidget {
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextEditingController? controller;
  final String? hint, label;
  final Validator? validator;
  final OnSaved? onSaved;
  final TextInputType inputType = TextInputType.text;
  final bool enable;
  bool isPassword, isEmptyOne;
  TextFieldCustomer({
    Key? key,
    this.suffixIcon,
    this.prefixIcon,
    this.controller,
    this.label,
    this.validator,
    this.onSaved,
    this.enable = true,
    this.isPassword = false,
    this.hint,
    this.isEmptyOne = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: TextFormField(
            enabled: enable,
            keyboardType: inputType,
            obscureText: isPassword,
            controller: controller,
            obscuringCharacter: '*',
            textAlignVertical: TextAlignVertical.center,
            textAlign: TextAlign.center,
            style: themeData.textTheme.bodyText2,
            decoration: InputDecoration(
              border: InputBorder.none,
              filled: true,
              fillColor: Colors.transparent,
              contentPadding: const EdgeInsets.fromLTRB(
                20.0,
                20.0,
                30.0,
                10.0,
              ),
              labelText: label,
              labelStyle: themeData.textTheme.bodyText2,
              hintText: hint,
              hintStyle: themeData.textTheme.bodyText2,
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
            ),
            validator: validator,
            onSaved: onSaved,
          ),
        ),
      ],
    );
  }
}
