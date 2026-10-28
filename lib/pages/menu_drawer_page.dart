import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/controller/main_menu_controller.dart';
import 'package:my_app/menu/drawer.dart'; 

class MainMenuPage extends StatelessWidget {
  const MainMenuPage({super.key});

  @override
  Widget build(BuildContext context) {

    final MainMenuController controller = Get.put(MainMenuController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Aplikasi Utama'),
      ),
      // Memasang Drawer di sini
      drawer: const MenuDrawer(),
  
      body: Obx(
        () => IndexedStack(
          index: controller.selectedIndex.value,
          children: controller.listPages,
        ),
      ),
    );
  }
}