import 'package:flutter/material.dart';
import 'package:market_manager/app/core/theme/app_theme.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search_outlined),
                  hintText: 'procurar no market manager',
                ),
              ),
            ),
            Container(
              width: 200,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage('lib/app/pages/home/assets/estoico.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.add),
            ),

            SizedBox(
              width: 200,
              height: 200,
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('EU aqui meu amor'),
                    Text(
                      '7pcs. Priceg',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Text(
                      'Exclusive Offer ',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                      'Organic Bananas',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      '${4.99}',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        onTap: (index) {},

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Categorias',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Carrinho',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}
