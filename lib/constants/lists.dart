import 'package:flutter/material.dart';

// Touristic Cities List
List<String> touristicCitiesList = [];

// Drawer Items List
List<Map<String, dynamic>> dashboardDrawerItemsList = [
  {'category_index': 1, 'icon': Icons.home, 'title': 'Home'},
  {
    'category_index': 1,
    'icon': Icons.currency_exchange_rounded,
    'title': 'Exchange Rates'
  },
  {
    'category_index': 1,
    'icon': Icons.wb_sunny_rounded,
    'title': 'Weather Forecast'
  },
  {
    'category_index': 1,
    'icon': Icons.location_on_rounded,
    'title': 'My Location'
  },
  {'category_index': 1, 'icon': Icons.language_rounded, 'title': 'Language'},
  {'category_index': 1, 'icon': Icons.book_rounded, 'title': 'References'},
];
List<Map<String, dynamic>> communicationDrawerItemsList = [
  {
    'category_index': 2,
    'icon': Icons.contact_mail_rounded,
    'title': 'Contact Us'
  },
  {'category_index': 2, 'icon': Icons.share_rounded, 'title': 'Share'},
];
List<Map<String, dynamic>> appDrawerItemsList = [
  {'category_index': 3, 'icon': Icons.exit_to_app_rounded, 'title': 'Exit'},
];

// Touristic City List
List touristicCityAboutTextItemsList = [];
List touristicCityAboutGallaryItemsList = [];
List touristicCityAboutNotablePeopleItemsList = [];
List touristicCityAboutDistrictItemsList = [];
List touristicCityPlaceItemsList = [];
List touristicCityIndustryItemsList = [];
List touristicCityFestivalsItemsList = [];
List touristicCityLocalFoodsItemsList = [];

// Languages List
List<Map<String, dynamic>> languageItemsList = [
  {
    'image': 'assets/flags/flag_afg.png',
    'name': 'Dari',
  },
  {
    'image': 'assets/flags/flag_afg.png',
    'name': 'Pashto',
  },
  {
    'image': 'assets/flags/flag_usa.png',
    'name': 'English',
  },
];

// References List
List<Map<String, dynamic>> referencesItemsList = [
  {
    'title': 'Google Maps',
    'sub_title':
        'Google Maps is a web service that provides detailed information about geographical regions and sites worldwide. In addition to conventional road maps, Google Maps offers aerial and satellite views of many locations.',
  },
];
