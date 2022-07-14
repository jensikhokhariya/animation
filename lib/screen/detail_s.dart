import 'package:flutter/material.dart';

class Detaile_s extends StatefulWidget {
  const Detaile_s({Key? key}) : super(key: key);

  @override
  State<Detaile_s> createState() => _Detaile_sState();
}

class _Detaile_sState extends State<Detaile_s> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        body: Container(
          alignment: Alignment.center,
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
    );
  }
}
