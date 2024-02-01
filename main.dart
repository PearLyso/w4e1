import 'package:flutter/material.dart';

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
        primarySwatch: Colors.blue,

      ),
      home: MyHomePage(title: 'Product layout demo home page'),
    );
  }
}


class MyHomePage extends StatelessWidget {
 MyHomePage({Key? key, required this.title}) : super(key: key);


 final String title;
 @override
 Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Text("6488139")),
     body: ListView(
    shrinkWrap: true,
    padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
    children: <Widget>[
  ProductBox(
    name: "Cola",
    description: "Cola is sweet soda",
    price: 1000,
    internetImage: false,
    image: "18017541_1.jpg"),
  ProductBox(
    name: "Green tea",
    description: "Green tea is delicious",
    price: 800,
    internetImage: false,
    image: "Green.jpg"),
  ProductBox(
    name: "Apple juice",
    description: "Apple juice is benefit water",
    price: 2000,
    internetImage: false,
    image: "apple.png"),
  ProductBox(
    name: "Horse",
    description: "Horse is useful for running",
    price: 1500,
    internetImage: true,
    image: "https://i.natgeofe.com/n/56ad4f59-e256-42b1-bf7c-d04193068703/horse_thumb_4x3.jpg"),
  ProductBox(
    name: "House",
    description: "House is the living",
    price: 100,
    internetImage: true,
    image: "https://images.pexels.com/photos/106399/pexels-photo-106399.jpeg",),
  ProductBox(
    name: "Car",
    description: "Car is useful bring us to everywhere",
    price: 20,
    internetImage: true,
    image: "https://hips.hearstapps.com/hmg-prod/images/2019-honda-civic-sedan-1558453497.jpg"),
    ],
  ));
 }
}

class ProductBox extends StatelessWidget {
  ProductBox({Key? key, required this.name, required this.description, required this.price, required this.image, required this.internetImage})
    : super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;
  final bool internetImage;

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
          internetImage?Image.network(image, width: 100, height:100):  
          Image.asset("assets/" + image),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(5),
              child: Column(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(this.name,
                  style: TextStyle(fontWeight: FontWeight.bold)),
                Text(this.description),
                Text("Price: " + this.price.toString()),
              ],
            )))
      ]))); 
  }
}
