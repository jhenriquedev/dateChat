import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../../common/util.dart';

import '../login/intro_screen.dart';
import '../form/profile_form_screen.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          snap: false,
          floating: false,
          automaticallyImplyLeading: false,
          //brightness: Brightness.dark,
          expandedHeight: MediaQuery.of(context).size.height * 65 / 100,
          backgroundColor: Theme.of(context).unselectedWidgetColor,
          elevation: 0,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: false,
            titlePadding: EdgeInsets.zero,
            title: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Theme.of(context).unselectedWidgetColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: Container(
                //height: 30,
                margin: EdgeInsets.fromLTRB(8, 4, 16, 16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 3,
                      width: 30,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        elevation: 2,
                        onPressed: null,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        roboto(
                          text: 'Meu nome',
                          size: 24,
                          weight: FontWeight.w600,
                          color: Theme.of(context).backgroundColor,
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              roboto(
                                text: '25',
                                size: 12,
                                weight: FontWeight.bold,
                                color: Theme.of(context).primaryColor,
                              ),
                              roboto(
                                text: 'Chats',
                                size: 12,
                                color: Colors.grey[400],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            background: Image.asset(
              'profile.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          actions: [
            Container(
              margin: EdgeInsets.only(right: 16),
              child: FloatingActionButton.extended(
                backgroundColor: Theme.of(context).primaryColor,
                onPressed: () => {},
                icon: Icon(FeatherIcons.camera, size: 16),
                label: roboto(
                  text: 'Editar',
                  size: 16,
                  weight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
            ),
          ],
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            ListTile.divideTiles(
                context: context,
                color: Colors.grey[300],
                tiles: [
                  ListTile(
                    title: Text('Gênero'),
                    subtitle: Text('Masculino'),
                    trailing: Icon(FeatherIcons.chevronRight),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ProfileFormScreen(
                          form: 'Qual é o seu gênero?',
                        ),
                      ),
                    ),
                  ),


                  ListTile(
                    title: Text('Idade'),
                    subtitle: Text('25'),
                    trailing: Icon(FeatherIcons.chevronRight),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ProfileFormScreen(
                          form: 'Quantos anos você tem?',
                        ),
                      ),
                    ),
                  ),


                  ListTile(
                    title: Text('Altura'),
                    subtitle: Text('1,73'),
                    trailing: Icon(FeatherIcons.chevronRight),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ProfileFormScreen(
                          form: 'Qual a sua altura?',
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text('Profissão'),
                    subtitle: Text('Advogado'),
                    trailing: Icon(FeatherIcons.chevronRight),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ProfileFormScreen(
                          form: 'Qual a sua profissão?',
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    title: roboto(
                      text: 'Interesses Pessoais',
                      size: 16,
                      weight: FontWeight.w600,
                      color: Theme.of(context).backgroundColor,
                    ),
                  ),
                  ListTile(
                    title: Text('Quero conhecer'),
                    subtitle: Text('Mulheres'),
                    trailing: Icon(FeatherIcons.chevronRight),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ProfileFormScreen(
                          form: 'Quero conhecer...',
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text('Cigarro'),
                    subtitle: Text('Não fumante'),
                    trailing: Icon(FeatherIcons.chevronRight),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ProfileFormScreen(
                          form: 'Sua opinião sobre cigarro?',
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text('Bebidas Alcóolicas'),
                    subtitle: Text('Bebe moderadamente'),
                    trailing: Icon(FeatherIcons.chevronRight),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ProfileFormScreen(
                          form: 'Sua opinião sobre bebidas alcóolicas?',
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text('Esporte'),
                    subtitle: Text('Não informado'),
                    trailing: Icon(FeatherIcons.chevronRight),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ProfileFormScreen(
                          form: 'Como você se considera nos esportes?',
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    title: roboto(
                      text: 'Dados da Conta',
                      size: 16,
                      weight: FontWeight.w600,
                      color: Theme.of(context).backgroundColor,
                    ),
                  ),
                  ListTile(
                    title: Text('E-mail'),
                    subtitle: Text('pessoa@email.com'),
                    trailing: Icon(FeatherIcons.chevronRight),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ProfileFormScreen(
                          form: 'Qual é o seu e-mail?',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.grey[400],
                    height: 40,
                  ),
                  Container(
                    height: 44,
                    child: RaisedButton(
                      onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => IntroScreen(),
                      ),
                    ),
                      elevation: 0,
                      color: Theme.of(context).unselectedWidgetColor,
                      child: Center(
                        child: roboto(
                          text: 'Sair',
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.grey[400],
                    height: 128,
                    child: Center(
                      child: Column(
                        children: [
                          roboto(
                              text: 'DateChat',
                              color: Theme.of(context).unselectedWidgetColor,
                              weight: FontWeight.bold,
                              size: 32),
                          roboto(
                              text: 'DateChat 0.1',
                              color: Theme.of(context).unselectedWidgetColor,
                              weight: FontWeight.w600,
                              size: 14),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 44,
                    child: RaisedButton(
                      onPressed: () => {},
                      elevation: 0,
                      color: Theme.of(context).unselectedWidgetColor,
                      child: Center(
                        child: roboto(
                          text: 'Desativar a minha conta',
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.grey[400],
                    height: 40,
                  ),
                ]).toList(),
          ),
        ),
      ],
    );
  }
}

/*
TextFormField(
                        keyboardType: TextInputType.number,
                        autocorrect: false,
                        maxLength: 3,
                        style: textStyle(
                          height: 1,
                          color: Theme.of(context).backgroundColor,
                        ),
                        decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          counterStyle: textStyle(
                            color: Theme.of(context).unselectedWidgetColor,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            
                          ),
                        ),
                      ), 
*/
