import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/controller/confirm_reg_controller.dart'; 

class ConfirmRegPage extends StatelessWidget {
  ConfirmRegPage({super.key});

 
  final controller = Get.put(ConfirmRegController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Konfirmasi Registrasi"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Data Registrasi:",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
           
              Text(
                "Nama: ${controller.nama}",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text("Kembali"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}