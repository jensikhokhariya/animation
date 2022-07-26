import 'package:flutter/material.dart';

class Clip_page extends StatefulWidget {
  const Clip_page({Key? key}) : super(key: key);

  @override
  State<Clip_page> createState() => _Clip_pageState();
}

class _Clip_pageState extends State<Clip_page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            alignment: Alignment.center,
            height: 500,
            width: 300,
            child: ClipPath(
              child: Image.network("https://fancycrave.com/wp-content/uploads/2019/12/Free-Nature-Pictures-min.jpg"),
              ),
            ),
          ),
        ),
      );
  }
}
/*class ClipperShape extends CustomClipper<Path>{
  @override
  getClip(Size size) {
    Paint d1 = Paint()
      ..color = Colors.black
      ..strokeWidth = 10
      ..strokeCap = StrokeCap.butt;

    Path path=Path();
    path.moveTo(0, size.height/2);
    path.lineTo(size.width/2, 0);
    path.lineTo(size.width, size.height/2);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }

}*/

class ClipperShape extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {

    Path path=Path();
    path.moveTo(0, size.height/2);
    path.lineTo(size.width/2, 0);
    path.lineTo(size.width, size.height/2);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }

}

