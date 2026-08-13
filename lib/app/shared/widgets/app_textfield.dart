import 'package:flutter/material.dart';

class AppAuthTextField extends StatefulWidget {
  final bool obscureText;
  final TextEditingController? controller;

  const AppAuthTextField({
    super.key,
    this.obscureText = false,
    this.controller,
  });

  @override
  State<AppAuthTextField> createState() => _AppAuthTextFieldState();
}

class _AppAuthTextFieldState extends State<AppAuthTextField> {
  bool obscure = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: widget.obscureText ? obscure : false,
      decoration: InputDecoration(
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),

        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.green),
        ),

        labelStyle: const TextStyle(color: Colors.black),

        suffixIcon: widget.obscureText
            ? IconButton(
                padding: EdgeInsets.zero,

                icon: Icon(obscure ? Icons.visibility_off : Icons.visibility),
                onPressed: () {
                  setState(() {
                    obscure = !obscure;
                  });
                },
              )
            : null,
        suffixIconConstraints: const BoxConstraints(
          minWidth: 30,
          maxWidth: 30,
          minHeight: 24,
          maxHeight: 24,
        ),

        filled: false,
        border: InputBorder.none,
        errorBorder: InputBorder.none,
        focusedErrorBorder: InputBorder.none,
        contentPadding: EdgeInsets.zero,
        hintStyle: const TextStyle(color: Colors.grey, fontSize: 16),
      ),
    );
  }
}
