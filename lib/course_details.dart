import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:regan_web/home_page.dart';
import 'package:regan_web/home_view.dart';
import 'package:regan_web/main.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:html' as html;
import 'package:regan_web/call_to_action.dart';
import 'dart:ui';
import 'global.dart' as global;

class CourseDetails extends StatefulWidget {
  const CourseDetails({Key key}) : super(key: key);

  @override
  _CourseDetailsState createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<CourseDetails> {

  int colorCount = 0;

  int value = 0;




  @override
  Widget build(BuildContext context) {
    return Container(
        width: 600,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            SizedBox(height: 8,),

            Text('Regan Dsouza \nTic Tac Toe',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 80,
              height: 0.9,
            ),
            ),


            Text('Still Working on Personal Website, for now enjoy the little game of Tic Tac Toe',
            style: TextStyle(fontSize: 21,
            height: 1.7,
            ),),

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

            Container(
              width: 540,
              height: 50,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Expanded(
                    child: FlatButton(
                      onPressed: (){
                        setState(() {
                          global.pass = 0;
                        });
                      },
                      child: Container(
                        decoration: new BoxDecoration(
                          gradient: new LinearGradient(
                              colors: [
                                Colors.black,
                                Colors.grey[600]
                              ],
                              begin: const FractionalOffset(0.0, 0.0),
                              end: const FractionalOffset(1.0, 0.0),
                              stops: [0.0, 1.0],
                              tileMode: TileMode.clamp),
                        ),
                      ),
                    ),
                  ),


                  Expanded(
                    child: FlatButton(
                      onPressed: (){
                        setState(() {
                          global.pass = 1;
                        });

                      },
                      child: Container(
                        decoration: new BoxDecoration(
                          gradient: new LinearGradient(
                              colors: [
                                Colors.pinkAccent,
                                Colors.yellow,
                              ],
                              begin: const FractionalOffset(0.0, 0.0),
                              end: const FractionalOffset(1.0, 0.0),
                              stops: [0.0, 1.0],
                              tileMode: TileMode.clamp),
                        ),
                      ),
                    ),
                  ),





                  Expanded(
                    child: FlatButton(
                      onPressed: (){
                        setState(() {
                          global.pass = 2;
                        });
                      },
                      child: Container(
                        decoration: new BoxDecoration(
                          gradient: new LinearGradient(
                              colors: [
                                Colors.blue[800],
                                Colors.tealAccent[700],
                              ],
                              begin: const FractionalOffset(0.0, 0.0),
                              end: const FractionalOffset(1.0, 0.0),
                              stops: [0.0, 1.0],
                              tileMode: TileMode.clamp),
                        ),
                      ),
                    ),
                  ),


                  Expanded(
                    child: FlatButton(
                      onPressed: (){
                        setState(() {
                          global.pass = 3;
                        });
                      },
                      child: Container(
                        decoration: new BoxDecoration(
                          gradient: new LinearGradient(
                              colors: [
                                Colors.orangeAccent[700],
                                Colors.green[500],
                              ],
                              begin: const FractionalOffset(0.0, 0.0),
                              end: const FractionalOffset(1.0, 0.0),
                              stops: [0.0, 1.0],
                              tileMode: TileMode.clamp),
                        ),
                      ),
                    ),
                  ),




                ],
              ),
            )

          ],
        ),
    );
}
}






