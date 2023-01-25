import 'package:flutter/material.dart';
import 'package:lab_8/login.dart';
import 'package:lab_8/sevice/auth_service.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegitterState();
}

class _RegitterState extends State<Register> {
    @override
    Widget build(BuildContext context) {
      TextEditingController _email = TextEditingController();
      TextEditingController _password = TextEditingController();

      return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Register')),
        ),
        body: SafeArea(
          child: ListView(
            children: [
              TextFormField(
                controller: _email,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter text';
                  }
                  return null;
                },
                decoration: InputDecoration(
                      labelText: "Password", hintText: "Enter Your Password"),
              ),
              ElevatedButton(
                onPressed: () {
                  AuthService.register(_email.text, _password.text).then((Value){
                    print("succes");
                    Navigator.pop(context);
                  });
                }, 
                child: Text('Submit')),
            ],)),
      );
    }
    
}
