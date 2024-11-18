import 'package:flutter/material.dart';

void main() {
  runApp(Login());
}

class Login extends StatelessWidget {
  String email = "tariq@gmail.com";
  String password = "112233";
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
          child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
                controller: controller,
                decoration: InputDecoration(
                    labelText: "email", border: OutlineInputBorder())),
            SizedBox(height: 10),
            TextField(
                controller: controller2,
                decoration: InputDecoration(
                    labelText: "password", border: OutlineInputBorder())),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                if (controller.text == email &&
                    controller2.text == password) {
                  print("welcome");
                }
                
              },
              child: Text("LOGIN"),
            )
          ],
        ),
      )),
    );
  }
}
