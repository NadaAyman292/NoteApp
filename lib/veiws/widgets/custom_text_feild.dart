import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:notes_app/constant.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild(
      {super.key, required this.hintText, this.maxlines = 1, this.onSaved});
  final String hintText;
  final int maxlines;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty == true) {
          return "Feild is required";
        } else {
          return null;
        }
      },
      maxLines: maxlines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: hintText,
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: kPrimaryColor)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: Colors.white)),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: Colors.white)),
      ),
    );
  }
}
