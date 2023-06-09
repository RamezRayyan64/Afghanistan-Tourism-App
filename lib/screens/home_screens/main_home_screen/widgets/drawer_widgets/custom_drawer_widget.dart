import 'package:afghanistan_tourism_app/constants/lists.dart';
import 'package:afghanistan_tourism_app/screens/home_screens/main_home_screen/widgets/drawer_widgets/drawer_category_items_list_widget.dart';
import 'package:afghanistan_tourism_app/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({
    super.key,
    required this.onTap,
    required this.currentDrawerIndex,
  });

  final Function(int) onTap;
  final int currentDrawerIndex;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Text(
                  LocaleKeys.app_name.tr(),
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              DrawerCategoryItemsListWidget(
                onTap: onTap,
                currentDrawerIndex: currentDrawerIndex,
                flagIndex: 1,
                title: 'Dashboard',
                itemsList: dashboardDrawerItemsList,
              ),
              DrawerCategoryItemsListWidget(
                onTap: onTap,
                currentDrawerIndex: currentDrawerIndex,
                flagIndex: 2,
                title: 'Communication',
                itemsList: communicationDrawerItemsList,
              ),
              DrawerCategoryItemsListWidget(
                onTap: onTap,
                currentDrawerIndex: currentDrawerIndex,
                flagIndex: 3,
                title: 'App',
                itemsList: appDrawerItemsList,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
