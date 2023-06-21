// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader {
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String, dynamic> en = {
    "app_name": "Afghanistan Tourism App",
    "welcome_splash": "Welcome To Afghanistan Tourism App",
    "travel_now": "Travel Now",
    "province_name": "{} Province",
    "about": "About",
    "places": "Places",
    "industries": "Industries",
    "festivals": "Festivals",
    "local_foods": "Local Foods"
  };
  static const Map<String, dynamic> fa = {
    "app_name": "برنامه گردشگری افغانستان",
    "welcome_splash": "به برنامه گردشگری افغانستان خوش آمدید",
    "travel_now": "اکنون سفر کنید",
    "province_name": "ولایت {}",
    "about": "درباره",
    "places": "مکان ها",
    "industries": "صنایع",
    "festivals": "جشنواره ها",
    "local_foods": "غذا های محلی"
  };
  static const Map<String, dynamic> ps = {
    "app_name": "د افغانستان سیاحت ایپ",
    "welcome_splash": "د افغانستان سیاحت ایپ ته ښه راغلاست",
    "travel_now": "اوس سفر وکړئ",
    "province_name": "د {} ولایت",
    "about": "په اړه",
    "places": "ځایونه",
    "industries": "صنعت",
    "festivals": "فستیوالونه",
    "local_foods": "محلي خواړه"
  };
  static const Map<String, Map<String, dynamic>> mapLocales = {
    "en": en,
    "fa": fa,
    "ps": ps
  };
}
