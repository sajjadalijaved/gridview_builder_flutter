import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'GridView Builder'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> images = [
    "assets/images/scenery6.jpg",
    "assets/images/scenery1.jpg",
    "assets/images/waterfall.jpg",
    "assets/images/trees.jpg",
    "assets/images/sun3.jpg",
    "assets/images/moon3.jpg",
    "assets/images/galaxy3.jpg",
    "assets/images/scenery2.jpg",
    "assets/images/waterfall1.jpg",
    "assets/images/trees1.jpg",
    "assets/images/moon1.jpg",
    "assets/images/scenery3.jpg",
    "assets/images/waterfall2.jpg",
    "assets/images/trees2.jpg",
    "assets/images/scenery4.jpg",
    "assets/images/waterfall3.jpg",
    "assets/images/trees3.jpg",
    "assets/images/scenery5.jpg",
    "assets/images/waterfall4.jpg",
    "assets/images/trees4.jpg",
    "assets/images/scenery6.jpg",
    "assets/images/scenery.jpg",
    "assets/images/scenery1.jpg",
    "assets/images/scenery6.jpg",
    "assets/images/waterfall.jpg",
    "assets/images/trees.jpg",
    "assets/images/sun3.jpg",
    "assets/images/moon3.jpg",
    "assets/images/galaxy3.jpg",
    "assets/images/scenery2.jpg",
    "assets/images/waterfall1.jpg",
    "assets/images/trees1.jpg",
    "assets/images/moon1.jpg",
    "assets/images/scenery3.jpg",
    "assets/images/waterfall2.jpg",
    "assets/images/trees2.jpg",
    "assets/images/scenery4.jpg",
    "assets/images/waterfall3.jpg",
    "assets/images/trees3.jpg",
    "assets/images/scenery5.jpg",
    "assets/images/waterfall4.jpg",
    "assets/images/trees4.jpg",
    "assets/images/scenery6.jpg",
    "assets/images/scenery.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: const Icon(Icons.arrow_back),
          title: Text(widget.title),
        ),
        endDrawer: const Drawer(),
        body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            padding: const EdgeInsets.all(7),
            shrinkWrap: true,
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Expanded(
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                      child: Image.asset(images[index], fit: BoxFit.cover)));
            }));
  }
}
