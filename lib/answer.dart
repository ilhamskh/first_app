import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final VoidCallback pressed;
  final String answer;

  const Answer(this.pressed, this.answer);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      child:  ElevatedButton(
                  onPressed: pressed,
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))
                  )),
                  child: Text(answer),
                ),
    );
  }
}