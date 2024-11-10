import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:greenbuzz/home.dart';
import 'package:greenbuzz/map.dart';
import 'package:greenbuzz/profile2.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          'GreenBuzz',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'ShadowsIntoLight',
          ),
        ),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Icon(Icons.chat_bubble_outline, color: Colors.black),
            onPressed: () {
             
            },
          ),
          IconButton(
            icon: Icon(Icons.notifications_none, color: Colors.black),
            onPressed: () {
              
            },
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
            margin: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
                  child: Image.asset(
                    'images/events/event_1_.jpeg', 
                    width: double.infinity,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.favorite_border, color: Colors.grey),
                              SizedBox(width: 8.0),
                              Icon(Icons.bookmark_border, color: Colors.grey),
                            ],
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('Participate', style: TextStyle(color: Colors.white)),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF2C5F2D),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Organized by: name_of_user',
                        style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        'Date: 19.04.2024',
                        style: TextStyle(fontSize: 14.0),
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        'Total eco points to be earned: 20',
                        style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        
          Container(
            margin: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
                  child: Image.asset(
                    'images/events/event_2_.jpeg', 
                    width: double.infinity,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.favorite_border, color: Colors.grey),
                              SizedBox(width: 8.0),
                              Icon(Icons.bookmark_border, color: Colors.grey),
                            ],
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('Participate', style: TextStyle(color: Colors.white)),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF2C5F2D),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Organized by: name_of_user',
                        style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        'Date: 19.04.2024',
                        style: TextStyle(fontSize: 14.0),
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        'Total eco points to be earned: 20',
                        style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        
          Container(
            margin: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
                  child: Image.asset(
                    'images/events/event_3_.jpeg', 
                    width: double.infinity,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.favorite_border, color: Colors.grey),
                              SizedBox(width: 8.0),
                              Icon(Icons.bookmark_border, color: Colors.grey),
                            ],
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('Participate', style: TextStyle(color: Colors.white)),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF2C5F2D),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Organized by: name_of_user',
                        style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        'Date: 19.04.2024',
                        style: TextStyle(fontSize: 14.0),
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        'Total eco points to be earned: 20',
                        style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        
          ],
        ),
      ),


      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color(0xFFB5D3A5), //verde deschis
        //0xFF2C5F2D verde inchis
        //color: Color(),
        //animationDuration: Duration(milliseconds: 100),
        items: [
          IconButton(
                 onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> EcoMapPage()));},
                 icon: const Icon(Icons.location_on,),
          ),
          IconButton(
                 onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage2()));},
                 icon: const Icon(Icons.event,),
          ),
          IconButton(
                 onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> InstagramHomePage()));},
                 icon: const Icon(Icons.home_filled,),
          ),
          IconButton(
                 onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> GreenGuardingApp()));},
                 icon: const Icon(Icons.person_2,),
          ),
        ],

      ),
      
    );
  }
}