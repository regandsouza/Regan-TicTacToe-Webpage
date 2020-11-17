import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:regan_web/course_details.dart';
import 'package:regan_web/centered_view.dart';
import 'package:regan_web/home_view.dart';
import 'package:regan_web/navigation_bar.dart';
import 'dart:html' as html;

class CallToAction extends StatelessWidget {
  final String title;
  CallToAction (this.title);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: (){
        html.window.location.href = "https://twitter.com/elonmusk/status/1325450416562208768";
      },
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 50,
          vertical: 12,
          ),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: Colors.white
            ),
          ),
          decoration: BoxDecoration(
            color: Color.fromRGBO(36,162,252,2),
            borderRadius: BorderRadius.circular(4),
          ),
    ),
    );
  }
}
