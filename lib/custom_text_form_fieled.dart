import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {Key? key,
      required this.backgroundColor,
      required this.onTap,
      required this.keyboardType,
      required this.obscureText,
      required this.hint,
      required this.prefixIcon,
      required this.controller,
      required this.readOnly,
      required this.maxLines,
      required this.formKey,
      required this.validator})
      : super(key: key);

  final Color backgroundColor;
  final Function onTap;
  final TextInputType keyboardType;
  final bool obscureText;
  final String hint;
  final IconData prefixIcon;
  final TextEditingController controller;
  final bool readOnly;
  final int maxLines;
  final GlobalKey<FormState> formKey;
  final Function(String?) validator;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      clipBehavior: Clip.antiAlias,
      color: backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextFormField(
        onTap: () {
          onTap();
        },
        onFieldSubmitted: (value) {
          formKey.currentState!.validate();
        },
        controller: controller,
        autofocus: false,
        readOnly: readOnly,
        keyboardType: keyboardType,
        obscureText: obscureText,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            gapPadding: 10,
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
              width: 1,
              style: BorderStyle.solid,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: Theme.of(context).errorColor,
              width: 1,
              style: BorderStyle.solid,
            ),
            gapPadding: 10,
          ),
          hintText: hint,
          prefixIcon: Icon(
            prefixIcon,
            size: MediaQuery.of(context).size.width * 0.09,
          ),
          prefixIconColor: Theme.of(context).primaryColor,
        ),
        maxLines: maxLines,
        cursorColor: Theme.of(context).primaryColor,
        validator: (value) {
          return validator(value);
        },
      ),
    );
  }
}
