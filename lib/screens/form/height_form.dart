import 'package:flutter/material.dart';

import '../../common/util.dart';

class HeightForm extends StatefulWidget {
  @override
  _HeightFormState createState() => _HeightFormState();
}

class _HeightFormState extends State<HeightForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        inputPrimary(
          //marginTop: 56,
          inputType: TextInputType.numberWithOptions(decimal: true),
          autoCorrect: false,
          length: 3,
          label: '',
          color: colors['inative'],
          textColor: colors['light-grey'],
          textCountColor: colors['white'],
          hasBorder: false,
          textAlign: TextAlign.center,
          inputBorder: false,
          validator: (input) =>
              input.trim().isEmpty ? 'Informe um e-mail válido.' : null,
        ),

        SizedBox(height: 16),
        Center(
          child: primaryButton(
            onPressed: () => {},
            text: 'Validar',
          ),
        ),
      ],
    );
  }
}
