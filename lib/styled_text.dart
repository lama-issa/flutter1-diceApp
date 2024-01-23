import 'package:flutter/material.dart';

// buliding custom widgets
class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key}); //this.text : received text as dynamic argument as "hello"
  final String text; // stored this.text in this text
  //final: because text only store this.text which not need to change we need store as recived from arg
  @override
  Widget build(context) {
    return  Text(
      text, //'hello'
      style:const TextStyle(
        color: Colors.white,
        fontSize: 28,
      ),
    );
  }
}
