import 'package:flutter/material.dart';
import 'package:regan_web/call_to_action.dart';
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
            onPressed: (){
              html.window.location.href = "https://github.com/regandsouza";
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 70,
                vertical: 15,
              ),
              child: Text(
                'Other projects',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                ),
              ),
            ),
            shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.black54, width: 1.6)
            ),
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
