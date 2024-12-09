import 'package:bhagavat_gita/helper/json_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';


class JsonProvider with ChangeNotifier
{
  JsonHelper helper = JsonHelper();
  List chapter = [];
  List shlokData = [];
  int index1 = 0;
  int length1 = 0;
  int languageIndex = 0;
  int shlokIndex = 0;


  void setShlokIndex(int int) {
    shlokIndex = int;
    notifyListeners();
  }

  void setLanguageIndex(int int) {
    languageIndex = int;
    notifyListeners();
  }

    Future<void> getData()  async {
      chapter = await helper.chapterData();
      notifyListeners();
    }
    Future<void> getShlokData()  async {
      shlokData = await helper.shlokData();
       notifyListeners();
    }

    void changeIndex(int index)
    {
      index1 = index;
      notifyListeners();
    }

    void lengthTotal(int length)
    {
      length1 = length;
      notifyListeners();

    }

  FlutterTts flutterTts = FlutterTts();

  void speakText(String shlokData) async {
    await flutterTts.speak("${shlokData}");

     notifyListeners();
  }

}