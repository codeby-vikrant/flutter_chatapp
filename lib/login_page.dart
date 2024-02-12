import 'package:flutter/material.dart';
import 'package:flutter_study/chat_page.dart';
import 'package:flutter_study/utilities/spaces.dart';
import 'package:flutter_study/utilities/textfield_styles.dart';
import 'package:flutter_study/widgets/login_text_field.dart';
import 'package:social_media_buttons/social_media_button.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final _formKey = GlobalKey<FormState>();
  final _mainUrl = "https://www.usvhealth.com";

  void loginUser(context) {
    if (_formKey.currentState != null && _formKey.currentState!.validate()) {
      print(userNameController.text);
      print(passwordController.text);
      Navigator.pushReplacementNamed(context, '/chat',
          arguments: '${userNameController.text}');
      print("Login Successfully");
    } else {
      print("Not Successfull");
    }
  }

  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Let's Sign You In!",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5),
            ),
            Center(
              child: Text(
                "Welcome Back! \nYou've Been Missed",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.blueGrey),
              ),
            ),
            Image.asset(
              'assets/illustration.png',
              height: 200,
            ),
            verticalSpacing(10),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  LoginTextField(
                    hintText: "Enter Your Username",
                    validator: (value) {
                      if (value != null &&
                          value.isNotEmpty &&
                          value.length < 5) {
                        return "Your Username Should Be More Than 5 Characters";
                      } else if (value != null && value.isEmpty) {
                        return "Please Type Your Username";
                      }
                      return null;
                    },
                    controller: userNameController,
                  ),
                  verticalSpacing(24),
                  LoginTextField(
                    hasAsterisks: true,
                    hintText: "Enter Your Password",
                    controller: passwordController,
                  ),
                ],
              ),
            ),
            verticalSpacing(24),
            ElevatedButton(
                onPressed: () {
                  loginUser(context);
                },
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 20),
                )),
            GestureDetector(
              onTap: () async {
                //todo: navigate to the browser
                print("Link Clicked");
                if (!await launch(_mainUrl)) {
                  throw ('Could not launch this');
                }
              },
              child: Column(
                children: [
                  Text("Find Us On"),
                  Text(_mainUrl),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialMediaButton.github(
                  size: 20,
                  url: "https://github.com/codeby-vikrant",
                ),
                SocialMediaButton.linkedin(
                  color: Colors.blue,
                  size: 20,
                  url: "linkedin.com/in/vikrant-vani-96b329209",
                ),
                SocialMediaButton.instagram(
                  color: Colors.deepPurple,
                  size: 20,
                  url: "https://www.instagram.com/_.vikrant_10._/",
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
