import 'package:book_shelf/views/bookstore.dart';
import 'package:book_shelf/views/homeView.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

int _index = 0;
final List<Widget> _tabs = [
  HomeView(),
  BookStore(),
];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: <Widget>[
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage("assets/images/10.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 13,
            ),
            Text(
              "Welcome User!",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        actions: [
          Icon(
            Icons.more_vert,
            color: Colors.black,
            size: 28,
          )
        ],
      ),
      body: _tabs[_index],
      bottomNavigationBar: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(color: Colors.grey, spreadRadius: 5, blurRadius: 5),
              ]),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            child: BottomNavigationBar(
              currentIndex: _index,
              onTap: (index) => setState(() {
                _index = index;
              }),
              showSelectedLabels: false,
              showUnselectedLabels: false,
              backgroundColor: Colors.white,
              selectedItemColor: Colors.pinkAccent,
              unselectedItemColor: Colors.grey,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.book_rounded), label: "My Books"),
                BottomNavigationBarItem(
                  icon: Icon(Icons.store_rounded),
                  label: "Store",
                )
              ],
            ),
          )),
    );
  }
}
