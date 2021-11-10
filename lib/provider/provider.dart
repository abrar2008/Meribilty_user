import 'package:flutter/material.dart';
import 'package:meribilty/L10n/l10n.dart';
import 'package:meribilty/model/counter_model.dart';

enum Screen {
  zero,
  one,
  two,
}

class LocaleProvider extends ChangeNotifier {
  var _counterList = <CounterModels>[
    CounterModels(count: 0),
    CounterModels(count: 0),
    CounterModels(count: 0),
    CounterModels(count: 0),
  ];

  List<CounterModels> get loadCount => _counterList;
  Locale _locale = const Locale('hi');
  final _number = 1;

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

  void increment(CounterModels counterModels) {
    _counterList = _counterList.map((e) {
      return e.id == counterModels.id
          ? e.copyWith(count: counterModels.count + 1)
          : e;
    }).toList();
    notifyListeners();
  }

  void decrement(CounterModels counterModels) {
    _counterList = _counterList.map((e) {
      return e.id == counterModels.id
          ? e.copyWith(
              count: counterModels.count == 0 ? 0 : counterModels.count - 1)
          : e;
    }).toList();
    notifyListeners();
  }

  void changeScreen(Screen screen) {
    _screen = screen;
    notifyListeners();
  }
}
