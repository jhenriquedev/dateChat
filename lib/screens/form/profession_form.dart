import 'package:flutter/material.dart';

import '../../common/util.dart';

class ProfessionForm extends StatefulWidget {
  @override
  _ProfessionFormState createState() => _ProfessionFormState();
}

class _ProfessionFormState extends State<ProfessionForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        inputPrimary(
          //marginTop: 56,
          inputType: TextInputType.text,
          autoCorrect: true,
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
