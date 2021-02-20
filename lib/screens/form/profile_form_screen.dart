import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../../common/util.dart';

import '../home/home_screen.dart';

import 'gender_form.dart';
import 'meet_form.dart';
import 'age_form.dart';
import 'height_form.dart';
import 'profession_form.dart';
import 'sports_form.dart';
import 'email_form.dart';
import 'alcohol_form.dart';
import 'cigarette_form.dart';

class ProfileFormScreen extends StatefulWidget {
  final String form;

  ProfileFormScreen({
    this.form,
  });

  @override
  _ProfileFormScreenState createState() => _ProfileFormScreenState();
}

class _ProfileFormScreenState extends State<ProfileFormScreen> {
  String _form;

  Map<String, Widget> _forms = {
    'Qual é o seu gênero?' : GenderForm(),
    'Quero conhecer...' : MeetForm(),
    'Quantos anos você tem?': AgeForm(),
    'Qual a sua altura?': HeightForm(),
    'Qual a sua profissão?': ProfessionForm(),
    'Sua opinião sobre cigarro?': CigaretteForm(),
    'Sua opinião sobre bebidas alcóolicas?': AlcoholForm(),
    'Como você se considera nos esportes?': SportsForm(),
    'Qual é o seu e-mail?': EmailForm(),
  };

  @override
  void initState() {
    super.initState();

    if (widget.form != null) {
      _form = widget.form;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.transparent,
        toolbarHeight: 0,
        automaticallyImplyLeading: false,
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 64,
            horizontal: 32,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.centerLeft,
                child: FloatingActionButton(
                  mini: true,
                  elevation: 2,
                  backgroundColor: Theme.of(context).primaryColor,
                  child: Icon(FeatherIcons.chevronLeft),
                  onPressed: () => Navigator.pop(
                    context,
                    MaterialPageRoute(
                      builder: (_) => HomeScreen(
                        screen: 'Perfil',
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 56),
                child: roboto(
                  text: _form,
                  size: 36,
                  height: 1.2,
                  weight: FontWeight.bold,
                  color: Theme.of(context).backgroundColor,
                  align: TextAlign.center,
                  maxLines: 3,
                ),
              ),
              
              //_forms[_form],

              Form(
                child: _forms[_form],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
