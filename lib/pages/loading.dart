import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 100,
          ),
          Text(
            ' Elegant',
            style: TextStyle(fontSize: 50),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Simple',
            style: TextStyle(fontSize: 50),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '     Furniture.',
            style: TextStyle(fontSize: 50),
          ),
          Image(
              image: NetworkImage(
                  'https://ii1.pepperfry.com/media/catalog/product/w/a/800x880/wade-height-adjustable-swivel-bar-stool-in-black-colour-by-furniturstation-wade-height-adjustable-sw-tmxmu4.jpg'))
        ],
      ),
      floatingActionButton: FittedBox(
        child: FloatingActionButton.large(
          backgroundColor: Colors.black,
          onPressed: () {
            int n = 10;
            int nn = fun(n);
            if (nn == 0) {
              print('even');
            } else {
              print('odd');
            }
          },
          child: Text('Start'),
        ),
      ),
    );
  }
}

int fun(int n) {
  return (n & 1);
}
