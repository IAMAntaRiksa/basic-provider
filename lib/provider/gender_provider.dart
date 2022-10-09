import 'package:flutter/material.dart';

class GenderProvider with ChangeNotifier {
  bool? _isMale = true;

  bool? get isMale => _isMale;

  set isMale(bool? newValue) {
    _isMale = newValue;
    notifyListeners();
  }

  get color => (_isMale ?? true) ? Colors.blue : Colors.pink;

  get maleColor => (_isMale ?? true) ? Colors.blue : Colors.grey;
  get femaleColor => (_isMale ?? true) ? Colors.grey : Colors.pink;
}
