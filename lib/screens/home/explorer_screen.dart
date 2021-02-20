import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';


import '../../common/explorer_list_item.dart';

class ExplorerScreen extends StatefulWidget {
  @override
  _ExplorerScreenState createState() => _ExplorerScreenState();
}

class _ExplorerScreenState extends State<ExplorerScreen> {
  final _cards = [
    ExplorerListItem(
      thumb: 'profile.jpeg',
      name: 'Beatriz',
      age: '32',
      height: '1.73',
      profession: 'Advogada',
    ),
    ExplorerListItem(
      thumb: 'foto06.jpeg',
      name: 'Beatriz',
      age: '32',
      height: '1.73',
      profession: 'Advogada',
    ),
    ExplorerListItem(
      thumb: 'foto01.jpeg',
      name: 'Beatriz',
      age: '32',
      height: '1.73',
      profession: 'Advogada',
    ),
    ExplorerListItem(
      thumb: 'foto02.jpeg',
      name: 'Beatriz',
      age: '32',
      height: '1.73',
      profession: 'Advogada',
    ),
    ExplorerListItem(
      thumb: 'foto03.jpeg',
      name: 'Beatriz',
      age: '32',
      height: '1.73',
      profession: 'Advogada',
    ),
    ExplorerListItem(
      thumb: 'foto04.jpeg',
      name: 'Beatriz',
      age: '32',
      height: '1.73',
      profession: 'Advogada',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Swiper(
      scrollDirection: Axis.vertical,
      //loop: false,
      itemCount: _cards.length,
      itemBuilder: (context, index) {
        return _cards[index];
      },
    );
  }
}