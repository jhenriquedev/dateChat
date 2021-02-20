import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../../common/util.dart';

import '../home/home_screen.dart';

class ChatScreen extends StatefulWidget {
  final String userName;

  ChatScreen({
    this.userName,
  });

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  String _title;

  @override
  void initState() {
    super.initState();

    if (widget.userName != null) {
      _title = widget.userName;
    }
  }

  _handleScreen() => Navigator.pop(
        context,
        MaterialPageRoute(
          builder: (_) => HomeScreen(
            screen: 'Contatos',
          ),
        ),
      );

  _appBar() {
    if (_title == null) {
      return null;
    }

    return AppBar(
      backgroundColor: Theme.of(context).unselectedWidgetColor,
      brightness: Brightness.light,
      actions: [
        FlatButton(
          child: roboto(
            text: 'Remover',
            size: 18,
            letterSpacing: 0,
            color: Theme.of(context).primaryColor,
          ),
          onPressed: () => _handleScreen(),
        ),
      ],
      leading: IconButton(
        icon: Icon(
          FeatherIcons.chevronLeft,
          color: Theme.of(context).primaryColor,
        ),
        onPressed: () => _handleScreen(),
      ),
      title: roboto(
        text: _title,
        size: 18,
        weight: FontWeight.w600,
        letterSpacing: 0,
        color: Theme.of(context).backgroundColor,
      ),
      shape: Border(
        bottom: BorderSide(
          color: colors['grey'],
        ),
      ),
    );
  }

  _chatBar() => Container(
        padding: EdgeInsets.fromLTRB(16, 8, 16, 16),
        height: 56,
        decoration: BoxDecoration(
          color: colors['white'],
          border: Border.all(color: colors['grey']),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * .8,
              ),
              child: inputPrimary(
                color: Colors.transparent,
                textColor: colors['secondary'],
                hasBorder: false,
                length: null,
                radius: 0,
                inputBorder: false,
                label: 'Escreva uma mensagem...',
                labelColor: Color(0xFFc4c4c4),
              ),
            ),
            Container(
              child: IconButton(
                padding: EdgeInsets.all(0),
                icon: Icon(
                  FeatherIcons.send,
                  color: Color(0xFFc4c4c4),
                ),
                onPressed: () => {},
              ),
            ),
          ],
        ),
      );

  _contactProfile({
    //String contactName = 'Maria',
    String avatar = 'foto06.jpeg',
    String date = '28 de Janeiro de 2021',
  }) =>
      Container(
        //width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(bottom: 16),
        child: Column(
          children: [
            Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Container(
                  width: 128,
                  height: 128,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(avatar),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                )),
            roboto(
              text: 'Iniciaram uma nova amizade em',
              size: 14,
              align: TextAlign.center,
              color: Color(0xFFc4c4c4),
            ),
            roboto(
              text: date,
              size: 14,
              align: TextAlign.center,
              color: Color(0xFFc4c4c4),
            ),
          ],
        ),
      );

  _chatBubble({
    String text = 'Texto',
    String avatar,
    bool isSender = true, //esta enviando
    bool isSent = true, //enviado
    bool isDelivered = true, //entregue
    bool isSeen = true, //visto
  }) => bubble(
            text: text,
            avatar: avatar,
            width: MediaQuery.of(context).size.width,
            background: Theme.of(context).primaryColor,
            isSender: isSender,
            sent: isSent,
            delivered: isDelivered,
            seen: isSeen,
  );

  _chatDate(String date) => Container(
        margin: EdgeInsets.fromLTRB(0, 24, 0, 16),
        child: roboto(
          text: date,
          size: 12,
          align: TextAlign.center,
          color: Color(0xFFc4c4c4),
        ),
      );

  _chatList() => ListView(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        children: [
          _contactProfile(),
          
          _chatDate('28 de Jan. de 2021'),

          _chatBubble(),
          _chatBubble(),
          _chatBubble(
            text: 'oi',
            avatar: 'foto06.jpeg',
            isSender: false,
          ),
          _chatBubble(
            text: 'Texto curto',
          ),
          _chatBubble(text: 'i'),
          _chatBubble(
              text:
                  'Texto grande Texto grande Texto grande Texto grande Texto grande Texto grande Texto grande Texto grande Texto grande Texto grande Texto grande Texto grande Texto grande Texto grande Texto grande Texto grande Texto grande Texto grande Texto grande Texto grande Texto grande Texto grande Texto grande Texto grande Texto grande Texto grande Texto grande Texto grande Texto grande Texto grande Texto grande Texto grande Texto grande Texto grande Texto grande Texto grandeTexto grande Texto grande Texto grande Texto grande Texto grande Texto grande Texto grande Texto grande Texto grande Texto grande Texto grande Texto grande Texto grande'),
          _chatBubble(
            text: 'Texto curto',
          ),
          _chatBubble(
            text: 'oi',
            avatar: 'foto06.jpeg',
            isSender: false,
          ),
          _chatBubble(
            text: 'Texto curto',
          ),
          _chatBubble(
            text: 'oi',
            isSender: false,
          ),
          _chatBubble(
            text: 'Texto curto',
          ),
          _chatBubble(
            text: 'Texto curto',
          ),
          _chatDate('05 de Fev. de 2021'),
          _chatBubble(
            text: 'oi',
            isSender: false,
          ),
          _chatBubble(
            text: 'Texto curto',
          ),
          _chatBubble(
            text: 'oi',
            isSender: false,
          ),
          _chatBubble(
            text: 'Texto curto',
          ),
          _chatBubble(
            text: 'Texto curto',
          ),
          _chatBubble(
            text: 'oi',
            isSender: false,
          ),
          _chatBubble(
            text: 'Texto curto',
          ),
          _chatBubble(
            text: 'Texto curto',
          ),
          _chatBubble(
            text: 'Texto curto',
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      //bottomNavigationBar: _bottomNavigationBar(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height - 156,
                child: _chatList(),
              ),
              _chatBar(),
            ],
          ),
        ),
      ),
    );
  }
}
