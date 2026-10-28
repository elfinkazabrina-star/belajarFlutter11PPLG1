import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          const SizedBox(height: 30),
   
          Center(
            child: Stack(
              children: [
                const CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, size: 70, color: Colors.white),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      color: Colors.teal,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),

     
          const ListTile(
            leading: Icon(Icons.person_outline, color: Colors.grey),
            title: Text(
              'Name',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            subtitle: Text(
              'Nama Pengguna',
              style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500),
            ),
            trailing: Icon(Icons.edit, color: Colors.teal),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 72, right: 16),
            child: Text(
              'This is not your username or pin. This name will be visible to your WhatsApp contacts.',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ),
          const SizedBox(height: 20),

     
          const ListTile(
            leading: Icon(Icons.info_outline, color: Colors.grey),
            title: Text(
              'About',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            subtitle: Text(
              'Hey there! I am using WhatsApp.',
              style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500),
            ),
            trailing: Icon(Icons.edit, color: Colors.teal),
          ),
          const SizedBox(height: 10),

          // 4. Menu Phone (Nomor Telepon)
          const ListTile(
            leading: Icon(Icons.phone_outlined, color: Colors.grey),
            title: Text(
              'Phone',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            subtitle: Text(
              '+62 812-3456-7890',
              style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}