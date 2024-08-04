import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  const InputWidget({
    Key? key,
    required this.hintText,
    this.onChange,
    this.controller,
    this.validator,
    this.suffixIcon,
    this.isObscure = false,
    this.inputType,
    this.prefixIcon,
    this.maxLines = 1,
    this.autofocus = false,
    this.hintStyle, // Thêm thuộc tính hintStyle
  }) : super(key: key);

  final String hintText;
  final Function(String)? onChange;
  final bool isObscure;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputType? inputType;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final int? maxLines;
  final bool autofocus;
  final TextStyle? hintStyle;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffF7F7F7),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        keyboardType: inputType,
        maxLines: maxLines,
        obscureText: isObscure,
        controller: controller,
        validator: validator,
        autofocus: autofocus,
        decoration: InputDecoration(
          enabled: true,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xffF7F7F7),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: hintText,
          hintStyle: hintStyle,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
        ),
        onChanged: onChange,
      ),
    );
  }
}
