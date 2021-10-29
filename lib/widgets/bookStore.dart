import 'package:book_shelf/models/storeBooks.dart';
import 'package:book_shelf/views/details/storebookpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BookStoreGrid extends StatefulWidget {
  @override
  _BookStoreGridState createState() => _BookStoreGridState();
}

final storebooks = StoreBook.generateBooks();

class _BookStoreGridState extends State<BookStoreGrid> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: 200,
        child: GridView.builder(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: storebooks.length,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index) =>
                _buildStoreBooks(context, storebooks[index])),
      ),
    );
  }

  Widget _buildStoreBooks(BuildContext context, StoreBook storeBook) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(storeBook.bgpic),
            fit: BoxFit.cover,
          )),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => StoreBookPage(storeBook)));
        },
        child: Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.black45,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Text(
                storeBook.title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.star_rounded,
                    size: 19,
                    color: Colors.yellowAccent,
                  ),
                  Text(
                    "Rating: ${storeBook.rate}",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.yellowAccent),
                  ),
                ],
              ),
              SizedBox(
                height: 7,
              ),
              Row(
                children: [
                  Icon(
                    Icons.category_rounded,
                    size: 19,
                    color: Colors.yellowAccent,
                  ),
                  Text(
                    "Category: ${storeBook.category}",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.yellowAccent),
                  ),
                ],
              ),
              Spacer(),
              Container(
                  padding: EdgeInsets.all(5),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: storeBook.ttlColor),
                  child: Text(
                    "DETAIL",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
