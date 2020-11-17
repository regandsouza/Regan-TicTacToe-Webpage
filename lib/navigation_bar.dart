import 'package:flutter/material.dart';
import 'dart:html' as html;

class NavigationBar extends StatelessWidget {

  NavigationBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 160,
            width: 200,
            child: Image.asset('assets/logo.png',
            ),
          ),


      FlatButton(
        child: Text('Other projects',
          style: TextStyle(
            fontSize: 17.4,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        onPressed: (){
          html.window.location.href = "https://github.com/regandsouza";
        },
      ),


        ],
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  const _NavBarItem(this.title);
  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: TextStyle(
          fontSize: 18,
        ));
  }
}
