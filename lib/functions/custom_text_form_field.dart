import 'package:flutter/material.dart ';
class CustomTextFormField extends StatelessWidget
{
  final String hintText;
  final TextEditingController controller;
  final bool obscureText;
  final String? Function(String?)? validator;
  
  const CustomTextFormField({
    required this.hintText,
    required this.controller,
    this.obscureText = false,
    this.validator,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: Colors.purple[100],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
      validator: validator,
    );
    
  }
}