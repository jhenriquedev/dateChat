import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import 'util.dart';

// ignore: must_be_immutable
class ExplorerListItem extends StatelessWidget {
  String thumb;
  String name;
  String age;
  String height;
  String profession;

  ExplorerListItem({
    this.thumb,
    this.name,
    this.age,
    this.height,
    this.profession,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height - 80,
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        image: DecorationImage(
          image: AssetImage(thumb),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Spacer(),
          Container(
            margin: EdgeInsets.fromLTRB(16, 0, 0, 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    roboto(
                      text: '$name, $age',
                      size: 14,
                      weight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                    SizedBox(height: 4),
                    roboto(
                      text: profession,
                      size: 14,
                      letterSpacing: 1,
                    ),
                    SizedBox(height: 4),
                    roboto(
                      text: height,
                      size: 14,
                      letterSpacing: 1,
                    ),
                  ],
                ),
                MaterialButton(
                  onPressed: () => {},
                  color: Theme.of(context).primaryColor,
                  elevation: 2,
                  textColor: Colors.white,
                  child: Icon(
                    FeatherIcons.heart,
                    size: 24,
                  ),
                  padding: EdgeInsets.all(16),
                  shape: CircleBorder(),
                ),
                /*
                FloatingActionButton(
                  child: Icon(FeatherIcons.heart),
                  backgroundColor: Theme.of(context).primaryColor,
                  onPressed: () => {},
                ),
                */
              ],
            ),
          ),
        ],
      ),
    );
  }
}
