import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/controller/main_menu_controller.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
  
    final MainMenuController controller = Get.find<MainMenuController>();

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text(
              'Menu Navigasi',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              controller.changePage(0); 
              Get.back(); 
            },
          ),
          ListTile(
            leading: const Icon(Icons.history),
            title: const Text('History'),
            onTap: () {
              controller.changePage(1); 
              Get.back(); 
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profile'),
            onTap: () {
              controller.changePage(2); 
              Get.back(); 
            },
          ),
        ],
      ),
    );
  }
}