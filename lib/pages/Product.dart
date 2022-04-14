import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    final rating = Row(
      children: <Widget>[
        Icon(Icons.star),
        Text('4.5'),
        Divider(
          color: Colors.cyan,
          height: 20,
        ),
        SizedBox(
          width: 20,
        ),
        Text('355 reviews ')
      ],
    );

    final topbar = Row(
      children: <Widget>[
        SizedBox(
          height: 200,
        ),
        IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/home');
            },
            icon: Icon(
              Icons.keyboard_backspace_outlined,
              size: 30,
            )),
        SizedBox(
          width: 200,
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.share,
              size: 30,
            )),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_border,
              size: 30,
            ))
      ],
    );

    return Scaffold(
      body: Column(
        children: <Widget>[
          topbar,
          Image(
              image: NetworkImage(
                  'https://rukminim1.flixcart.com/image/416/416/l0wrafk0/sofa-sectional/g/4/b/symmetrical-78-74-green-velvet-124-46-32-6-arra2207-arra-green-original-imagchh4zvcxbyyy.jpeg?q=70')),
          SizedBox(
            height: 20,
          ),
          Text(
            ' Royal Palm Sofa, Vissle Dark   Blue/Kabusa Dark Navy ',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          rating,
          card,
          SizedBox(
            height: 80,
          ),
          cart
        ],
      ),
      floatingActionButton: FittedBox(
        child: FloatingActionButton.large(
          backgroundColor: Colors.black,
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/product');
          },
          child: Text('Buy Now'),
        ),
      ),
    );
  }
}

final card = Card(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      SizedBox(
        height: 10,
      ),
      Row(
        children: <Widget>[
          SizedBox(
            width: 30,
          ),
          Text('Offers',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ],
      ),
      Divider(
        height: 10,
        color: Colors.black,
      ),
      SizedBox(
        height: 10,
      ),
      Row(
        children: <Widget>[
          SizedBox(
            width: 30,
          ),
          Text('CityBank Offers ',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Row(
        children: [
          SizedBox(
            width: 30,
          ),
          Text('Get additional 15% instant dicount',
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.w100)),
        ],
      ),
    ],
  ),
);
final cart = Row(
  children: <Widget>[
    Icon(
      Icons.shopping_cart_outlined,
      size: 40,
    ),
    SizedBox(
      width: 120,
    ),
    Text('4999',
        style: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, color: Colors.green))
  ],
);
