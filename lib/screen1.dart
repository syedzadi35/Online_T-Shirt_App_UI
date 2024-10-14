import 'package:flutter/material.dart';

import 'package:online_shirt_app_ui/screen2.dart';

// ignore: must_be_immutable
class Shirt1 extends StatelessWidget {
  Shirt1({super.key});
  List<String> images = [
    'assets/shirt1.png',
    'assets/shirt2.png',
    'assets/shirt3.png',
    'assets/shirt4.png',
  ];
  List<String> text = [
    'first',
    'second',
    'third',
    'fourth',
  ];
  List<String> price = [
    '\$ 230',
    '\$ 250',
    '\$ 280',
    '\$ 230',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 228, 153, 209),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Icon(Icons.arrow_back_ios_new_outlined),
                ),
                const Text(
                  'T- Shirt Shop',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 243, 154, 213),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Icon(Icons.menu_outlined),
                ),
              ],
            ),
          ),
          Expanded(
              child: GridView.builder(
                  itemCount: images.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 5.0,
                      crossAxisSpacing: 5.0),
                  itemBuilder: (context, index) {
                    return Container(
                        child: Column(children: [
                      Container(
                        height: 180,
                        width: 160,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Padding(
                                padding:
                                    const EdgeInsets.only(right: 5, top: 5),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    height: 25,
                                    width: 25,
                                    decoration: const BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 185, 229, 224),
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                              color: Color.fromARGB(
                                                  255, 231, 226, 226),
                                              blurRadius: 1,
                                              spreadRadius: 1.5)
                                        ]),
                                    child: const Icon(
                                      Icons.favorite_rounded,
                                      color: Colors.red,
                                      size: 20,
                                    ),
                                  ),
                                )),
                            const SizedBox(height: 10),
                            Image.asset(
                              images[index],
                              height: 80,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(height: 10),
                            Text(text[index]),
                            Text(price[index]),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (v) {
                            return Shirt2(
                              Image: images[index],
                              price: price[index],
                            );
                          }));
                        },
                        child: Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Center(
                              child: Text(
                                'BUY NOW',
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                      ),
                    ]));
                  }))
        ],
      ),
    );
  }
}
