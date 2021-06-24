import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
              Container(
                width: double.infinity,
                height: 230,
                decoration: new BoxDecoration(
                  gradient: new LinearGradient(
                      colors: [
                        Colors.purple,
                        Colors.black87,
                      ],
                      begin: const FractionalOffset(0.0, 0.0),
                      end: const FractionalOffset(1.0, 0.0),
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    CircleAvatar(
                      child: Image.asset('assets/images/profile.png'),
                      radius: 38,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Muhammad Anees',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    )),
                    SizedBox(
                      height: 5,
                    ),
                    Text('anees7757@gmail.com',
                        style: TextStyle(
                          color: Colors.white,
                        )),
                  ],
                ),
              ),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 190.0),
                width: 330,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left:20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.list_alt_outlined, size: 30, color: Colors.grey[600]),
                          SizedBox(
                            height: 10,
                          ),
                          Text('My Orders',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold
                              )),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:38.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.favorite_outline_sharp, size: 30, color: Colors.grey[600]),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Wishlist',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold
                              )),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:30.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.notifications_none, size: 30, color: Colors.grey[600]),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Notifications',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ],
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              onTap: (){},
              leading: Icon(Icons.account_balance_wallet_outlined, size: 28,),
              title: Text('My Wallet',
                  style: TextStyle(
                      color: Colors.black,
                  )),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              onTap: (){},
              leading: Icon(Icons.perm_identity,size: 28,),
              title: Text('Profile',
                  style: TextStyle(
                    color: Colors.black,
                  )),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              onTap: (){},
              leading: Icon(Icons.place_outlined, size: 28,),
              title: Text('Location (Pakistan)',
                  style: TextStyle(
                    color: Colors.black,
                  )),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              onTap: (){},
              leading: Icon(Icons.chat_outlined, size: 28,),
              title: Text('My Chat',
                  style: TextStyle(
                    color: Colors.black,
                  )),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              onTap: (){},
              leading: Icon(Icons.rate_review_outlined, size: 28,),
              title: Text('Rate Your Purchase',
                  style: TextStyle(
                    color: Colors.black,
                  )),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
    );
  }
}