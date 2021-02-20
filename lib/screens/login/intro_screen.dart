import 'package:flutter/material.dart';

import '../../common/util.dart';

import 'login_screen.dart';
import 'recover_screen.dart';


class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Colors.transparent,
        toolbarHeight: 0,
        automaticallyImplyLeading: false,
      ),
      
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: 32,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              roboto(
                text: 'DateChat',
                size: 32,
                weight: FontWeight.bold,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 64, 0, 64),
                child: roboto(
                  text: 'Conheça pessoas conversando com elas...',
                  size: 48,
                  maxLines: 4,
                  height: 1.4,
                  weight: FontWeight.w800,
                ),
              ),
              Center(
                child: primaryButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => LoginScreen(),
                    ),
                  ),
                  text: 'Usar o meu e-mail',
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 40, 0, 66),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      style: textStyle(
                        size: 14,
                        letterSpacing: 0,
                        color: colors['light-grey'],
                      ),
                      children: [
                        TextSpan(
                          text: 'Quando você se registra, aceita nossas ',
                        ),
                        TextSpan(
                          text: 'Condições gerais de utilização, ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'a nossa ',
                        ),
                        TextSpan(
                          text: 'Política de privacidade ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'e a nossa ',
                        ),
                        TextSpan(
                          text: 'Carta de cookies.',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ]),
                ),
              ),
              Center(
                child: primaryButton(
                  text: 'Recuperar a minha conta',
                  textSize: 16,
                  textColor: colors['light-grey'],
                  elevation: 0,
                  color: Theme.of(context).backgroundColor,
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => RecoverScreen(),
                    ),
                  )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
