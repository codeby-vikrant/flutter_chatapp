import 'package:flutter/material.dart';
import 'package:flutter_study/chat_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final _formKey = GlobalKey<FormState>();

  void loginUser(context) {
    if (_formKey.currentState != null && _formKey.currentState!.validate()) {
      print(userNameController.text);
      print(passwordController.text);
      Navigator.pushReplacementNamed(context, '/chat', arguments: '${userNameController.text}');
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
            Image.network(
              'https://stimg.cardekho.com/images/carexteriorimages/930x620/Porsche/911/10990/1690869580714/front-left-side-47.jpg',
              height: 200,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
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
                    decoration: InputDecoration(
                      hintText: "Type Your Username",
                      hintStyle: TextStyle(color: Colors.blueGrey),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Type Your Password",
                      hintStyle: TextStyle(color: Colors.blueGrey),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            ElevatedButton(
                onPressed: () {
                  loginUser(context);
                },
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 20),
                )),
            GestureDetector(
              onTap: () {
                //todo: navigate to the browser
                print("Link Clicked");
              },
              child: Column(
                children: [
                  Text("Find Us On"),
                  Text('https://www.usvhealth.com'),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
