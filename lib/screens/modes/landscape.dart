import 'package:al_madina/components/my_text.dart';
import 'package:flutter/material.dart';

class LandscapeMode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Center(child: MyText( text: "LandScape",color: Colors.red,)),
    );
  }
}