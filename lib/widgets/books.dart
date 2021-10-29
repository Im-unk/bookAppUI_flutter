import 'package:book_shelf/views/details/book_page.dart';
import 'package:flutter/material.dart';
import 'package:book_shelf/models/books.dart';
import 'package:dotted_border/dotted_border.dart';

class BookGrid extends StatelessWidget {
  final booklist = Book.generateBooks();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView.builder(
            itemCount: booklist.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index) =>
                _buildBookGrid(context, booklist[index])));
  }
}

Widget _buildBookGrid(BuildContext context, Book book) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => BookPage(book)));
    },
    child: Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: book.bgColor, borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: <Widget>[
          Text(
            book.title,
            style: TextStyle(
                color: book.ttlColor,
                fontSize: 17,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            book.note,
            style: TextStyle(
                fontSize: 14,
                color: Colors.black54,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(vertical: 8),
            alignment: Alignment.center,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: book.ttlColor),
            child: Text(
              "(${book.category})",
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Text(
                  "Read: " + book.read.toString(),
                  style: TextStyle(
                      color: book.ttlColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 11),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                width: 0.5,
              ),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Text(
                  "Left: " + book.left.toString(),
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 11),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
}
