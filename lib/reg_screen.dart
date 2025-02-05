import 'package:evently/login_screen.dart';
import 'package:evently/starting_screen.dart';
import 'package:flutter/material.dart';

class RegScreen extends StatefulWidget {
  RegScreen({super.key});
  static const String route = "reg";

  @override
  State<RegScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<RegScreen> {
  var emailController = TextEditingController();
  var nameController = TextEditingController();
  var passwordController = TextEditingController();
  var rePasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Register",
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontSize: 20,
              ),
        ),
      ),
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
                controller: nameController,
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                    color: Theme.of(context).focusColor,
                  ),
                  hintText: "Name",
                  prefixIcon: Icon(
                    Icons.person,
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
              TextFormField(
                controller: rePasswordController,
                obscureText: rePassIsHide == true ? true : false,
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
                      if (rePassIsHide) {
                        rePassIsHide = false;
                      } else {
                        rePassIsHide = true;
                      }
                      setState(() {});
                    },
                    icon: Icon(
                      rePassIsHide == true
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
                height: 24,
              ),
              ElevatedButton(
                style: Theme.of(context).elevatedButtonTheme.style,
                onPressed: () {},
                child: Text('Create Account'),
              ),
              SizedBox(
                height: 24,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, LoginScreen.route);
                },
                child: Text.rich(
                  textAlign: TextAlign.center,
                  TextSpan(children: [
                    TextSpan(
                      text: "Already Have Account ? ",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    TextSpan(
                      text: "Login",
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
  bool rePassIsHide = true;
}
