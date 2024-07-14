import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:portfolio/core/theme/app_color.dart';

class AppTextFormField extends StatelessWidget {
  final String name;
  final bool enableSuggestions;
  final void Function(String? value)? onSaved;
  final String? Function(String?)? validator;
  final bool obscureText;
  final String? labelText;
  final String? hintText;
  final String? helperText;
  final TextInputType? textInputType;
  const AppTextFormField({
    super.key,
    required this.name,
     this.labelText,
     this.hintText,
     this.helperText,
    this.enableSuggestions = false,
    this.obscureText = false,
    this.textInputType,
    this.onSaved,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FormBuilderTextField(
        keyboardType: textInputType,
        name: name,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(20),
          labelText: labelText,
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.white),
          helperText: helperText,
          labelStyle: const TextStyle(color: Colors.white),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.purple),
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.purple, width: 2),
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              focusedErrorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red, width: 2),
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
        ),
        enableSuggestions: enableSuggestions,
        obscureText: obscureText,
        validator: validator,
        onSaved: onSaved,
      ),
    );
  }
}
