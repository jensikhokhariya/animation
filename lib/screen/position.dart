import 'package:flutter/material.dart';

class Position_S extends StatefulWidget {
  const Position_S({Key? key}) : super(key: key);

  @override
  State<Position_S> createState() => _Position_SState();
}

class _Position_SState extends State<Position_S> {
  bool click = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: GestureDetector(
            onTap: () {
              setState((){
                click = !click;
              });
            },
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  child: Container(
                    height: 100,
                    width: 200,
                    color: Colors.blue.shade300,
                    child: Text("XYZ"),
                    alignment: Alignment.center,
                  ),
                ),
                AnimatedPositioned(
                  duration: Duration(seconds: 1),
                  bottom: click ? 100 : 0,
                  child: Container(
                    height: 100,
                    width: 200,
                    color: Colors.white,
                    alignment: Alignment.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
