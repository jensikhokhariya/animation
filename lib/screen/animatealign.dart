import 'package:flutter/material.dart';

class AnimetedAlign_Screen extends StatefulWidget {
  const AnimetedAlign_Screen({Key? key}) : super(key: key);

  @override
  State<AnimetedAlign_Screen> createState() => _AnimetedAlign_ScreenState();
}

class _AnimetedAlign_ScreenState extends State<AnimetedAlign_Screen> {
  bool click = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          shadowColor: Colors.deepPurpleAccent,
        ),
        body: Container(
          child: GestureDetector(
            onTap: () {
              setState(() {
                click = !click;
              });
            },
            child: AnimatedAlign(
              alignment: click ? Alignment.bottomRight : Alignment.topLeft,
              duration: Duration(seconds: 2),
              child : Container(height: 100,width: 100,color: Colors.deepPurple,),
            ),
          ),
        ),
      ),
    );
  }
}
