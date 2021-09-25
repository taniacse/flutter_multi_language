import 'package:flutter/material.dart';
import 'package:flutter_multilanguaqge_demo/localization/Language/language_bn.dart';
import 'package:flutter_multilanguaqge_demo/localization/Language/language_en.dart';
import 'package:flutter_multilanguaqge_demo/localization/Language/language_hi.dart';
import 'package:flutter_multilanguaqge_demo/localization/Language/languages.dart';

class AppLocalizationsDelegate extends LocalizationsDelegate<Languages> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      ['en', 'hi', 'bn'].contains(locale.languageCode);

  @override
  Future<Languages> load(Locale locale) => _load(locale);

  static Future<Languages> _load(Locale locale) async {
    print("Language Code ${locale.languageCode}");
    switch (locale.languageCode) {
      case 'en':
        {
          print("tttttttttttttttttttt english");
          return LanguageEn();
        }

      case 'hi':
        {
          print("tttttttttttttttttttt hindi");
          return LanguageHi();
        }

      case 'bn':
        {
          print("tttttttttttttttttttt");
          return LanguageBn();
        }

      default:
        {
          print("default tttttttttttttttttttt");
          return LanguageEn();
        }
    }
  }

  @override
  bool shouldReload(LocalizationsDelegate<Languages> old) => false;
}
