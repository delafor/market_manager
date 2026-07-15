import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({
    super.key,
    this.controller,
    this.onChanged,
    this.onTap,
    this.hintText = "Pesquisar",
  });
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onTap;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      onTap: onTap,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search),
        hintText: "Search Store",
        
      ),
    );
  }
}
