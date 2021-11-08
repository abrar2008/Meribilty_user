import 'package:flutter/material.dart';
import 'package:meribilty/L10n/l10n.dart';

enum Screen {
  zero,
  one,
  two,
}

class LocaleProvider extends ChangeNotifier {
  Locale _locale = const Locale('hi');
  var _number = 1;

  Screen _screen = Screen.zero;
  Locale get locale => _locale;
  get number => _number;

  Screen get loadscren => _screen;

  void setLocale(Locale locale) {
    if (!L10n.all.contains(locale)) return;

    _locale = locale;
    notifyListeners();
  }

  void clearLocale() {
    notifyListeners();
  }

  increasement() {
    _number = _number + 1;
    notifyListeners();
    return number;
  }

  descrese() {
    _number = _number + -1;
    notifyListeners();
    return number;
  }

  void changeScreen(Screen screen) {
    _screen = screen;
    notifyListeners();
  }
}
