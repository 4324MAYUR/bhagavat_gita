import 'package:bhagavat_gita/view/detail/screen/detail_screen.dart';
import 'package:bhagavat_gita/view/home/screen/home_screen.dart';
import 'package:bhagavat_gita/view/shlok/screen/shlok_screen.dart';
import 'package:flutter/material.dart';

class AllRoutes
{
  static String home ="/";
  static String detail ="detail";
  static String shlokPage ="shlokPage";

  static Map<String,Widget Function(BuildContext)> appRoutes =
  {
    "/" : (context) => const HomeScreen(),
    "detail" : (context) => const DetailScreen(),
    "shlokPage" : (context) => const ShlokScreen(),
  };

}