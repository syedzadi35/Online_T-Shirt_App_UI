import 'package:flutter/material.dart';

import 'package:online_shirt_app_ui/screen3.dart';

class Shirt2 extends StatefulWidget {
  const Shirt2({super.key, this.Image, this.price});
  final Image;
  final price;

  @override
  State<Shirt2> createState() => _Shirt2State();
}

class _Shirt2State extends State<Shirt2> {
  int selectedsize = -1;
  void changesize(int tempsize) {
    print('this is tempsize $tempsize');
    setState(() {
      selectedsize = tempsize;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 228, 153, 209),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.only(left: 4),
                          child: Icon(Icons.arrow_back_ios_new_outlined),
                        ),
                      )),
                ),
                const Text(
                  'Puma',
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
          ],
        ),
      ),
      const SizedBox(
        // height: 80,
        width: 5,
      ),
      Column(children: [
        const SizedBox(
          width: 5,
        ),
        Container(
          height: 340,
          width: 230,
          decoration: BoxDecoration(
            border: Border.all(color: const Color.fromARGB(255, 243, 222, 222)),
            borderRadius: BorderRadius.circular(10),
            // color: Colors.white,
          ),
          child: t_shirt(widget: widget),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          height: 30,
          width: 70,
          decoration: BoxDecoration(
            border: Border.all(color: const Color.fromARGB(255, 243, 222, 222)),
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.all(5),
          child: const Center(
            child: Text(
              'Size',
              style: TextStyle(
                  color: Color.fromARGB(255, 75, 7, 2),
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  changesize(1);
                },
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: selectedsize == 1
                              ? Colors.red
                              : const Color.fromARGB(255, 226, 215, 215)),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Text(
                    '16',
                    style: TextStyle(
                        color: selectedsize == 1 ? Colors.red : Colors.grey),
                  )),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              GestureDetector(
                onTap: () {
                  changesize(2);
                },
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: selectedsize == 2
                              ? Colors.red
                              : const Color.fromARGB(255, 224, 213, 213)),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Text(
                    '23',
                    style: TextStyle(
                        color: selectedsize == 2 ? Colors.red : Colors.grey),
                  )),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              GestureDetector(
                onTap: () {
                  changesize(3);
                },
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: selectedsize == 3
                              ? Colors.red
                              : const Color.fromARGB(255, 243, 212, 212)),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Text(
                    '35',
                    style: TextStyle(
                        color: selectedsize == 3 ? Colors.red : Colors.grey),
                  )),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              GestureDetector(
                onTap: () {
                  changesize(4);
                },
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: selectedsize == 4
                              ? Colors.red
                              : const Color.fromARGB(255, 247, 224, 224)),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Text(
                    '40',
                    style: TextStyle(
                        color: selectedsize == 4 ? Colors.red : Colors.grey),
                  )),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          width: 4,
          height: 10,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (v) {
              return const Shirt3();
            }));
          },
          child: Container(
            width: 350,
            height: 30,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 88, 16, 11),
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(
              child: Text(
                'buy now',
                style: TextStyle(
                    fontFamily: 'vegan',
                    color: Color.fromARGB(255, 236, 230, 230),
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
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
      ])
    ]));
  }
}

class t_shirt extends StatelessWidget {
  const t_shirt({
    super.key,
    required this.widget,
  });

  final Shirt2 widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              'T-Shirt Shop',
              style: TextStyle(
                  fontFamily: 'vegan',
                  fontSize: 30,
                  color: Color.fromARGB(255, 10, 6, 0)),
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(widget.Image)
          ],
        ),
      ),
    );
  }
}
