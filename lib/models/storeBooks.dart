import 'package:flutter/material.dart';

class StoreBook {
  String title;
  String dsc;
  String category;
  Color bgColor;
  Color ttlColor;
  String pic1;
  String pic2;
  String pic3;
  String bgpic;
  double rate;
  String ttlpage;
  String publisher;
  String about;
  String price;

  StoreBook({
    this.title,
    this.dsc,
    this.category,
    this.bgColor,
    this.ttlColor,
    this.pic1,
    this.pic2,
    this.pic3,
    this.bgpic,
    this.rate,
    this.ttlpage,
    this.publisher,
    this.about,
    this.price,
  });

  static List<StoreBook> generateBooks() {
    return [
      StoreBook(
          title: "How to treat your pets",
          dsc: "I have to finish this book until next week",
          category: "Life",
          bgColor: Colors.yellow[300],
          ttlColor: Colors.yellow[800],
          pic1: "assets/images/1.jpeg",
          pic2: "assets/images/2.jpeg",
          pic3: "assets/images/3.jpeg",
          bgpic: "assets/images/4.jpg",
          price: "7.04",
          rate: 4.5,
          ttlpage: "132",
          publisher: "A Publish",
          about: '''
          The main purpose of your About Us page is to give your visitors a glimpse into who you are as a person or a business (or sometimes both).

As users discover your brand, they need to distinguish what sets you apart and makes you… you.

This often requires finding the right balance between compelling content and a design carefully planned to look the part.

Conveying your identity in a fun and approachable – but also reliable and informative – way is challenging.

If you know who you are and your goal for your site, the About Us page should come naturally.

However, if you’re looking for some inspiration, you can always check out the following 25 awesome examples of About Us pages
          '''),
      StoreBook(
          title: "Secret recipes!",
          dsc: "I have to finish this book until next week",
          category: "Cooking",
          bgColor: Colors.orange[300],
          ttlColor: Colors.orange[800],
          pic1: "assets/images/1.jpeg",
          pic2: "assets/images/2.jpeg",
          pic3: "assets/images/3.jpeg",
          bgpic: "assets/images/5.jpg",
          price: "14.23",
          rate: 4.8,
          ttlpage: "256",
          publisher: "A Publish",
          about: '''
          The main purpose of your About Us page is to give your visitors a glimpse into who you are as a person or a business (or sometimes both).

As users discover your brand, they need to distinguish what sets you apart and makes you… you.

This often requires finding the right balance between compelling content and a design carefully planned to look the part.

Conveying your identity in a fun and approachable – but also reliable and informative – way is challenging.

If you know who you are and your goal for your site, the About Us page should come naturally.

However, if you’re looking for some inspiration, you can always check out the following 25 awesome examples of About Us pages
          '''),
      StoreBook(
          title: "365 Bedtime Stories",
          dsc: "I have to finish this book until next week",
          category: "Story",
          bgColor: Colors.blue[300],
          ttlColor: Colors.blue[800],
          pic1: "assets/images/1.jpeg",
          pic2: "assets/images/2.jpeg",
          pic3: "assets/images/3.jpeg",
          bgpic: "assets/images/6.jpg",
          price: "9.99",
          rate: 4.1,
          ttlpage: "101",
          publisher: "A Publish",
          about: '''
          The main purpose of your About Us page is to give your visitors a glimpse into who you are as a person or a business (or sometimes both).
As users discover your brand, they need to distinguish what sets you apart and makes you… you.
This often requires finding the right balance between compelling content and a design carefully planned to look the part.
Conveying your identity in a fun and approachable – but also reliable and informative – way is challenging.
If you know who you are and your goal for your site, the About Us page should come naturally.
However, if you’re looking for some inspiration, you can always check out the following 25 awesome examples of About Us pages
          '''),
      StoreBook(
          title: "Mad Max",
          dsc: "I have to finish this book until next week",
          category: "Novel",
          bgColor: Colors.purple[300],
          ttlColor: Colors.purple[800],
          pic1: "assets/images/1.jpeg",
          pic2: "assets/images/2.jpeg",
          pic3: "assets/images/3.jpeg",
          bgpic: "assets/images/7.jpg",
          price: "17.98",
          rate: 4.2,
          ttlpage: "312",
          publisher: "A Publish",
          about: '''
The main purpose of your About Us page is to give your visitors a glimpse into who you are as a person or a business (or sometimes both).
As users discover your brand, they need to distinguish what sets you apart and makes you… you.
This often requires finding the right balance between compelling content and a design carefully planned to look the part.
Conveying your identity in a fun and approachable – but also reliable and informative – way is challenging.
If you know who you are and your goal for your site, the About Us page should come naturally.
However, if you’re looking for some inspiration, you can always check out the following 25 awesome examples of About Us pages
          '''),
      StoreBook(
          title: "Computer Science",
          dsc: "I have to finish this book until next week",
          category: "Science",
          bgColor: Colors.green[300],
          ttlColor: Colors.green[800],
          pic1: "assets/images/1.jpeg",
          pic2: "assets/images/2.jpeg",
          pic3: "assets/images/3.jpeg",
          bgpic: "assets/images/8.jpg",
          price: "23.04",
          rate: 4.0,
          ttlpage: "203",
          publisher: "A Publish",
          about: '''
The main purpose of your About Us page is to give your visitors a glimpse into who you are as a person or a business (or sometimes both).
As users discover your brand, they need to distinguish what sets you apart and makes you… you.
This often requires finding the right balance between compelling content and a design carefully planned to look the part.
Conveying your identity in a fun and approachable – but also reliable and informative – way is challenging.
If you know who you are and your goal for your site, the About Us page should come naturally.
However, if you’re looking for some inspiration, you can always check out the following 25 awesome examples of About Us pages
          '''),
      StoreBook(
          title: "Serial Killer",
          dsc: "I have to finish this book until next week",
          category: "Crime",
          bgColor: Colors.red[300],
          ttlColor: Colors.red[800],
          pic1: "assets/images/1.jpeg",
          pic2: "assets/images/2.jpeg",
          pic3: "assets/images/3.jpeg",
          bgpic: "assets/images/9.jpg",
          price: "14.78",
          rate: 4.9,
          ttlpage: "472",
          publisher: "A Publish",
          about: '''
The main purpose of your About Us page is to give your visitors a glimpse into who you are as a person or a business (or sometimes both).
As users discover your brand, they need to distinguish what sets you apart and makes you… you.
This often requires finding the right balance between compelling content and a design carefully planned to look the part.
Conveying your identity in a fun and approachable – but also reliable and informative – way is challenging.
If you know who you are and your goal for your site, the About Us page should come naturally.
However, if you’re looking for some inspiration, you can always check out the following 25 awesome examples of About Us pages
          '''),
    ];
  }
}
