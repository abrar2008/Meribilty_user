import 'package:flutter/material.dart';
import 'package:meribilty/L10n/l10n.dart';

class LocaleProvider extends ChangeNotifier {
  Locale _locale = const Locale('hi');
  var _number = 1;

  Locale get locale => _locale;
  get number => _number;

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
}
