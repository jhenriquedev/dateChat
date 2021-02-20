import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../../common/util.dart';

import 'intro_screen.dart';

class RecoverScreen extends StatefulWidget {
  @override
  _RecoverScreenState createState() => _RecoverScreenState();
}

class _RecoverScreenState extends State<RecoverScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Colors.transparent,
        toolbarHeight: 0,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 32,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 32,
                  child: FloatingActionButton(
                    backgroundColor: Theme.of(context).primaryColor,
                    onPressed: () => Navigator.pop(
                      context,
                      MaterialPageRoute(
                        builder: (_) => IntroScreen(),
                      ),
                    ),
                    child: Icon(FeatherIcons.chevronLeft),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 56, 0, 0),
                  child: Center(
                    child: roboto(
                      text: 'Qual é o seu e-mail?',
                      size: 36,
                      weight: FontWeight.bold,
                    ),
                  ),
                ),

                inputPrimary(
                  marginTop: 56,
                  inputType: TextInputType.emailAddress,
                  autoCorrect: false,
                  length: 50,
                  label: 'E-mail',
                  validator: (input) => input.trim().isEmpty
                        ? 'Informe um e-mail válido.'
                        : null,
                ),

                
                roboto(
                  text:
                      'Informe o e-mail que você utilizou para criar a conta e verifique o código de confirmação enviado.',
                  size: 14,
                  color: colors['light-grey'],
                  maxLines: 3,
                  letterSpacing: 0,
                  align: TextAlign.center,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 48, 0, 0),
                  child: Center(
                    child: primaryButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => IntroScreen(),
                        ),
                      ),
                      text: 'Recuperar',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
