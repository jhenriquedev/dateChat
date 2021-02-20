import 'package:flutter/material.dart';

import '../../common/util.dart';

class CigaretteForm extends StatefulWidget {
  @override
  _CigaretteFormState createState() => _CigaretteFormState();
}

class _CigaretteFormState extends State<CigaretteForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Center(
            child: primaryButton(
              onPressed: () => {},
              text: 'Sou fumante',
              textColor: Theme.of(context).backgroundColor,
              color: colors['inative'],
              elevation: 0,
            ),
          ),
          SizedBox(height: 16),
          Center(
            child: primaryButton(
              onPressed: () => {},
              text: 'Não fumante',
            ),
          ),
        ],
      );
  }
}
