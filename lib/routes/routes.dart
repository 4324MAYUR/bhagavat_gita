import 'package:bhagavat_gita/view/home/screen/home_screen.dart';
import 'package:flutter/material.dart';

class AllRoutes
{
  static String home ="/";

  static Map<String,Widget Function(BuildContext)> appRoutes =
  {
    "/" : (context) => const HomeScreen(),
  };

}