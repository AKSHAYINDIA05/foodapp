import 'package:flutter/material.dart';
import 'package:foodapp/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/images/image3.jpg',
                      width: 230,
                    ),
                    Image.asset(
                      'assets/images/image3.jpg',
                      width: 230,
                    ),
                    ClipRRect(
                      child: Image.asset(
                        'assets/images/image3.jpg',
                        width: 230,
                      ),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(100),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    ClipRRect(
                      child: Image.asset(
                        'assets/images/image1.jpg',
                        width: 200,
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(100),
                      ),
                      child: Image.asset(
                        'assets/images/image2.jpg',
                        width: 200,
                      ),
                    )
                  ],
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Discover our Food World!',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'Experience the most delicious food with us!',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w100),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 16.0, left: 8),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Home(),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(
                        16,
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        "Get Started",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
