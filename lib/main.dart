import 'package:flutter/material.dart';

import 'common/util.dart';

import 'screens/login/launch_screen.dart';

void main() {
  runApp(DateDrive());
}

class DateDrive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DippingCode',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: colors['primary'],
        backgroundColor: colors['secondary'],
        dividerColor: colors['divider'],
        unselectedWidgetColor: colors['white'],
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          brightness: Brightness.dark,
        ),
      ),
      home: LaunchScreen(),
    );
  }
}
