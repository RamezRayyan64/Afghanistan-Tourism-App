import 'package:flutter/material.dart';

// Touristic Cities List
List<String> touristicCitiesList = [
  'Herat',
  'Ghazni',
  'Kabul',
];

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
List<Map<String, dynamic>> touristicCityPlaceItemsList = [
  {
    'place_image_url': 'assets/cities/herat.jpg',
    'place_name': 'Great Mosque',
    'place_location': 'Sultan Ghiyasuddin Ghori',
    'place_star_rating_description': 'Excellent',
  },
];
List<Map<String, dynamic>> touristicCityIndustryItemsList = [
  {
    'image_url': 'assets/cities/herat.jpg',
    'name': 'Afghan Fayzi Factory',
    'description': 'Production of more than 80 types of colors.',
  },
  {
    'image_url': 'assets/cities/herat.jpg',
    'name': 'Afghan Fayzi Factory',
    'description': 'Production of more than 80 types of colors.',
  },
  {
    'image_url': 'assets/cities/herat.jpg',
    'name': 'Afghan Fayzi Factory',
    'description': 'Production of more than 80 types of colors.',
  },
];
List<Map<String, dynamic>> touristicCityFestivalsItemsList = [
  {
    'image_url': 'assets/cities/herat.jpg',
    'name': 'Afghan Fayzi Factory',
    'description': 'Production of more than 80 types of colors.',
  },
  {
    'image_url': 'assets/cities/herat.jpg',
    'name': 'Afghan Fayzi Factory',
    'description': 'Production of more than 80 types of colors.',
  },
];
List<Map<String, dynamic>> touristicCityLocalFoodsItemsList = [
  {
    'image_url': 'assets/cities/herat.jpg',
    'name': 'Afghan Fayzi Factory',
    'description': 'Production of more than 80 types of colors.',
  },
];

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
