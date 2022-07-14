import 'package:animation/screen/animatealign.dart';
import 'package:animation/screen/animation_s.dart';
import 'package:animation/screen/detail_s.dart';
import 'package:animation/screen/opecity.dart';
import 'package:animation/screen/position.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'pos',
      routes: {
        '/':(context)=>AnimationScreen(),
        'detail':(context)=>Detaile_s(),
        'align':(context)=>AnimetedAlign_Screen(),
        'opecity':(context)=>Opecity_S(),
        'pos':(context)=>Position_S(),
      },
    ),
  );
}