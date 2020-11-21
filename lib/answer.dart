import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHendle;
  final String textOptions;
  Answer({this.selectHendle, this.textOptions});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        elevation: 12,
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: selectHendle,
        child: Text(textOptions),
      ),
    );
  }
}
