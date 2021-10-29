import 'package:flutter/material.dart';

class Book {
  String title;
  String note;
  String category;
  num read;
  num left;
  Color bgColor;
  Color ttlColor;
  String summary = "default value";
  String pic1;
  String pic2;
  String pic3;

  Book({
    this.title,
    this.note,
    this.category,
    this.read,
    this.bgColor,
    this.left,
    this.ttlColor,
    this.summary,
    this.pic1,
    this.pic2,
    this.pic3,
  });

  static List<Book> generateBooks() {
    return [
      Book(
        title: "Mathmatics",
        note: "I have to finish this book until next week",
        category: "School",
        read: 78,
        left: 110,
        bgColor: Colors.yellow[300],
        ttlColor: Colors.yellow[800],
        pic1: "assets/images/1.jpeg",
        pic2: "assets/images/2.jpeg",
        pic3: "assets/images/3.jpeg",
      ),
      Book(
        title: "The Little Prince",
        note: "I have to give it back to Suzy ASAP!",
        category: "Story",
        read: 140,
        left: 230,
        bgColor: Colors.red[300],
        ttlColor: Colors.red[800],
        pic1: "assets/images/1.jpeg",
        pic2: "assets/images/2.jpeg",
        pic3: "assets/images/3.jpeg",
      ),
      Book(
        title: "Romeo and Juliet",
        note: "I cannot wait to finish this book!",
        category: "Romance",
        read: 102,
        left: 218,
        bgColor: Colors.purple[300],
        ttlColor: Colors.purple[800],
        pic1: "assets/images/1.jpeg",
        pic2: "assets/images/2.jpeg",
        pic3: "assets/images/3.jpeg",
      ),
      Book(
        title: "Biology",
        note: "I got It's exam on Thursaday",
        category: "School",
        read: 216,
        left: 34,
        bgColor: Colors.green[300],
        ttlColor: Colors.green[800],
        pic1: "assets/images/1.jpeg",
        pic2: "assets/images/2.jpeg",
        pic3: "assets/images/3.jpeg",
      ),
      Book(
        title: "War and Peace",
        note: "One of the best books I've ever read",
        category: "Novel",
        read: 350,
        left: 1807,
        bgColor: Colors.cyan[300],
        ttlColor: Colors.cyan[800],
        pic1: "assets/images/1.jpeg",
        pic2: "assets/images/2.jpeg",
        pic3: "assets/images/3.jpeg",
      ),
    ];
  }
}
