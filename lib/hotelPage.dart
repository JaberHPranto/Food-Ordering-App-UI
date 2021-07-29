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
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
