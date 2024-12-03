import 'dart:convert';
import 'package:flutter/services.dart';

class JsonHelper
{

  Future<List<dynamic>> chapterData()  async {
    String jsonString = await rootBundle.loadString("assets/json/gita_chapters.json");
    List<dynamic> json = jsonDecode(jsonString);
    // var json = jsonDecode(jsonString);
    print(json);
    return json;
   }

}