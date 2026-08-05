import 'package:flutter/material.dart';
import 'package:market_manager/app/core/theme/app_theme.dart';
import 'package:market_manager/app/shared/widgets/app_counter.dart';

class AppProductsPage extends StatefulWidget {
  const AppProductsPage({super.key});

  @override
  State<AppProductsPage> createState() => _AppProductsPageState();
}

const String productDescription =
    'Apples are nutritious. Apples may be good for weight loss. '
    'Apples may be good for your heart. As part of a healthy and varied diet.';

class _AppProductsPageState extends State<AppProductsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF2F3F2),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.ios_share)),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height:
                    MediaQuery.of(context).size.height * 0.35, // 50% da altura

                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFFF2F3F2),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Transform.scale(
                  scale: 1.5,
                  child: Image.asset(
                    'lib/app/pages/home/assets/maca.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Naturel Red Apple',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Spacer(),
                        Icon(Icons.favorite_outline_outlined),
                      ],
                    ),
                    Text(
                      '1kg, Price',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        AppCounter(value: 0, onIncrement: () {}),
                        Spacer(),
                        Text(
                          '\$4.99',
                          style: Theme.of(
                            context,
                          ).textTheme.titleMedium?.copyWith(fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(height: 25),
                    Divider(),
                    Row(
                      children: [
                        Text(
                          'Product Detail',
                          style: Theme.of(
                            context,
                          ).textTheme.titleLarge?.copyWith(fontSize: 17),
                        ),
                        Spacer(),
                        Icon(Icons.keyboard_arrow_down, size: 35),
                      ],
                    ),
                    Text(
                      productDescription,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),

                    Divider(height: 40),
                    Row(
                      children: [
                        Text(
                          'Nutritions',
                          style: Theme.of(
                            context,
                          ).textTheme.titleLarge?.copyWith(fontSize: 17),
                        ),
                        Spacer(),
                        Icon(Icons.keyboard_arrow_right, size: 35),
                      ],
                    ),
                    Divider(height: 40),
                    Row(
                      children: [
                        Text(
                          'Review',
                          style: Theme.of(
                            context,
                          ).textTheme.titleLarge?.copyWith(fontSize: 17),
                        ),
                        Spacer(),
                        Row(
                          children: List.generate(
                            5,
                            (index) => const Icon(
                              Icons.star,
                              color: Color.fromARGB(255, 255, 106, 7),
                              size: 18,
                            ),
                          ),
                        ),
                        Icon(Icons.keyboard_arrow_right, size: 35),
                      ],
                    ),
                    SizedBox(height: 15),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: buttonsLarge.copyWith(
                          minimumSize: const WidgetStatePropertyAll(
                            Size(0, 75),
                          ),
                        ),
                        child: Text('Add To Basket'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
