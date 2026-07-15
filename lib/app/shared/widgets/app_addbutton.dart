

import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 45,
      height: 45,
      child: FilledButton(
        onPressed: () {},
        child: const Icon(Icons.add, size: 25),
      ),
    );
  }
}
