import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:finalapp/components/horizontal_listview.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
