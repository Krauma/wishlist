import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wishlist/constants.dart';

import '../Controllers/authentication_controller.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final AuthenticationController authController =
      AuthenticationController.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
                child: Text(
              'Welcome to WishList!',
            )),
            TextField(
              decoration: const InputDecoration(hintText: "Email"),
              controller: _emailController,
            ),
            TextField(
              decoration: const InputDecoration(hintText: "Password"),
              controller: _passwordController,
              obscureText: true,
            ),
            const SizedBox(height: 30),
            Obx(() => ElevatedButton(
                  onPressed: () {
                    authController.isSigningUp.value
                        ? authController.register(_emailController.text.trim(),
                            _passwordController.text.trim())
                        : authController.login(_emailController.text.trim(),
                            _passwordController.text.trim());
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Constants.customGreen,
                    side: const BorderSide(
                      width: 5.0,
                      color: Constants.customGreen,
                    ),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 64, vertical: 8),
                    child: Text(
                        authController.isSigningUp.value ? "Sign up" : "Login"),
                  ),
                )),
            const SizedBox(height: 30),
            Wrap(
              spacing: 18,
              children: [
                InkWell(
                  onTap: () {
                    authController.signInWithGoogle();
                  },
                  child: Container(
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(16)),
                    child: Image.asset('assets/google.png'),
                  ),
                ),
                InkWell(
                  onTap: () {
                    //authController.signInWithGoogle();
                  },
                  child: Container(
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(16)),
                    child: Image.asset('assets/facebook2.png'),
                  ),
                ),
              ],
            ),
            Obx(
              () => TextButton(
                onPressed: () {
                  authController.isSigningUp.toggle();
                },
                child: Text(!authController.isSigningUp.value
                    ? "Don't have a user? Sign up here"
                    : "Login instead"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
