import 'package:book_shelf/widgets/bookStore.dart';
import 'package:flutter/material.dart';

class BookStore extends StatefulWidget {
  const BookStore({key}) : super(key: key);

  @override
  _BookStoreState createState() => _BookStoreState();
}

class _BookStoreState extends State<BookStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text("BOOKSTORE"),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: [
                    Icon(
                      Icons.auto_awesome,
                      size: 27,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      "Best of the month",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 23,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                new SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: BookStoreGrid(),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.beenhere,
                      size: 27,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      "Recommended for you",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 23,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                new SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: BookStoreGrid(),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.anchor_rounded,
                      size: 27,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      "Explore more",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 23,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                new SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: BookStoreGrid(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
