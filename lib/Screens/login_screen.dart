import 'package:flutter/material.dart';
import 'package:scholar_chat_app/Components/custom_button.dart';
import 'package:scholar_chat_app/Components/custom_text_field.dart';
import 'package:scholar_chat_app/Screens/register_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2b475e),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            Image.asset('assets/images/scholar.png'),
            const Text(
              'From milky way',
              style: TextStyle(
                  color: Colors.white, fontSize: 32, fontFamily: 'pacifico'),
            ),
            const Spacer(
              flex: 2,
            ),
            const Row(
              children: [
                Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextField(
              labeldText: 'Email',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              labeldText: 'Password',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButton(
              textOfButton: 'Login',
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Don\'t hava an account?  ',
                  style: TextStyle(color: Colors.white),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const RegisterScreen();
                        },
                      ),
                    );
                  },
                  child: const Text(
                    'Register',
                    style: TextStyle(color: Color(0xffc7ede6)),
                  ),
                ),
              ],
            ),
            const Spacer(
              flex: 3,
            )
          ],
        ),
      ),
    );
  }
}
