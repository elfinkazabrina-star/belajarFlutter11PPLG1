import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/costom_botton.dart';
import '../components/costom_textfield.dart';
import 'routes.dart';

class RegistrationPage extends StatelessWidget {
  RegistrationPage({super.key});

  final TextEditingController txtNama = TextEditingController();
  final TextEditingController txtAlamat = TextEditingController();
  final TextEditingController txtKelamin = TextEditingController();
  final TextEditingController txtEmail = TextEditingController();
  final TextEditingController txtNoWa = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration Page"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              CustomTextfield(
                txtController: txtNama,
                myHint: "Input Nama",
              ),
              SizedBox(height: 10),
              CustomTextfield(
                txtController: txtAlamat,
                myHint: "Input Alamat",
              ),
              SizedBox(height: 10),
              CustomTextfield(
                txtController: txtKelamin,
                myHint: "Input Jenis Kelamin",
              ),
              SizedBox(height: 10),
              CustomTextfield(
                txtController: txtEmail,
                myHint: "Input Email",
              ),
              SizedBox(height: 10),
              CustomTextfield(
                txtController: txtNoWa,
                myHint: "Input No WA",
              ),
              SizedBox(height: 20),
              CustomButton(
                text: "Register",
                onPressed: () {
                  Get.toNamed(Routes.confirm_registration, arguments: {
                    'nama': txtNama.text,
                    'alamat': txtAlamat.text,
                    'kelamin': txtKelamin.text,
                    'email': txtEmail.text,
                    'noWa': txtNoWa.text,
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}