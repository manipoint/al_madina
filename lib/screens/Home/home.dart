import 'package:al_madina/screens/modes/landscape.dart';
import 'package:al_madina/screens/modes/potrait.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return PortraitMode();
        } else {
          return LandscapeMode();
        }
      },
    );
  }
}
