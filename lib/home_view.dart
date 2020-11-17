import 'package:flutter/material.dart';
import 'package:regan_web/call_to_action.dart';
import 'package:regan_web/centered_view.dart';
import 'package:regan_web/course_details.dart';
import 'package:regan_web/home_page.dart';
import 'package:regan_web/navigation_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeView extends StatelessWidget {
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
                      height: 475,
                      color: Colors.grey[300],
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
