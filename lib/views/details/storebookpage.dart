import 'package:book_shelf/models/storeBooks.dart';
import 'package:flutter/material.dart';

class StoreBookPage extends StatelessWidget {
  final StoreBook storebook;

  StoreBookPage(this.storebook);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: storebook.bgColor,
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
                                Icons.category_rounded,
                                size: 40,
                                color: storebook.ttlColor,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Category: ${storebook.category}",
                                style: TextStyle(
                                    color: storebook.ttlColor,
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
                                Icons.star_rate_rounded,
                                size: 40,
                                color: storebook.ttlColor,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Rating: ${storebook.rate}",
                                  style: TextStyle(
                                      color: storebook.ttlColor,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.publish,
                                size: 40,
                                color: storebook.ttlColor,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("${storebook.publisher}",
                                  style: TextStyle(
                                      color: storebook.ttlColor,
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
                            "About this Book",
                            style: TextStyle(
                              color: storebook.ttlColor,
                              fontSize: 26,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            storebook.about,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    //Demo Section
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Read the Demo (free!)",
                              style: TextStyle(
                                color: storebook.ttlColor,
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
                                  color: storebook.ttlColor,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                      width: 2, color: storebook.ttlColor)),
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
                                  color: storebook.ttlColor,
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
                                  image: AssetImage(storebook.pic1),
                                  width: double.infinity,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                  image: AssetImage(storebook.pic2),
                                  width: double.infinity,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                    image: AssetImage(storebook.pic3),
                                    width: double.infinity),
                              ),
                            ],
                          ),
                          //Cart Section
                          SizedBox(
                            height: 40,
                          ),
                          Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color: storebook.ttlColor,
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.shopping_basket_rounded,
                                    color: Colors.white,
                                    size: 45,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "Add to Cart",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 23,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "${storebook.price} \$",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 28,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  )
                                ]),
                          )
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
      backgroundColor: storebook.bgColor,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios_rounded, color: Colors.white),
        onPressed: () => Navigator.of(context).pop(),
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    storebook.bgpic,
                  ),
                  fit: BoxFit.cover)),
          child: Container(
            decoration: BoxDecoration(color: Colors.black54),
          ),
        ),
        centerTitle: true,
        title: Text(
          "${storebook.title}",
          style: TextStyle(color: storebook.ttlColor, fontSize: 20),
        ),
      ),
    );
  }
}
