import 'package:flutter/material.dart';
import 'package:helloworld/pages/Product.dart';
import 'package:helloworld/pages/home.dart';
import 'package:helloworld/pages/loading.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/product': (context) => Product(),
      },
    ));
