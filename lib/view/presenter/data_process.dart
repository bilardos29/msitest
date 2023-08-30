import 'package:flutter/cupertino.dart';

class DataProcess with ChangeNotifier {
  String _result = '';

  set result(String val) {
    _result = val;
    notifyListeners();
  }

  String get result => _result;

  void submitData(String text1, String text2) {
    /**
     * This function will be matching each character in text1,
     * into text2
     * */
    for (int i = 0; i < text1.length; i++) {
      if (!text1[i].contains(' ')) {
        if (!_result.contains(text1[i]) && text2.contains(text1[i])) {
          _result = _result + text1[i];
        }
      }
    }

    notifyListeners();
  }
}
