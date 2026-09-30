import 'package:flutter/material.dart';
import '../components/costom_botton.dart';
import '../components/costom_textfield.dart';

class LoginClonePage extends StatefulWidget {
  const LoginClonePage({super.key});

  @override
  State<LoginClonePage> createState() => _LoginClonePageState();
}

class _LoginClonePageState extends State<LoginClonePage> {
  String statusLogin = "";

  @override
  Widget build(BuildContext context) {
    TextEditingController txtUsername = TextEditingController();
    TextEditingController txtPassword = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Spotify Login"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
         
              const Icon(
                Icons.music_note,
                size: 80,
                color: Colors.green,
              ),
              const SizedBox(height: 10),
             
              Text(
                "Welcome to Spotify $statusLogin",
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
             
              Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: CustomTextfield(
                  txtController: txtUsername,
                  myHint: "input username",
                ),
              ),
              // Input Password
              Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: CustomTextfield(
                  txtController: txtPassword,
                  myHint: "input password",
                ),
              ),
              const SizedBox(height: 20),
              // Tombol Login & Register
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                    text: "Login",
                    onPressed: () {
                      setState(() {
                        String username = txtUsername.text.toString();
                        String password = txtPassword.text.toString();

                        if (username == "admin" && password == "admin") {
                          statusLogin = "admin";
                        } else {
                          statusLogin = "failed";
                        }
                      });
                    },
                  ),
                  const SizedBox(width: 10),
                  CustomButton(
                    text: "Register",
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}