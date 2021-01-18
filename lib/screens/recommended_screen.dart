import 'package:flutter/material.dart';

class RecomScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              color: Colors.grey,
              onPressed: () {},
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.favorite_outline),
                color: Colors.grey,
                onPressed: () {},
              )
            ]),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Recommended Book",
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                  width: 300.0,
                  height: 300.0,
                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: new DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/b6.jpeg",
                          )))),
            ),
            Text(
              "Queenie",
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
            ),
            Text("Candice Carty-Williams",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300)),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                  "Queenie herself is that star of this cover, which is fitting since she is also the star of this book. The title tucked into her hair like a crown and 'A Novel' tucked in above her ear are just perfect."),
            ),
            Container(
              margin: EdgeInsets.all(4),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 14,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.orange[300],
                  child: Text(
                    "Add to library",
                    style: TextStyle(color: Colors.grey[800], letterSpacing: 3),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
