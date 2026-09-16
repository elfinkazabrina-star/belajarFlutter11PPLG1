import 'package:flutter/material.dart';
import '../components/costom_botton.dart';
import '../components/costom_textfield.dart';

class LoginClonePage extends StatefulWidget {
  const LoginClonePage({super.key});

  @override
  State<LoginClonePage> createState() => _LoginClonePageState();
}

class _LoginClonePageState extends State<LoginClonePage> {
  final TextEditingController txtUsername = TextEditingController();
  final TextEditingController txtPassword = TextEditingController();
  String statusLogin = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Spotify Login"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Container(
                width: 80,
                height: 80,
                decoration: const BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.music_note,
                  color: Colors.black,
                  size: 50,
                ),
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
              CustomTextField(
                txtController: txtUsername,
                text: "input username",
              ),
              const SizedBox(height: 10),
              CustomTextField(
                txtController: txtPassword,
                text: "input password",
              ),
              const SizedBox(height: 20),
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