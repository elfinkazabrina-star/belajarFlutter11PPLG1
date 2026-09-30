import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/costom_botton.dart';
import '../controller/confirm_reg_controller.dart';

class ConfirmRegPage extends StatelessWidget {
  ConfirmRegPage({super.key});

  final controller = Get.put(ConfirmRegController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Confirm Registration"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Nama: ${controller.nama}",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              "Alamat: ${controller.alamat}",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              "Jenis Kelamin: ${controller.kelamin}",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              "Email: ${controller.email}",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              "No WA: ${controller.noWa}",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            CustomButton(
              text: "Oke",
              onPressed: () {
                Get.back();
              },
            ),
          ],
        ),
      ),
    );
  }
}