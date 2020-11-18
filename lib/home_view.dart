import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:regan_web/call_to_action.dart';
import 'package:regan_web/centered_view.dart';
import 'package:regan_web/course_details.dart';
import 'package:regan_web/home_page.dart';
import 'package:regan_web/navigation_bar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'global.dart' as global;

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  int counterA = 0;
  int counterB = 0;

  _getCounterA(){
    counterA = global.countA;
    return counterA;
  }

  _getCounterB(){
    counterB = global.countB;
    return counterB;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NavigationBar(),

            Expanded(
              flex: 3,
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CourseDetails(),

                Expanded(
                  flex: 2,
                    child: HomePage()),

                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Container(
                      width: 40,
                      height: 522,
                      color: Colors.grey[300],

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                          //Your score
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              Text('You',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 42,
                              ),
                              ),

                              Text(
                                _getCounterA().toString(),
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 36,
                                  color: Colors.pink[700],
                                ),
                              ),

                            ],
                          ),


                          //divider
                          Container(
                          height: double.infinity,
                            width: 1,
                            color: Colors.purple[800],
                          ),



                          //Bot score
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              Text('Bot',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 42,
                                ),
                              ),

                              Text(
                                _getCounterB().toString(),
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 36,
                                  color: Colors.pink[700],
                                ),
                              ),

                            ],
                          ),


                        ],
                      ),

                    ),
                  ),
                )

              ],
            ),),

          ],
        ),
      ),
    );
  }
}


