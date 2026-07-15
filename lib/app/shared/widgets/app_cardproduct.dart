import 'package:flutter/material.dart';
import 'package:market_manager/app/shared/widgets/app_addbutton.dart';

class AppCardproduct extends StatefulWidget {
  const AppCardproduct({super.key});

  @override
  State<AppCardproduct> createState() => _AppCardproductState();
}

class _AppCardproductState extends State<AppCardproduct> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: 180,
        height: 240,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  'lib/app/pages/home/assets/estoico.jpg',
                  height: 90,
                  width: double.infinity,

                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Organic Bananas',
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 4),
              Text(
                '7pcs, Priceg',
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyMedium,
              ),

              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$4.99',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  AddButton(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
