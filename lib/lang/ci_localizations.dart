import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CiLocalizations {
  static Future<CiLocalizations> load(Locale locale) async {
    final String localeName = 
      locale.countryCode == null || locale.countryCode.isEmpty
      ? locale.languageCode
      : locale.toString();

    final String canonicalLocaleName = Intl.canonicalizedLocale(localeName);

    // await initializeMessages(canonicalLocaleName);

    Intl.defaultLocale = canonicalLocaleName;

    return CiLocalizations();
  }

  static CiLocalizations of(BuildContext context) => Localizations.of(context, CiLocalizations);

  // Translations goes here
  
  String get appTitle => Intl.message(
    'Comic Listing by "Comic Vine"',
    name: 'appTitle',
    desc: 'the Name of the App'
  );

}