import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

@override
State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  


@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text("Login"),
    ),
    body: SafeArea(
        child: Form(
        key: _formkey,
        child: Center(
          child: Padding(
           padding: const EdgeInsets.all(32.0),
            child: ListView(
            children: [
            TextFormField(
              decoration: InputDecoration(labelText: ""),
            ),
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(labelText: "E-mail"),
              obscureText: true,
            ),
            ElevatedButton(onPressed: () {}, child: const Text("Login")),
            
          ],
          )
        )
        ) ),
    ),
  );
}
}