import 'package:flutter/material.dart';

import '../../common/util.dart';

class GenderForm extends StatefulWidget {
  @override
  _GenderFormState createState() => _GenderFormState();
}

class _GenderFormState extends State<GenderForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Center(
            child: primaryButton(
              onPressed: () => {},
              text: 'Homem',
              textColor: Theme.of(context).backgroundColor,
              color: colors['inative'],
              elevation: 0,
            ),
          ),
          SizedBox(height: 16),
          Center(
            child: primaryButton(
              onPressed: () => {},
              text: 'Mulher',
            ),
          ),
          SizedBox(height: 16),
          Center(
            child: roboto(
              text:
                  'Informe seu gênero para que outros usuários possam encontrar você baseado nos parâmetros escolhidos.',
              size: 16,
              maxLines: 3,
              color: colors['light-grey'],
              align: TextAlign.center,
            ),
          ),
        ],
      );
  }
}
