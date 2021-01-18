import 'package:flutter/material.dart';
import 'package:flutter_tasarim_denemeleri/screens/home_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle discover = Theme.of(context).textTheme.headline4.copyWith(
        color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold);
    TextStyle subtitle = Theme.of(context)
        .textTheme
        .headline6
        .copyWith(color: Colors.white60, fontWeight: FontWeight.bold);
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Image.asset(
              "assets/bs2.jpg",
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text(
                      "Discover the love for reading",
                      style: discover,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Text(
                      "Choose from millions of best sellig ebooks, comics, textbooks, and audiobooks. Download your book to read or listen on the go.",
                      style: subtitle,
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.only(top: 50, left: 4, right: 4, bottom: 0),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 14,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()));
                        },
                        color: Colors.orange[300],
                        child: Text(
                          "Create an account",
                          style: TextStyle(
                              color: Colors.grey[800], letterSpacing: 3),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20, left: 4, right: 4),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 14,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()));
                        },
                        color: Colors.green[300],
                        child: Text(
                          "Already have an account? Log in",
                          style: TextStyle(
                              color: Colors.grey[800], letterSpacing: 3),
                        ),
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
