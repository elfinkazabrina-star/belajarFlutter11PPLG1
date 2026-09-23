import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  String statusLogin = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Spotify Login"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          const Icon(
            Icons.music_note,
            size: 80,
            color: Colors.green,
          ),
          const SizedBox(height: 10),
          Text(
            "Welcome to Application $statusLogin",
            style: const TextStyle(
              fontSize: 20,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: TextField(
              controller: txtUsername,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                hintText: "Enter your username or email",
                hintStyle: TextStyle(color: Colors.grey),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: TextField(
              controller: txtPassword,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                hintText: "Enter your password",
                hintStyle: TextStyle(color: Colors.grey),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                ),
              ),
              obscureText: true,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.black,
                ),
                onPressed: () {
                  setState(() {
                    String username = txtUsername.text.toString();
                    String password = txtPassword.text.toString();
                    if (username == "admin" && password == "admin") {
                      print("sukses login");
                      statusLogin = "admin";
                    } else {
                      print("gagal login");
                      statusLogin = "failed";
                    }
                  });
                },
                child: const Text("Login"),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {},
                child: const Text("Register"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}