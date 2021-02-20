import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import '../../common/util.dart';

import 'intro_screen.dart';

class LaunchScreen extends StatefulWidget {
  @override
  _LaunchScreenState createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Colors.transparent,
        toolbarHeight: 0,
        automaticallyImplyLeading: false,
      ),
      body: SplashScreen(
        seconds: 2,
        navigateAfterSeconds: IntroScreen(),
        loaderColor: Theme.of(context).primaryColor,
        backgroundColor: Theme.of(context).backgroundColor,
        title: roboto(
          text: 'DateChat',
          size: 64,
          weight: FontWeight.w800,
        ),
      ),
    );
  }
}
