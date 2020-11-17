import 'package:flutter/material.dart';
import 'package:regan_web/home_view.dart';


void main() => runApp(MaterialApp(
      title: 'Regan Webpage',
      theme: ThemeData(
        primarySwatch: Colors.blueAccent[500],
      ),
      home: HomeView(),
    ));
