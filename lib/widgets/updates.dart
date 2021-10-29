import 'package:book_shelf/views/bookstore.dart';
import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
      children: [
        Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: <Widget>[
              Icon(
                Icons.update,
                size: 30,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Check out our latest Books!",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 25,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BookStore()));
                },
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 30,
                  color: Colors.pink[700],
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
