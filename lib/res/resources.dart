import 'package:flutter/material.dart';
import 'package:test_drive/res/colors/app_colors.dart';
import 'package:test_drive/res/dimentions/app_dimensions.dart';
import 'package:test_drive/res/strings/indonesia_strings.dart';
import 'package:test_drive/res/strings/strings.dart';

class Resources{
  BuildContext _context;

  Resources(this._context);

  Strings get strings{
    Locale locale = Localizations.localeOf(_context);
    switch(locale.languageCode){
      case "ind":
        return IndonesiaStrings();
      default:
        return IndonesiaStrings();
    }
  }

  AppColors get color {
    return AppColors();
  }

  AppDimentions get dimension{
    return AppDimentions();
  }

  static Resources of(BuildContext context){
    return Resources(context);
  }
}