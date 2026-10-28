import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:my_app/menu/history.dart';
import 'package:my_app/menu/home.dart';
import 'package:my_app/menu/profile.dart';

class MainMenuController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
  }

  List<Widget> listPages = [
    HomePage(),
    HistoryPage(),
    ProfilePage(),
  ];
}