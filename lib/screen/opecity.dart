import 'package:flutter/material.dart';

class Opecity_S extends StatefulWidget {
  const Opecity_S({Key? key}) : super(key: key);

  @override
  State<Opecity_S> createState() => _Opecity_SState();
}

class _Opecity_SState extends State<Opecity_S> {
  double hw=100;
  double radius=0;
  Color c1=Colors.deepPurple;
  double tpadding=10;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          shadowColor: Colors.blueAccent,
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                child: GestureDetector(
                  onTap: () {
                    setState((){
                      if(hw==100){
                        hw=200;
                        radius=200;
                        c1=Colors.indigoAccent;
                        tpadding=500;
                      }
                      else{
                        hw=100;
                        radius=0;
                        c1=Colors.deepPurple;
                        tpadding=0;
                      }
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 2),
                    curve: Curves.bounceOut,
                    height: hw,
                    width: hw,
                    margin: EdgeInsets.only(top: tpadding),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(radius),
                      color: c1,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
