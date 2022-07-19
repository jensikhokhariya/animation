import 'package:flutter/material.dart';

class Custom_Screen extends StatefulWidget {
  const Custom_Screen({Key? key}) : super(key: key);

  @override
  State<Custom_Screen> createState() => _Custom_ScreenState();
}

class _Custom_ScreenState extends State<Custom_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            alignment: Alignment.center,
            color: Colors.lightBlue,
            height: 500,
            width: 300,
            child: CustomPaint(
              size: Size(500, 500),
              painter: MyPaint(),
            ),
          ),
        ),
      ),
    );
  }
}

class MyPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint d1 = Paint()
      ..color = Colors.black
      ..strokeWidth = 10
      ..strokeCap = StrokeCap.square;

    Offset start = Offset(0, size.height / 2);
    Offset end = Offset(size.width, size.height / 2);
    //Rect r1 = Rect.fromCenter(
        //center: Offset(size.width / 2, size.height / 2),
       // width: 200,
       // height: 200);
    //Rect r1 = Rect.fromCircle(
        //center: Offset(size.width / 2, size.height / 2),
       //radius: 100);
   //canvas.drawRect(r1, d1);

    canvas.drawLine(start, end, d1);
    canvas.drawLine(Offset(size.width/2, 0), Offset(size.width/2, size.height), d1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
