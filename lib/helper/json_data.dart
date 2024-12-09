import 'dart:convert';
import 'package:flutter/services.dart';

class JsonHelper
{

  Future<dynamic> chapterData()  async {
    String jsonString =
    await rootBundle.loadString("assets/json/gita_chapters.json");
     var json = jsonDecode(jsonString);
     return json;
   }
   Future<dynamic> shlokData()  async {
    String jsonString =
    await rootBundle.loadString("assets/json/gita_shlok.json");
     var json = jsonDecode(jsonString);
     return json;
   }

}