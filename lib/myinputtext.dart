import 'package:flutter/material.dart';

class MyTextInput extends StatefulWidget {
  const MyTextInput({super.key});

  @override
  State<MyTextInput> createState() => _MyTextInputState();
}

class _MyTextInputState extends State<MyTextInput> {
  var emailText = TextEditingController();
  var passText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailText,
              decoration: InputDecoration(
                hintText: 'E-mail',
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(color: Colors.deepOrange, width: 2),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(color: Colors.blueAccent, width: 2),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(color: Colors.black45, width: 2),
                ),
                // suffixText: "Username exits",
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.remove_red_eye, color: Colors.orange),
                ),
                prefixIcon: Icon(Icons.email, color: Colors.orange),
              ),
            ),
            Container(height: 30),
            TextField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              controller: passText,
              decoration: InputDecoration(
                hintText: 'Pass',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(color: Colors.deepOrange),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                String uEmail = emailText.text.toString();
                String uPass = passText.text;
                print('Email: $uEmail, Pass $uPass');
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
