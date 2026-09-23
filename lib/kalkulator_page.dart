import 'package:flutter/material.dart';
import 'package:get/get.dart'; 
import '../components/costom_textfield.dart';
import '../controller/kalkulator_controller.dart';

class KalkulatorPage extends StatelessWidget {
  KalkulatorPage({super.key});

  final controller = Get.put(KalkulatorController());

  @override
  Widget build(BuildContext context) {
    TextEditingController txtAngka1 = TextEditingController();
    TextEditingController txtAngka2 = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text("Kalkulator"),
        centerTitle: true, 
        backgroundColor: Colors.blueAccent, 
        foregroundColor: Colors.white, 
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0), 
        child: Column(
          children: [
            CustomTextfield(txtController: txtAngka1, myHint: "input angka 1"),
            SizedBox(height: 12), 
            CustomTextfield(txtController: txtAngka2, myHint: "input angka 2"),
            SizedBox(height: 20),

          
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    int angka1 = int.parse(txtAngka1.text);
                    int angka2 = int.parse(txtAngka2.text);
                    controller.tambah(angka1, angka2);
                  },
                  child: Text("Tambah"),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    int angka1 = int.parse(txtAngka1.text);
                    int angka2 = int.parse(txtAngka2.text);
                    controller.kurang(angka1, angka2);
                  },
                  child: Text("Kurang"),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    int angka1 = int.parse(txtAngka1.text);
                    int angka2 = int.parse(txtAngka2.text);
                    controller.kali(angka1, angka2);
                  },
                  child: Text("Kali"),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    int angka1 = int.parse(txtAngka1.text);
                    int angka2 = int.parse(txtAngka2.text);
                    controller.bagi(angka1, angka2);
                  },
                  child: Text("Bagi"),
                ),
              ],
            ),

            SizedBox(height: 30),

            Text(
              "Hasil:",
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            Obx(
              () => Text(
                controller.hasil.toString(),
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}