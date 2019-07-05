import 'package:comics_info/lang/ci_localizations.dart';
import 'package:flutter/material.dart';

class CiLocalizationsDelegate extends LocalizationsDelegate<CiLocalizations>{
  const CiLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['de','en'].contains(locale.languageCode);

  @override
  Future<CiLocalizations> load(Locale locale) => CiLocalizations.load(locale);

  @override
  bool shouldReload(LocalizationsDelegate<CiLocalizations> old) => false;
}