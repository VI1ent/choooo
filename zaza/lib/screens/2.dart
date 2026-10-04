import 'package:flutter/material.dart';

import 'package:zaza/widgets/card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<String> categories = [
    "Одежда",
    "Электроника",
    "Красота",
    "Для дома",
  ];

  final List<String> myProducts = [
    'assets/Hoodie.png',
    'assets/Jeans.png',
    'assets/Hoodie.png',
    'assets/Jeans.png',
    'assets/Hoodie.png',
    'assets/Jeans.png',
    'assets/Hoodie.png',
    'assets/Jeans.png',
    'assets/Hoodie.png',
    'assets/Jeans.png',
    'assets/Hoodie.png',
    'assets/Jeans.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: const Text(
          "Zaza",
          style: TextStyle(
            color: Color.fromARGB(255, 34, 34, 34),
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Chip(
                        backgroundColor: index == 0
                            ? const Color.fromARGB(255, 255, 164, 81)
                            : Colors.grey[200],
                        label: Text(
                          categories[index],
                          style: TextStyle(
                            color: index == 0
                                ? const Color.fromARGB(255, 0, 0, 0)
                                : Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        side: BorderSide.none,
                      ),
                    );
                  },
                ),
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.0, //
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                ),
                itemCount: myProducts.length,
                itemBuilder: (context, index) {
                  return PrCard(imagePath: myProducts[index]);
                },
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 255, 164, 81),
        elevation: 0,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: .spaceAround,
            children: [
              IconButton(
                iconSize: 32,
                icon: Icon(
                  Icons.home,
                  color: _currentIndex == 0
                      ? Colors.white
                      : Colors.white.withValues(alpha: 0.6),
                ),
                onPressed: () {
                  setState(() {
                    _currentIndex = 0;
                  });
                },
              ),
              IconButton(
                iconSize: 32,
                icon: Icon(
                  Icons.shopping_cart,
                  color: _currentIndex == 1
                      ? Colors.white
                      : Colors.white.withValues(alpha: 0.6),
                ),
                onPressed: () {
                  setState(() {
                    _currentIndex = 1;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
