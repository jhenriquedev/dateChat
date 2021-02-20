import 'package:flutter/material.dart';

import '../../common/util.dart';

class AlcoholForm extends StatefulWidget {
  @override
  _AlcoholFormState createState() => _AlcoholFormState();
}

class _AlcoholFormState extends State<AlcoholForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Center(
            child: primaryButton(
              onPressed: () => {},
              text: 'Não bebo',
              textColor: Theme.of(context).backgroundColor,
              color: colors['inative'],
              elevation: 0,
            ),
          ),
          SizedBox(height: 16),
          Center(
            child: primaryButton(
              onPressed: () => {},
              text: 'Bebo moderadamente',
            ),
          ),
        ],
      );
  }
}
