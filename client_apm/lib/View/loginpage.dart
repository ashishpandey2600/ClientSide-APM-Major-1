import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: SafeArea(
          child: Column(
        children: [
          TextField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.lock),
              border: InputBorder.none,
              labelText: "email",
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            controller: passwordController,
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.lock),
              border: InputBorder.none,
              labelText: "email",
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(onPressed: () {}, child: Text("Login")),
        ],
      )),
    );
  }
}
