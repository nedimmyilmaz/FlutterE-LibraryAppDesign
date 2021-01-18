import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  String imgPath;
  String bookName;
  int page = 0;
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDE7F6),
      body: DraggableScrollableSheet(
        initialChildSize: 1,
        maxChildSize: 1,
        minChildSize: 0.2,
        builder: (context, scrollController) {
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.05,
                  horizontal: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(icon: Icon(Icons.menu), onPressed: () {}),
                      CircleAvatar(
                        child: IconButton(
                          icon: Icon(Icons.verified_user),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "Discover books",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    height: 17,
                  ),
                  HeadingText(),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 1.0, horizontal: 10),
                    child: Text("Trending Now",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        getContainer(
                            context, "assets/b1.jpg", "The King Of Drugs"),
                        getContainer(
                            context, "assets/b5.jpg", "The Wee Free Men"),
                        getContainer(
                            context, "assets/b2.jpg", "The Book of Chaos"),
                        getContainer(
                            context, "assets/b3.jpg", "The Gravity of Us"),
                        getContainer(
                            context, "assets/b4.jpg", "The Dress And The Girl"),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10),
                    child: Text("Recommended",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        getContainer(
                            context, "assets/b7.jpg", "The Tiny Dragon"),
                        getContainer(context, "assets/b8.jpg", "Finding Moana"),
                        getContainer(context, "assets/b9.jpg", "Red Planet")
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        selectedIconTheme: IconThemeData(),
        iconSize: 30,
        selectedItemColor: Color(0xE3D1B759),
        onTap: (value) {
          page = value;
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_sharp),
              label: "Account",
              backgroundColor: Colors.red),
        ],
      ),
    );
  }

  // ignore: dead_code
  getContainer(BuildContext context, String imgPath, String bookName) {
    // this.bookName;
    // this.imgPath;
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
          height: 200,
          width: MediaQuery.of(context).size.width / 3,
          child: Card(
            color: Colors.black,
            elevation: 4,
            child: Image(
              image: AssetImage(imgPath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          bookName,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

class HeadingText extends StatelessWidget {
  const HeadingText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xF0fdc800),
      ),
      padding: EdgeInsets.all(20),
      height: 130,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "The joy of reading",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Explore the joy of reading by reading different genres anytime anywhere",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
          )
        ],
      ),
    );
  }
}
