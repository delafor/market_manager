import 'package:flutter/material.dart';

class AppCounter extends StatelessWidget {
  final int value;
  final VoidCallback onIncrement;
  final VoidCallback? onDecrement;

  const AppCounter({
    super.key,
    required this.value,
    required this.onIncrement,
    this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: onDecrement, icon: const Icon(Icons.remove)),
        Container(
          width: 40,
          height: 38,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(14),
          ),

          child: Text(
            value.toString(),
            style: const TextStyle(fontSize: 18, color: Colors.black),
          ),
        ),
        IconButton(
          onPressed: onIncrement,
          icon: const Icon(Icons.add, color: const Color(0xff53B175)),
        ),
      ],
    );
  }
}
