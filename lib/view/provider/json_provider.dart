import 'package:bhagavat_gita/helper/json_data.dart';
import 'package:flutter/material.dart';

class JsonProvider with ChangeNotifier
{
  JsonHelper helper = JsonHelper();
  List<dynamic> chapter = [];

    Future<void> getData()  async {
      chapter = await helper.chapterData();
      notifyListeners();
    }

}