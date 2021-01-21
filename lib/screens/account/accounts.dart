import 'package:al_madina/components/my_text.dart';
import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Center(child: MyText(text: "Account", size: 28,color: Colors.blueAccent,)),
    );
  }
}