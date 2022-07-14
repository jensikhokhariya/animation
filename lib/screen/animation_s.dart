import 'package:flutter/material.dart';

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({Key? key}) : super(key: key);

  @override
  State<AnimationScreen> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        body: Container(
          alignment: Alignment.center,
          child: GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, 'detail');
            },
            child: Container(
              height: 250,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Column(
                children: [
                  Hero(
                    tag: 'bag',
                    child: Image.network(
                        "https://5.imimg.com/data5/EZ/OQ/OC/SELLER-67282481/ladies-fashion-bags-250x250.png"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Bag",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "300 Rs.",
                    style: TextStyle(color: Colors.black54, fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
