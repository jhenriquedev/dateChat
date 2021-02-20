import 'package:flutter/material.dart';

import 'util.dart';

class BaseAppBar extends StatelessWidget {
  final String title;
  final Color titleColor;
  final Color borderColor;
  final Color background;

  BaseAppBar({
    this.title,
    this.titleColor,
    this.borderColor,
    this.background,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: background,
      automaticallyImplyLeading: false,
      title: roboto(
        text: title,
        size: 18,
        weight: FontWeight.w600,
        letterSpacing: 0,
        color: titleColor,
      ),
      shape: borderColor != null 
      ? Border(
        bottom: BorderSide(
          color: borderColor,
        ),
      )
      : null,
    );
  }
}

/*
//BaseScreen(this.screen);

  final Map<String, Widget> _screens = {
    'Explorer': ExplorerScreen(),
    'Chat': ChatScreen(),
    'Profile': ProfileScreen(),
  };

  String _screen;

  @override
  void initState() {
    super.initState();

    if (widget.screen != null) {
      _screen = widget.screen;
    }
    
  }

  handleScreen(String screen) {
    setState(() {
      _screen = screen;
    });
  }

  _appBar() {
    if (_screen == 'Profile') {
      return null;
    }

    return AppBar(
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      title: roboto(
        text: _screen,
        size: 18,
        weight: FontWeight.w600,
        letterSpacing: 0,
        color: _screen == 'Explorer'
            ? Theme.of(context).unselectedWidgetColor
            : Theme.of(context).backgroundColor,
      ),
      shape: Border(
        bottom: BorderSide(
          color: _screen != 'Explorer'
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
            color: _screen == 'Explorer'
                ? Theme.of(context).primaryColor
                : Theme.of(context).unselectedWidgetColor,
            onPressed: () => handleScreen('Explorer'),
          ),
          IconButton(
            icon: Icon(FeatherIcons.messageSquare),
            color: _screen == 'Chat'
                ? Theme.of(context).primaryColor
                : Theme.of(context).unselectedWidgetColor,
            onPressed: () => handleScreen('Chat'),
          ),
          IconButton(
            icon: Icon(FeatherIcons.user),
            color: _screen == 'Profile'
                ? Theme.of(context).primaryColor
                : Theme.of(context).unselectedWidgetColor,
            onPressed: () => handleScreen('Profile'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _screen == 'Explorer'
          ? Theme.of(context).backgroundColor
          : Theme.of(context).unselectedWidgetColor,
      extendBodyBehindAppBar: true,
      appBar: _appBar(),
      bottomNavigationBar: _bottomBar(),
      body: _screens[_screen],
    );
  }
*/
