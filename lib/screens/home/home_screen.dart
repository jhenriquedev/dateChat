import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../../common/util.dart';

import 'Profile_screen.dart';
import 'Contacts_screen.dart';
import 'explorer_screen.dart';

class HomeScreen extends StatefulWidget {
  final String screen;

  HomeScreen({this.screen});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Map<String, Widget> _screens = {
    'Explorar': ExplorerScreen(),
    'Contatos': ContactsScreen(),
    'Perfil': ProfileScreen(),
  };
  String _screen;

  @override
  void initState() {
    super.initState();

    if (widget.screen != null) {
      _screen = widget.screen;
    } else {
      handleScreen('Explorar');
    }
  }

  handleScreen(String screen) {
    setState(() {
      _screen = screen;
    });
  }

  _appBar() {
    if (_screen == 'Perfil') {
      return null;
    }

    return AppBar(
      backgroundColor: _screen != 'Contatos' 
      ? Colors.transparent
      : Theme.of(context).unselectedWidgetColor,
      automaticallyImplyLeading: false,
      brightness: _screen != 'Explorar'
      ? Brightness.light
      : Brightness.dark,
      title: roboto(
        text: _screen,
        size: 18,
        weight: FontWeight.w600,
        letterSpacing: 0,
        color: _screen == 'Explorar'
            ? Theme.of(context).unselectedWidgetColor
            : Theme.of(context).backgroundColor,
      ),
      shape: Border(
        bottom: BorderSide(
          color: _screen != 'Explorar'
              ? colors['grey']
              : Theme.of(context).dividerColor,
        ),
      ),
    );
  }

  _bottomBar() {
    return BottomAppBar(
      color: Theme.of(context).backgroundColor,
      shape: CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: Icon(FeatherIcons.map),
            color: _screen == 'Explorar'
                ? Theme.of(context).primaryColor
                : Theme.of(context).unselectedWidgetColor,
            onPressed: () => handleScreen('Explorar'),
          ),
          IconButton(
            icon: Icon(FeatherIcons.messageSquare),
            color: _screen == 'Contatos'
                ? Theme.of(context).primaryColor
                : Theme.of(context).unselectedWidgetColor,
            onPressed: () => handleScreen('Contatos'),
          ),
          IconButton(
            icon: Icon(FeatherIcons.user),
            color: _screen == 'Perfil'
                ? Theme.of(context).primaryColor
                : Theme.of(context).unselectedWidgetColor,
            onPressed: () => handleScreen('Perfil'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _screen == 'Explorar'
          ? Theme.of(context).backgroundColor
          : Theme.of(context).unselectedWidgetColor,
      extendBodyBehindAppBar: true,
      appBar: _appBar(),
      bottomNavigationBar: _bottomBar(),
      body: _screens[_screen],
    );
  }
}