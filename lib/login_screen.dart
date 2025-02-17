import 'package:evently/reg_screen.dart';
import 'package:evently/starting_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});
  static const String route = "loginScreen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                "assets/images/introduction_Logo.png",
                width: 136,
                height: 141,
              ),
              SizedBox(
                height: 24,
              ),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                    color: Theme.of(context).focusColor,
                  ),
                  hintText: "Email",
                  prefixIcon: Icon(
                    Icons.email,
                    color: Theme.of(context).focusColor,
                  ),
                  focusColor: Theme.of(context).focusColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(color: Theme.of(context).focusColor),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(color: Theme.of(context).focusColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(color: Theme.of(context).focusColor),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                controller: passwordController,
                obscureText: isHide == true ? true : false,
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                    color: Theme.of(context).focusColor,
                  ),
                  hintText: "Password",
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Theme.of(context).focusColor,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      if (isHide) {
                        isHide = false;
                      } else {
                        isHide = true;
                      }
                      setState(() {});
                    },
                    icon: Icon(
                      isHide == true
                          ? Icons.remove_red_eye
                          : Icons.visibility_off,
                      color: Theme.of(context).focusColor,
                    ),
                  ),
                  focusColor: Theme.of(context).focusColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(color: Theme.of(context).focusColor),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(color: Theme.of(context).focusColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(color: Theme.of(context).focusColor),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "Forget Password?",
                  textAlign: TextAlign.end,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              ElevatedButton(
                style: Theme.of(context).elevatedButtonTheme.style,
                onPressed: () {},
                child: Text('Login'),
              ),
              SizedBox(
                height: 24,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, RegScreen.route);
                },
                child: Text.rich(
                  textAlign: TextAlign.center,
                  TextSpan(children: [
                    TextSpan(
                      text: "Don’t Have Account ? ",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    TextSpan(
                      text: "Create Account",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          decorationColor: Theme.of(context).primaryColor,
                          fontStyle: FontStyle.italic),
                    ),
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  bool isHide = true;
}
