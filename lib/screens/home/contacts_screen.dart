import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../../common/util.dart';

import '../chat/chat_screen.dart';

class ContactsScreen extends StatefulWidget {
  @override
  _ContactsScreenState createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {

  _handlerScreen(
    String userName,
  ) => Navigator.push(
    context,
            MaterialPageRoute(
              builder: (_) => ChatScreen(
                userName: userName,
              ),
            ),
  );

  _contact({
    String avatar = 'foto06.jpeg',
    String name = 'Beatriz',
  }) =>
      Card(
        margin: EdgeInsets.symmetric(horizontal: 4, vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: InkWell(
          onTap: () => _handlerScreen(name),
          child: Container(
            width: 84,
            height: 114,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(avatar),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  child: roboto(
                    text: name,
                    size: 14,
                    color: colors['white'],
                    weight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  _carousel() => Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 16),
        height: 146,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            _contact(avatar: 'foto01.jpeg', name: 'Júlia'),
            _contact(avatar: 'foto02.jpeg', name: 'Beatriz'),
            _contact(avatar: 'foto03.jpeg', name: 'Maria'),
            _contact(avatar: 'foto04.jpeg', name: 'Tereza'),
            _contact(avatar: 'foto03.jpeg', name: 'Rita'),
            _contact(avatar: 'foto06.jpeg', name: 'Michele'),
            _contact(avatar: 'profile.jpeg', name: 'Rosa'),
          ],
        ),
      );

  _sectionTitle(String text) => Container(
        child: roboto(
          text: text,
          size: 14,
          color: Color(0xFFc4c4c4),
          weight: FontWeight.w600,
        ),
      );

  _message({
    String avatar = 'foto06.jpeg',
    String name = 'Beatriz',
    String age = '32',
    String lastMessage = 'Olá, tudo bem com você?',
    String date = '28 de jan. de 2021',
    IconData icon = FeatherIcons.arrowUpLeft,
    bool isLast = false,
  }) =>
      Dismissible(
        key: ValueKey(name),
        background: Container(),
        secondaryBackground: Container(
          color: Colors.red,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              roboto(
                text: 'Remover Conversa',
                size: 14,
                weight: FontWeight.w600,
              ),
              SizedBox(width: 5),
              Icon(
                FeatherIcons.trash,
                color: colors['white'],
              ),
              SizedBox(width: 16),
            ],
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            border: isLast
                ? null
                : Border(
                    bottom: BorderSide(
                      color: colors['grey'],
                    ),
                  ),
          ),
          child: ListTile(
            onTap: () => _handlerScreen(name),
            leading: CircleAvatar(backgroundImage: AssetImage(avatar)),
            title: Container(
              child: Row(
                children: [
                  roboto(
                    text: '$name, $age',
                    size: 16,
                    color: Theme.of(context).backgroundColor,
                    weight: FontWeight.w600,
                  ),
                  Spacer(),
                  roboto(
                    text: date,
                    size: 12,
                    color: Color(0xFFc4c4c4),
                  ),
                ],
              ),
            ),
            subtitle: Container(
              child: Row(
                children: [
                  Icon(
                    icon,
                    color: Color(0xFFc4c4c4),
                    size: 16,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  roboto(
                    text: lastMessage,
                    size: 14,
                    color: Color(0xFFc4c4c4),
                  ),
                ],
              ),
            ),
            trailing: Icon(
              FeatherIcons.chevronRight,
              color: Color(0xFFc4c4c4),
            ),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            margin: EdgeInsets.only(top: 116, left: 16),
            child: _sectionTitle('CONTATOS A ESPERA'),
          ),
          _carousel(),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            child: _sectionTitle('MENSAGENS RECENTES'),
          ),
          _message(name: 'Júlia'),
          _message(name: 'Maria'),
          _message(name: 'Fernanda'),
          _message(name: 'Tereza'),
          _message(name: 'Marta'),
          _message(name: 'Michele'),
          _message(name: 'Juliana'),
          _message(name: 'Mônica'),
          _message(name: 'Rosa'),
          _message(name: 'Ana'),
          _message(isLast: true, name: 'Jurema'),
        ],
      ),
    );
  }
}
