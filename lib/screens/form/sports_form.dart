import 'package:flutter/material.dart';

import '../../common/util.dart';

class SportsForm extends StatefulWidget {
  @override
  _SportsFormState createState() => _SportsFormState();
}

class _SportsFormState extends State<SportsForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: primaryButton(
              onPressed: () => {},
              text: 'Me exercito regularmente',
              textColor: Theme.of(context).backgroundColor,
              color: colors['inative'],
              elevation: 0,
            ),
          ),
          SizedBox(height: 16),
          Center(
            child: primaryButton(
              onPressed: () => {},
              text: 'Estou sedentário',
            ),
          ),
      ],
    );
  }
}
