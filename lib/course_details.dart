import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:html' as html;
import 'package:regan_web/call_to_action.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 600,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            SizedBox(height: 16,),

            Text('Regan Dsouza \nTic Tac Toe',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 80,
              height: 0.9,
            ),
            ),


            Text('A little game here, try to beat it now cause later it will be upgraded to be stronger than now',
            style: TextStyle(fontSize: 21,
            height: 1.7,
            ),),

            SizedBox(height: 12,),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Follow me up on  ',
                  style: TextStyle(
                    fontSize: 18.8,
                  ),
                ),

                Center(child: CallToAction('Twitter'),),
              ],
            ),

            SizedBox(height: 2,),

          ],
        ),
    );
  }
}
