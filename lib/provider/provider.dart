import 'package:flutter/material.dart';
import 'package:meribilty/L10n/l10n.dart';
import 'package:meribilty/model/counter_model.dart';
import 'package:meribilty/model/meterial_model.dart';

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

var _selectvichele = <CounterModels>[   
    CounterModels(count: 0),
    CounterModels(count: 0),
    CounterModels(count: 0),
    CounterModels(count: 0),
    CounterModels(count: 0),

    CounterModels(count: 0),

    CounterModels(count: 0),

  ];



final _selectmertail = <MerterialModels>[   
   
   MerterialModels(title: "1 -3"),
   MerterialModels(title: "3 -5"),
    MerterialModels(title: "5 -7"),

  ];


  List<CounterModels> get loadCount => _counterList;
  List<CounterModels> get selectvichele => _selectvichele;
  List<MerterialModels> get selectmaterial => _selectmertail;



  Locale _locale = const Locale('hi');
  final _number = 1;

  Screen _screen = Screen.zero;
 bool _flag = true;

  Locale get locale => _locale;
  get number => _number;

  Screen get loadscren => _screen;

 void updatpressed() {
  _flag = !_flag ; 
    notifyListeners();
  }





  void setLocale(Locale locale) {
    if (!L10n.all.contains(locale)) return;

    _locale = locale;
    notifyListeners();
  }

  void clearLocale() {
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
  void increment(CounterModels counterModels) {
    _counterList = _counterList.map((e) {
      return e.id == counterModels.id
          ? e.copyWith(count: counterModels.count == 10 ? 10 :counterModels.count + 1)
          : e;
    }).toList();
    notifyListeners();
  }

  void invechechle(CounterModels counterModels) {
    _selectvichele = _selectvichele.map((e) {
      return e.id == counterModels.id
          ? e.copyWith(count: counterModels.count == 10 ? 10 :counterModels.count + 1)
          : e;
    }).toList();
    notifyListeners();
  }
   void decvehicle(CounterModels counterModels) {
    _selectvichele = _selectvichele.map((e) {
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
