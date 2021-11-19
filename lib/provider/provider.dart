import 'package:flutter/material.dart';
import 'package:meribilty/L10n/l10n.dart';
import 'package:meribilty/model/LoadOptionModels.dart';
import 'package:meribilty/model/loadoptionport.dart';
import 'package:meribilty/model/materialtype.dart';
import 'package:meribilty/model/meterial_model.dart';
import 'package:meribilty/model/selectvichele.dart';
import 'package:meribilty/model/unloadingoption.dart';
import 'package:meribilty/model/unloadportop.dart';

enum Screen {
  zero,
  one,
  two,
}



class LocaleProvider extends ChangeNotifier {


//locate  start
  Locale get locale => _locale;
 void setLocale(Locale locale) {
    if (!L10n.all.contains(locale)) return;

    _locale = locale;
    notifyListeners();
  }

  void clearLocale() {
    notifyListeners();
  }
  Locale _locale = const Locale('hi');
//locate  end



// loading optioon  start
  var _loadOption = <LoadOptionModels>[   
    LoadOptionModels(count: 0),
   LoadOptionModels(count: 0),
    LoadOptionModels(count: 0),
   LoadOptionModels(count: 0),
  ];
List<LoadOptionModels> get loadOption => _loadOption;
void decrement(LoadOptionModels counterModels) {
    _loadOption = _loadOption.map((e) {
      return e.id == counterModels.id
          ? e.copyWith(
              count: counterModels.count == 0 ? 0 : counterModels.count - 1)
          : e;
    }).toList();
    notifyListeners();
  }
 void increment(LoadOptionModels loadOption) {
    _loadOption = _loadOption.map((e) {
      return e.id == loadOption.id
          ? e.copyWith(count: loadOption.count == 10 ? 10 :loadOption.count + 1)
          : e;
    }).toList();
    notifyListeners();
  }

// loading option end

// loading optioon port start
  var _loadoptionport = <LoadOptionportM>[   
    LoadOptionportM(count: 0),
   LoadOptionportM(count: 0),
    LoadOptionportM(count: 0),
  LoadOptionportM(count: 0),
  ];

List<LoadOptionportM> get loadOptionport => _loadoptionport;

void decrementport(LoadOptionportM loadoptionportM) {
     _loadoptionport =  _loadoptionport.map((e) {
      return e.id == loadoptionportM.id
          ? e.copyWith(
              count: loadoptionportM.count == 0 ? 0 : loadoptionportM.count - 1)
          : e;
    }).toList();
    notifyListeners();
  }
 void incrementport(LoadOptionportM loadoptionportM) {
   _loadoptionport = _loadoptionport.map((e) {
      return e.id == loadoptionportM.id
          ? e.copyWith(count: loadoptionportM.count == 10 ? 10 :loadoptionportM.count + 1)
          : e;
    }).toList();
    notifyListeners();
  }

// loading option end

// Unloading Option  start
 var _unloadOption = <UnloadOptionModels>[   
    UnloadOptionModels(count: 0),
   UnloadOptionModels(count: 0),
    UnloadOptionModels(count: 0),
   UnloadOptionModels(count: 0),
  ];
List<UnloadOptionModels> get unloadOption => _unloadOption;
void decrementunload(UnloadOptionModels unloadOption) {
    _unloadOption = _unloadOption.map((e) {
      return e.id == unloadOption.id
          ? e.copyWith(
              count: unloadOption.count == 0 ? 0 : unloadOption.count - 1)
          : e;
    }).toList();
    notifyListeners();
  }
void incrementunload(UnloadOptionModels unloadOption) {
    _unloadOption = _unloadOption.map((e) {
      return e.id == unloadOption.id
          ? e.copyWith(count: unloadOption.count == 10 ? 10 :unloadOption.count + 1)
          : e;
    }).toList();
    notifyListeners();
  }

// Unloading Option  End


// Unloading Option port  start
 var _unloadportop = <UnloadportModels>[   
    UnloadportModels(count: 0),
   UnloadportModels(count: 0),
   UnloadportModels(count: 0),
   UnloadportModels(count: 0),
  ];
List<UnloadportModels> get unloadport => _unloadportop;
void decunloadport(UnloadportModels unloadportop) {
    _unloadportop = _unloadportop.map((e) {
      return e.id == unloadportop.id
          ? e.copyWith(
              count: unloadportop.count == 0 ? 0 : unloadportop.count - 1)
          : e;
    }).toList();
    notifyListeners();
  }
void increloadport(UnloadportModels unloadportOp) {
    _unloadportop = _unloadportop.map((e) {
      return e.id == unloadportOp.id
          ? e.copyWith(count: unloadportOp.count == 10 ? 10 :unloadportOp.count + 1)
          : e;
    }).toList();
    notifyListeners();
  }

// Unloading Option port End



// Select vichele start

var _selectvichele = <SelectvicheleModels>[   
    SelectvicheleModels(count: 0),
    SelectvicheleModels(count: 0),
    SelectvicheleModels(count: 0),
    SelectvicheleModels(count: 0),
    SelectvicheleModels(count: 0),
    SelectvicheleModels(count: 0),
    SelectvicheleModels(count: 0),

  ];
 List<SelectvicheleModels> get selectvichele => _selectvichele;
void invechechle(SelectvicheleModels counterModels) {
    _selectvichele = _selectvichele.map((e) {
      return e.id == counterModels.id
          ? e.copyWith(count: counterModels.count == 10 ? 10 :counterModels.count + 1)
          : e;
    }).toList();
    notifyListeners();
  }
   void decvehicle(SelectvicheleModels counterModels) {
    _selectvichele = _selectvichele.map((e) {
      return e.id == counterModels.id
          ? e.copyWith(
              count: counterModels.count == 0 ? 0 : counterModels.count - 1)
          : e;
    }).toList();
    notifyListeners();
  }

  // Select vichele vichels end 

  
//  Select Materail start
final _selectmertail = <MerterialModels>[   
   
   MerterialModels(title: "1 -3"),
   MerterialModels(title: "3 -5"),
    MerterialModels(title: "5 -7"),

  ];
  List<MerterialModels> get selectmaterial => _selectmertail;

//  Select Materail end


//  Select Materailtype start

final _selectmatype = <Merterialtype>[   
   
  Merterialtype(title: 'Electrics'),
  Merterialtype(title: 'Cement'),
  Merterialtype(title: 'Electronic'),

  ];
  List<Merterialtype> get selectmatype => _selectmatype;

//  Select Materailtype end 



  final _number = 1;

  Screen _screen = Screen.zero;
 bool _flag = true;


  get number => _number;

  Screen get loadscren => _screen;

 void updatpressed() {
  _flag = !_flag ; 
    notifyListeners();
  }


  void changeScreen(Screen screen) {
    _screen = screen;
    notifyListeners();
  }
}
