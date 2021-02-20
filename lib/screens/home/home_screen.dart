import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../../common/util.dart';

import 'Profile_screen.dart';
import 'Contacts_screen.dart';
import 'explorer_screen.dart';

/*
class HomeScreen extends StatelessWidget {
  //const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _kScreens = <Widget>[
      ExplorarScreen(),
      ContactsScreen(),
      PerfilScreen(),
    ];

    final _kTabs = <Tab>[
      const Tab(icon: Icon(FeatherIcons.map)),
      const Tab(icon: Icon(FeatherIcons.messageSquare)),
      const Tab(icon: Icon(FeatherIcons.user)),
    ];

    return DefaultTabController(
      length: _kTabs.length,
      child: Scaffold(
        backgroundColor: Theme.of(context).unselectedWidgetColor,
        extendBodyBehindAppBar: true,
        bottomNavigationBar: Container(
          color: Theme.of(context).backgroundColor,
          child: TabBar(
            indicatorColor: Colors.transparent,
            unselectedLabelColor: Theme.of(context).unselectedWidgetColor,
            labelColor: Theme.of(context).primaryColor,
            tabs: _kTabs,
          ),
        ),
        body: TabBarView(
          children: _kScreens,
        ),
      ),
    );
  }
}
*/



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


/*

class BaseScreen extends StatefulWidget {
  //final ScreenModel screen;
  final String screen;

  BaseScreen({this.screen});

  @override
  _BaseScreenState createState() => _BaseScreenState();
}

/*
class _BaseScreenState extends State<BaseScreen> {
  //ScreenModel _screen;

  @override
  void initState() {
    super.initState();

    if (widget.screen != null) _screen = widget.screen;
  }

  handleScreen(String screen) {
    setState(() {
      _screen.title = screen;
    });
  }

  @override
  Widget build(BuildContext context) {
    ScreenModel _screen = ScreenModel(
      title: 'Explorar',
      titleColor: Theme.of(context).unselectedWidgetColor,
      showTitle: true,
      background: Theme.of(context).unselectedWidgetColor,
      appBarBorder: Theme.of(context).dividerColor,
      children: {
        'Explorar': ExplorarScreen(),
        'Contatos': ContatosScreen(),
        'Perfil': PerfilScreen(),
      },
    );

     _appBar() {
    if (!_screen.appBar) {
      return null;
    }

    return AppBar(
      backgroundColor: _screen.appBarBackground,
      automaticallyImplyLeading: false,
      title: _screen.showTitle ? roboto(
        text: _screen.title,
        size: 18,
        weight: FontWeight.w600,
        letterSpacing: 0,
        color: _screen.titleColor,
      ) : null,
      shape: _screen.appBarBorder != null ? Border(
        bottom: BorderSide( color: _screen.appBarBorder ),
      ) : null,
    );
  }

  _bottomBar() {
    if (!_screen.bottomAppBar) {
      return null;
    }
    return BottomAppBar(
      color: _screen.bottomAppBarBackground,
      shape: CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: Icon(FeatherIcons.map),
            color: _screen.title == 'Explorar'
                ? Theme.of(context).primaryColor
                : Theme.of(context).unselectedWidgetColor,
            onPressed: //() => handleScreen('Explorar'),
            () => _screen.selectChild('Explorar'),
          ),
          IconButton(
            icon: Icon(FeatherIcons.messageSquare),
            color: _screen.title == 'Contatos'
                ? Theme.of(context).primaryColor
                : Theme.of(context).unselectedWidgetColor,
            onPressed: //() => handleScreen('Contatos'),
            () => _screen.selectChild('Contatos'),
          ),
          IconButton(
            icon: Icon(FeatherIcons.user),
            color: _screen.title == 'Perfil'
                ? Theme.of(context).primaryColor
                : Theme.of(context).unselectedWidgetColor,
            onPressed: //() => handleScreen('Perfil'),
            () => _screen.selectChild('Perfil'),
          ),
        ],
      ),
    );
  }




    return Scaffold(
      backgroundColor: _screen.background,
      extendBodyBehindAppBar: _screen.extendBodyBehindAppBar,
      appBar: _appBar(),
      bottomNavigationBar: _bottomBar(),
      body: _screen.children[_screen.title], // _screen.childSelected,
    );
  }
}

*/

class _BaseScreenState extends State<BaseScreen> {
  BaseAppBar appBar = BaseAppBar(
    title: 'teste',
  );

  final Map<String, Widget> _screens = {
    'Explorar': ExplorarScreen(),
    'Contatos': ContatosScreen(),
    'Perfil': PerfilScreen(),
  };

  String _screen;

  @override
  void initState() {
    super.initState();

    if (widget.screen != null) _screen = widget.screen;
    //if (widget.hasAppbar != null) _hasAppbar = widget.hasAppbar;
    //if (widget.hasBottomAppBar != null)
    //  _hasBottomAppBar = widget.hasBottomAppBar;
    //if (widget.background != null) _background = widget.background;
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
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
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
*/
