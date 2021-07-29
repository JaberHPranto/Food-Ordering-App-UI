import 'package:flutter/material.dart';
import 'package:food_order_app_ui/Style.dart';

class HotelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'mont'),
      home: _HotelHomePage(),
    );
  }
}

class _HotelHomePage extends StatefulWidget {
  const _HotelHomePage({Key? key}) : super(key: key);

  @override
  __HotelHomePageState createState() => __HotelHomePageState();
}

class __HotelHomePageState extends State<_HotelHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: blue,
                        borderRadius: BorderRadius.only(
                            bottomLeft: (Radius.circular(40)),
                            bottomRight: Radius.circular(40)),
                        image: DecorationImage(
                            image: AssetImage("asset/images/hotelBig.png"),
                            fit: BoxFit.cover)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.search,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                        SizedBox(
                          height: 200,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Sushi Den",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 18,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 18,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 18,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 18,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 18,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        "250 reviews",
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Best place for getting healthy,freash quality food at a good price",
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.7),
                                        fontSize: 10),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 60,
                              width: 60,
                              margin: EdgeInsets.only(left: 50),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.redAccent,
                                  size: 25,
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Today's Special",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: Container(
                              height: 0.5,
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              color: Colors.grey,
                            ))
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        placesWidget("Sushi Platter", "food1"),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Dishes",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: Container(
                              height: 0.5,
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              color: Colors.grey,
                            ))
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                dishWidget("Sashimi Sushi", "sushi",
                                    "Traditional Japanese dish of prepared vinegared rice"),
                                dishWidget("Prato Sushi", "sushi2",
                                    "Traditional Japanese dish of prepared vinegared rice"),
                                dishWidget("Sushi Box", "food2",
                                    "Traditional Japanese dish of prepared vinegared rice"),
                                dishWidget("Nigiri Sushi", "sushi4",
                                    "Traditional Japanese dish of prepared vinegared rice"),
                              ],
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 25, vertical: 10),
                            decoration: BoxDecoration(
                                color: greenBtn,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25))),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.add_shopping_cart,
                                  size: 15,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "Cart",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.white),
                                )
                              ],
                            )),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 25, vertical: 10),
                            decoration: BoxDecoration(
                                color: blue,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25))),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.menu_book,
                                  size: 15,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "Menu",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.white),
                                )
                              ],
                            )),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Container dishWidget(String name, String image, String desc) {
    return Container(
      width: 120,
      margin: EdgeInsets.only(left: 5),
      child: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("asset/images/$image.png"))),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$name",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "$desc",
                style: TextStyle(fontSize: 10),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
                  child: Text(
                    "+ Cart",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    border: Border.all(color: black),
                  ))
            ],
          )
        ],
      ),
    );
  }

  Row placesWidget(String name, String image) {
    return Row(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('asset/images/$image.png'))),
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "$name",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 2,
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.orange,
                  size: 18,
                ),
                Icon(
                  Icons.star,
                  color: Colors.orange,
                  size: 18,
                ),
                Icon(
                  Icons.star,
                  color: Colors.orange,
                  size: 18,
                ),
                Icon(
                  Icons.star,
                  color: Colors.orange,
                  size: 18,
                ),
                Icon(
                  Icons.star,
                  color: Colors.orange,
                  size: 18,
                )
              ],
            ),
            Text(
              "Best place for getting quality food at a good price",
              style:
                  TextStyle(color: Colors.black.withOpacity(0.7), fontSize: 11),
            )
          ],
        )),
        InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: BoxDecoration(
                color: greenBtn,
                borderRadius: BorderRadius.all(Radius.circular(40))),
            child: Text(
              "Order now",
              style: TextStyle(fontSize: 12, color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
