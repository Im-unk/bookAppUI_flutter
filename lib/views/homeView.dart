import 'package:book_shelf/widgets/books.dart';
import 'package:book_shelf/widgets/updates.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              NewsCard(),
              SizedBox(
                height: 20,
              ),
              Text(
                "Books",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 26,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: BookGrid(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
