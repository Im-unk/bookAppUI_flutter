import 'package:book_shelf/models/books.dart';
import 'package:book_shelf/views/details/widgets/summary.dart';
import 'package:flutter/material.dart';

class BookPage extends StatelessWidget {
  final Book book;
  BookPage(this.book);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: book.bgColor,
        body: CustomScrollView(
          slivers: [
            _appBar(context),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                child: Column(
                  children: [
                    // icon and detail bar about the book
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Icon(
                                Icons.bookmark_rounded,
                                size: 40,
                                color: book.ttlColor,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "page ${book.read}",
                                style: TextStyle(
                                    color: book.ttlColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.check_box_outline_blank_outlined,
                                size: 40,
                                color: book.ttlColor,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("${book.left} left",
                                  style: TextStyle(
                                      color: book.ttlColor,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.category_rounded,
                                size: 40,
                                color: book.ttlColor,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("${book.category}",
                                  style: TextStyle(
                                      color: book.ttlColor,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.menu_book_rounded,
                                size: 40,
                                color: book.ttlColor,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("${book.read + book.left} pages",
                                  style: TextStyle(
                                      color: book.ttlColor,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ]),
                    //short note section
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Short Note",
                            style: TextStyle(
                              color: book.ttlColor,
                              fontSize: 26,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            book.note,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    //Summary section
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Summary",
                            style: TextStyle(
                              color: book.ttlColor,
                              fontSize: 26,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Summary(),
                          //PDF Section
                          SizedBox(
                            height: 40,
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Read the PDF",
                              style: TextStyle(
                                color: book.ttlColor,
                                fontSize: 26,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.all(20),
                              width: double.infinity,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: book.ttlColor,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                      width: 2, color: book.ttlColor)),
                              child: Icon(
                                Icons.picture_as_pdf_rounded,
                                color: Colors.white,
                                size: 38,
                              ),
                            ),
                          ),
                          //Images section
                          SizedBox(
                            height: 40,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Images",
                                style: TextStyle(
                                  color: book.ttlColor,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                  image: AssetImage(book.pic1),
                                  width: double.infinity,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                  image: AssetImage(book.pic2),
                                  width: double.infinity,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                    image: AssetImage(book.pic3),
                                    width: double.infinity),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }

  Widget _appBar(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 70,
      backgroundColor: book.bgColor,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios_rounded, color: Colors.black),
        onPressed: () => Navigator.of(context).pop(),
      ),
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text(
          "${book.title}",
          style: TextStyle(color: book.ttlColor, fontSize: 20),
        ),
      ),
    );
  }
}
