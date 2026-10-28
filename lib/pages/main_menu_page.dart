import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/controller/main_menu_controller.dart';
import 'package:my_app/menu/drawer.dart'; // Jangan lupa import drawer-mu

class MainMenuPage extends StatelessWidget {
  const MainMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MainMenuController());

    return Obx(
      () => Scaffold(
     
        appBar: AppBar(
          title: const Text('Aplikasi Utama'),
        ),

        drawer: const MenuDrawer(),

        
        body: IndexedStack(
          index: controller.selectedIndex.value,
          children: controller.listPages,
        ),

       
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.selectedIndex.value,
          onTap: (index) {
            controller.selectedIndex.value = index;
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}