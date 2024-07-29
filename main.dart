import 'package:success_app/forget.dart';
import 'package:success_app/loging.dart';
import 'package:flutter/material.dart';
import 'package:success_app/page1.dart';
import 'package:success_app/register.dart';
import 'dart:ui';

void main(){
  runApp (
      MaterialApp(
        title: 'SHOP MART',
        debugShowCheckedModeBanner: false,
      initialRoute: 'loging',
        routes: {
        'loging':(context)=>Myloging(),
          'register':(context)=>MyRegister(),
          'forget':(context)=>MyForget(),
          'page1':(context)=>Myloging1()
        },
      ));
}