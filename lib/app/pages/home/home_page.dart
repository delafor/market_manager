import 'package:flutter/material.dart';
import 'package:market_manager/app/pages/home/components/app_cardgroceries.dart';
import 'package:market_manager/app/shared/widgets/app_bottom_navigator.dart';
import 'package:market_manager/app/pages/home/components/app_cardproduct.dart';
import 'package:market_manager/app/pages/home/components/app_search_bar.dart';
import 'package:market_manager/app/core/constants/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const _routes = [
    Kpages.home,
    // Kpages.shop,
    // Kpages.explore,
    // Kpages.cart,
    // Kpages.favorite,
    // Kpages.account,
  ];

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, bottom: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15),

                // Localização
                Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.location_on, size: 30),
                      const SizedBox(width: 4),
                      Text(
                        'Dhaka, Banassre',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(170, 0, 0, 0),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // Pesquisa
                const AppSearchBar(),

                const SizedBox(height: 20),

                // Banner
                Container(
                  width: double.infinity,
                  height: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: AssetImage(
                        'lib/app/pages/home/assets/estoico.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Exclusive Offer',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Spacer(),
                    TextButton(onPressed: () {}, child: const Text('See all')),
                  ],
                ),
                SizedBox(height: 25),
                SizedBox(
                  height: 240,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    separatorBuilder: (_, __) => const SizedBox(width: 1),
                    itemBuilder: (context, index) {
                      return const AppCardproduct();
                    },
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Best Selling',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Spacer(),
                    TextButton(onPressed: () {}, child: const Text('See all')),
                  ],
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 240,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    separatorBuilder: (_, __) => const SizedBox(width: 1),
                    itemBuilder: (context, index) {
                      return const AppCardproduct();
                    },
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Groceries',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Spacer(),
                    TextButton(onPressed: () {}, child: const Text('See all')),
                  ],
                ),
                const SizedBox(height: 25),
                SizedBox(
                  height: 80,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (_, __) => const SizedBox(width: 15),
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return const AppCardGroceries();
                    },
                  ),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  height: 240,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    separatorBuilder: (_, __) => const SizedBox(width: 1),
                    itemBuilder: (context, index) {
                      return const AppCardproduct();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: AppBottomNavigation(
        currentIndex: _currentIndex,
        onTap: (index) {
          if (index == _currentIndex) return;
          Navigator.pushReplacementNamed(
            context,
            HomePage._routes[index].route,
          );
          //navegacao aqui
        },
      ),
    );
  }
}
