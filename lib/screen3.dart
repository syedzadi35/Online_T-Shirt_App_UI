import 'package:flutter/material.dart';

class Shirt3 extends StatelessWidget {
  const Shirt3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/star.png',
                height: 100,
                width: 200,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            width: 450,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10)),
            // child: Center(
            //   child: Text(
            //     'Congratulation My Online Shop',
            //     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            //   ),
            // ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: Text(
                    'Congratulation My Online \nShop',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                Icon(
                  Icons.favorite_border_rounded,
                  color: Colors.red,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 200,
            width: 300,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10)),
            child: Image.asset('assets/discount.png'),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(30)),
                child: const Icon(
                  Icons.add,
                  size: 40,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(30)),
                child: const Icon(
                  Icons.check,
                  size: 40,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 50,
            width: 400,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 248, 149, 142),
              border:
                  Border.all(color: const Color.fromARGB(255, 248, 225, 225)),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(
              child: Text('BUY NOW'),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.home),
              SizedBox(
                width: 20,
              ),
              Icon(Icons.shopping_bag),
              SizedBox(
                width: 20,
              ),
              Icon(Icons.accessibility),
              SizedBox(
                width: 20,
              ),
              Icon(Icons.person),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
