import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_button.dart';
import 'package:food_delivery/components/my_textfield.dart';
import 'package:food_delivery/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  final void Function() ? onTap;
  
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //text editing controller
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  //login methods
  void login() {
    /* 
      Fill out authentication here
    */

    //Navigate to home
    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage(),),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),

            const SizedBox(height: 25),

            // message , app slogan
            Text(
              "Food Delivery App",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),

            const SizedBox(height: 25),

            //Input email

            MyTextfield(
              controller: emailController,
              hinText: 'Email',
              obscureText: false,
            ),

            const SizedBox(height: 10),
            // Input password

            MyTextfield(
              controller: passwordController,
              hinText: 'Password',
              obscureText: true,
            ),

            const SizedBox(height: 25),

            //Button
            MyButton(
              text: "Sign In",
              onTap: () {
                login();
              },
            ),

            const SizedBox(height: 25),

//not a member register
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member ?",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                const SizedBox(width: 5),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Register Now ",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
