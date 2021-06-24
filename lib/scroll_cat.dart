import 'package:flutter/material.dart';

class ScrollCat extends StatefulWidget {
  const ScrollCat({Key? key}) : super(key: key);

  @override
  _ScrollCatState createState() => _ScrollCatState();
}

class _ScrollCatState extends State<ScrollCat> {

  int index = 0;

  List<dynamic> catTitle = [
    'Clothes'
        'Electronic'
        'Households'
        'Appliances'
        'Others'
  ];
  List<dynamic> catsubTitle = [
    '5 items'
        '20 items'
        '9 items'
        '5 items'
        '15 items'
  ];
  List<Icon> catIcons = [
    Icon(Icons.shopping_bag,
      color: Colors.purple[700],
      size: 27,
    ),
    Icon(Icons.bolt,color: Colors.purple[700],
      size: 27,
    ),
    Icon(Icons.chair_alt,color: Colors.purple[700],
      size: 27,
    ),
    Icon(Icons.bolt,color: Colors.purple[700],
      size: 27,
    ),
    Icon(Icons.double_arrow,color: Colors.purple[700],
      size: 27,
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: catTitle.length,
      itemBuilder: (context, index) {
      return ListTile(
        leading: Icon(Icons.bolt),
        title: Text('Electronic'),
        subtitle: Text('6 items'),

        // child: Padding(
        //   padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 10.0),
        //   child: Container(
        //     width: 175,
        //     height: 55,
        //     decoration: BoxDecoration(
        //       color: Colors.white,
        //       borderRadius: BorderRadius.circular(10),
        //       boxShadow: [
        //         BoxShadow(
        //           color: Colors.grey.withOpacity(0.5),
        //           spreadRadius: 1,
        //           blurRadius: 1,
        //           offset:
        //           Offset(0, 2), // changes position of shadow
        //         ),
        //       ],
        //     ),
        //     child: Row(
        //       children: [
        //         Padding(
        //           padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
        //           child: catIcons[index],
        //         ),
        //         Column(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //             Text(catTitle[index],
        //                 style: TextStyle(
        //                   fontSize: 20,
        //                   fontWeight: FontWeight.w600,
        //                 )),
        //             Text(catsubTitle[index],
        //                 style: TextStyle(
        //                   fontSize: 10,
        //                 )),
        //           ],
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
      );
    },
    );
  }
}
