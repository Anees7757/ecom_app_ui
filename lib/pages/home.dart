import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var index = 0;

  List<dynamic> title = [
    'Gaming PC',
    'Iphone 12',
    'Backlit Keyboard',
    'Macbook Air',
    'Macbook Pro',
    'Mercedes',
    'Mutton',
    'Note 20 Ultra',
    'Roadster',
    'Royal Field'
  ];
  List<dynamic> imageUrl = [
    'assets/images/gaming_pc.jpg',
    'assets/images/iphone.jpg',
    'assets/images/keyboard.jpg',
    'assets/images/macbook_air.jpg',
    'assets/images/macbook_pro.jpg',
    'assets/images/mercedes.jpg',
    'assets/images/mutton.jpg',
    'assets/images/note20Ultra.jpg',
    'assets/images/roadster.jpg',
    'assets/images/royal_field.jpg'
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
          child: Column(
            children: [
                Row(
                  children: [
                    Text('Items',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                        )),
                    Spacer(),
                    Text('View More',
                        style: TextStyle(
                            color: Colors.purple[700],
                            fontWeight: FontWeight.w400)),
                  ],
                ),
              SizedBox(
                height: 20.0,
              ),


                CarouselSlider(
                    options: CarouselOptions(
                      height: 292,
                      viewportFraction: 1.0,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 10),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      scrollDirection: Axis.horizontal,
                    ),
                  items: [0,1,2,3,4].map((index) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                              child: Card(
                                color: Colors.white,
                                elevation: 2.0,
                                //clipBehavior: Clip.antiAliasWithSaveLayer,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Column(
                                  children: [
                                ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                      child: Image.asset(
                                        imageUrl[index],
                                        fit: BoxFit.fitWidth,
                                        width: double.infinity,
                                        height: 210,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(5.0, 8.0, 0.0, 5.0),
                                      child: Row(
                                        children: [
                                          Text(title[index],
                                              style: TextStyle(
                                                fontSize: 26,
                                                fontWeight: FontWeight.w700,
                                              )),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 2.0,
                                        ),
                                        Icon(Icons.star, color: Colors.yellow[600], size: 14),
                                        Icon(Icons.star, color: Colors.yellow[600], size: 14),
                                        Icon(Icons.star, color: Colors.yellow[600], size: 14),
                                        Icon(Icons.star, color: Colors.yellow[600], size: 14),
                                        Icon(Icons.star, color: Colors.yellow[600], size: 14),
                                        Text('5.0 (23 Reviews)',
                                            style: TextStyle(
                                              fontSize: 12,
                                            ))
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                      },
                    );
                  }).toList(),
                ),
              Padding(
                padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                child: Row(
                  children: [
                    Text('More Categories',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        )),
                  ],
                ),
              ),
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 10.0),
                      child: Container(
                        width: 145,
                        height: 55,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset:
                                  Offset(0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                              child: Icon(Icons.dry_cleaning,
                                color: Colors.purple[700],
                                size: 30,
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Clothes',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                    )),
                                Text('5 items',
                                    style: TextStyle(
                                      fontSize: 10,
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 10.0),
                      child: Container(
                        width: 170,
                        height: 55,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset:
                              Offset(0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                              child: Icon(Icons.bolt,color: Colors.purple[700],
                                size: 30,
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Electronic',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                    )),
                                Text('20 items',
                                    style: TextStyle(
                                      fontSize: 10,
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 10.0),
                      child: Container(
                        width: 182,
                        height: 55,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset:
                              Offset(0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                              child:  Icon(Icons.event_seat,
                                color: Colors.purple[700],
                                size: 30,
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Households',
                                    style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w700,
                                    )),
                                Text('9 items',
                                    style: TextStyle(
                                      fontSize: 10,
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 10.0),
                      child: Container(
                        width: 182,
                        height: 55,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset:
                              Offset(0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                              child: Icon(Icons.bolt,color: Colors.purple[700],
                                size: 30,
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Appliances',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                    )),
                                Text('5 items',
                                    style: TextStyle(
                                      fontSize: 10,
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 10.0),
                      child: Container(
                        width: 136,
                        height: 55,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset:
                              Offset(0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                              child: Icon(Icons.double_arrow,color: Colors.purple[700],
                                size: 30,
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Others',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                    )),
                                Text('15 items',
                                    style: TextStyle(
                                      fontSize: 10,
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),


              Padding(
                padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                child: Row(
                  children: [
                    Text('Popular Items',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        )),
                    Spacer(),
                    Text('View More',
                        style: TextStyle(
                            color: Colors.purple[700],
                            fontWeight: FontWeight.w400)),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                children: List.generate(title.length, (index) {
                  return Card(
                    color: Colors.white,
                    elevation: 2.0,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            imageUrl[index],
                            fit: BoxFit.fitWidth,
                            width: double.infinity,
                            height: 105,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(5.0, 5.0, 0.0, 5.0),
                          child: Row(
                            children: [
                              Container(
                                width: 155,
                                child: Text(title[index],
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800,
                                    )),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 2.0,
                            ),
                            Icon(Icons.star,
                                color: Colors.yellow[600], size: 11),
                            Icon(Icons.star,
                                color: Colors.yellow[600], size: 11),
                            Icon(Icons.star,
                                color: Colors.yellow[600], size: 11),
                            Icon(Icons.star,
                                color: Colors.yellow[600], size: 11),
                            Icon(Icons.star,
                                color: Colors.yellow[600], size: 11),
                            Text('5.0 (23 Reviews)',
                                style: TextStyle(
                                  fontSize: 10,
                                ))
                          ],
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}