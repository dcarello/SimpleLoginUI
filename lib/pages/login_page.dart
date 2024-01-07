import 'package:flutter/material.dart';
import 'package:modern_login_ui/components/my_button.dart';
import 'package:modern_login_ui/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(children: [
            const SizedBox(
              height: 50,
            ),

            // logo
            const Icon(
              Icons.lock,
              size: 100,
            ),

            const SizedBox(
              height: 50,
            ),

            // welcome back
            Text(
              "Welcome back!",
              style: TextStyle(color: Colors.grey[700], fontSize: 25),
            ),

            const SizedBox(
              height: 25,
            ),

            // username
            MyTextField(
              controller: usernameController,
              hintText: 'username',
              obscureText: false,
            ),

            const SizedBox(
              height: 10,
            ),

            // password
            MyTextField(
              controller: passwordController,
              hintText: 'password',
              obscureText: true,
            ),

            const SizedBox(
              height: 10,
            ),

            // Forgot password and not a member? Register
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Not a member?",
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      const Text(
                        "Register",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Text(
                    "Forgot Password?",
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 25,
            ),

            // sign in
            MyButton(
              onTap: signUserIn,
            ),

            const SizedBox(
              height: 50,
            ),

            // or continue with
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 25),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Expanded(
            //         child: Divider(
            //           thickness: .5,
            //           color: Colors.grey[400],
            //         ),
            //       ),
            //       Padding(
            //         padding: const EdgeInsets.symmetric(horizontal: 10),
            //         child: Text(
            //           "Or continue with",
            //           style: TextStyle(color: Colors.grey[700]),
            //         ),
            //       ),
            //       Expanded(
            //         child: Divider(
            //           thickness: .5,
            //           color: Colors.grey[400],
            //         ),
            //       ),
            //     ],
            //   ),
            // )
          ]),
        ),
      ),
    );
  }
}
