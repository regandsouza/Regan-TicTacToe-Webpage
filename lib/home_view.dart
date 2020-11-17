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
              child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CourseDetails(),

                Expanded(
                    child: HomePage())

              ],
            ),),
            
          ],
        ),
      ),
    );
  }
}
