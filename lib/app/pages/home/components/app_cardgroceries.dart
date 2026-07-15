import 'package:flutter/material.dart';

class AppCardGroceries extends StatelessWidget {
  final Color? color;
  final VoidCallback? onTap;

  const AppCardGroceries({super.key, this.color, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: 230,
        height: 90,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          color: const Color.fromARGB(159, 141, 106, 106),

          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Image.asset(
              'lib/app/pages/home/assets/image4.png',
              width: 55,
              height: 55,
              fit: BoxFit.contain,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromARGB(242, 0, 0, 0),
                ),
                'Pulses',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
