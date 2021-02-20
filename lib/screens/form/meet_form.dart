import 'package:flutter/material.dart';

import '../../common/util.dart';

class MeetForm extends StatefulWidget {
  @override
  _MeetFormState createState() => _MeetFormState();
}

class _MeetFormState extends State<MeetForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Center(
            child: primaryButton(
              onPressed: () => {},
              text: 'Homens',
              textColor: Theme.of(context).backgroundColor,
              color: colors['inative'],
              elevation: 0,
            ),
          ),
          SizedBox(height: 16),
          Center(
            child: primaryButton(
              onPressed: () => {},
              text: 'Mulheres',
            ),
          ),
          SizedBox(height: 16),
          Center(
            child: roboto(
              text:
                  'Informe quem você gostaria de conhecer.',
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
