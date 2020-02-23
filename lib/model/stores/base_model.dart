

import 'package:barlarlar/ui/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';


part 'base_model.g.dart';

// Needs a constructor
class CustomColor extends Color {
  CustomColor(int value) : super(value);
}

class BaseModel = BaseModelBase with _$BaseModel;

abstract class BaseModelBase with Store {
  @observable
  Map<String,String> lng;

  @observable
  String currentLng;

  @observable
  String currentTheme;

  @observable
  bool isLoaded;

  @action
  Future<void> init () async {
    await this.initTheme(); 
    await this.initLanguage();
    await this.initLoading();
  }

  @action
  Future<void> initTheme()async{
    final prefs = await SharedPreferences.getInstance();
    currentTheme = prefs.getString('currentTheme') ?? Themes.themes.keys.first;
  }

  @action
   Future<void> setTheme(String value)async{
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('currentTheme', value);
    currentTheme = value;
  }

   @action
   Future<void> initLoading()async{
    final prefs = await SharedPreferences.getInstance();
    isLoaded = prefs.getBool('isLoaded') ?? false;
   }

  @action
   Future<void> setLoading(bool value)async{
    final prefs = await SharedPreferences.getInstance();
    isLoaded = true;
    prefs.setBool('isLoaded', value);
  }

   @action
   Future<void> initLanguage()async{
    final prefs = await SharedPreferences.getInstance();
    currentLng = prefs.getString('currentLng') ?? 'English';
   }

  @action
   Future<void> setLanguage(String value)async{
    final prefs = await SharedPreferences.getInstance();
    currentLng = value;
    prefs.setString('currentLng', value);
  }
}
