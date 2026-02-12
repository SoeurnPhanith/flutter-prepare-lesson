import 'package:flutter/material.dart';
import 'package:flutter_prepare_lesson/advance_components_ui/text_field/register_form.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            //TODO : images
            ClipRRect(
              child: Image.asset(
                'assets/images/login.png',
                width: 350,
                height: 350,
              ),
            ),

            //TODO : text
            Text(
              'Login',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF4BAAA9),
              ),
            ),
            Text(
              'Please sign in to continue.',
              style: TextStyle(fontSize: 16, color: const Color(0xFF4BAAA9)),
            ),

            //TODO : textField
            SizedBox(height: 15),
            Container(
              width: 400,
              height: 55,
              decoration: BoxDecoration(
                color: const Color(0xFFEBEBEA),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  style: TextStyle(
                    fontSize: 18,
                    color: const Color(0xFF4A8179),
                    fontWeight: FontWeight.w700,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.person_2_outlined,
                      size: 27,
                      color: const Color(0xFF4A8179),
                    ),
                    hint: Text(
                      'Username',
                      style: TextStyle(
                        fontSize: 17,
                        color: const Color(0xFF4A8179),
                      ),
                    ),
                  ),
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              width: 400,
              height: 55,
              decoration: BoxDecoration(
                color: const Color(0xFFEBEBEA),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  style: TextStyle(
                    fontSize: 18,
                    color: const Color(0xFF4A8179),
                    fontWeight: FontWeight.w700,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.key,
                      size: 27,
                      color: const Color(0xFF4A8179),
                    ),
                    hint: Text(
                      'Password',
                      style: TextStyle(
                        fontSize: 17,
                        color: const Color(0xFF4A8179),
                      ),
                    ),
                    suffixIcon: Icon(
                      Icons.remove_red_eye_sharp,
                      size: 25,
                      color: const Color(0xFF4A8179),
                    ),
                  ),
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                'Remember me next time',
                style: TextStyle(
                  fontSize: 14,
                  color: const Color(0xFF4A8179),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),

            //TODO : button
            SizedBox(height: 25),
            Container(
              width: 400,
              height: 55,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 3, 56, 51),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Text(
                  'Sign in',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: .center,
                children: [
                  Text(
                    "Don't having any account? ",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterForm()),
                      );
                    },
                    child: Text(
                      'Sing up',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        color: const Color(0xFF4A8179),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
