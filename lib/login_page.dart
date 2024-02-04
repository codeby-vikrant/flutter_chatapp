import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Button Clicked');
          },
        ),
        body: Column(
          children: [
            Text(
              "Let's Sign You In!",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5
              ),
            ),
            Center(
              child: Text(
                "Welcome Back! \nYou've Been Missed",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                  fontSize: 20,
                    color: Colors.blueGrey
                ),
              ),
            ),
            Image.network('https://stimg.cardekho.com/images/carexteriorimages/930x620/Porsche/911/10990/1690869580714/front-left-side-47.jpg', height: 200,),
            Container(
              height: 150,
              width: 150,
              // child: FlutterLogo(),
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(50),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://play-lh.googleusercontent.com/3OM-jeYY2gY8h_RxHfEEnrogwFCYOQinyXdm3VQFpUE1GVElYrMc-jetB8DfUGX4jVZI'),
                      fit: BoxFit.cover,
                ),
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
              ),
            )
          ],
        )
    );
  }
}
