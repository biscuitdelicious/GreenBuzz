import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:greenbuzz/home2.dart';
import 'package:greenbuzz/map.dart';
import 'package:greenbuzz/profile.dart';
import 'package:greenbuzz/profile2.dart';

void main() {
  runApp(InstagramHomePageApp());
}

class InstagramHomePageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InstagramHomePage(),
    );
  }
}

class InstagramHomePage extends StatefulWidget {
  @override
  _InstagramHomePageState createState() => _InstagramHomePageState();
}

class _InstagramHomePageState extends State<InstagramHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return PostCard(
            username: 'user_$index',
            postImage: 'images/posts/post_${index + 1}.jpeg', 
            likes: 100 + index * 10,
            description: 'Description #$index',
          );
        },
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

      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: _selectedIndex,
      //   onTap: _onItemTapped,
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.search),
      //       label: 'Search',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: 'Profile',
      //     ),
      //   ],
      // ),
    );
  }
}

class PostCard extends StatelessWidget {
  final String username;
  final String postImage;
  final int likes;
  final String description;

  PostCard({
    required this.username,
    required this.postImage,
    required this.likes,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('images/profile.jpg'),
          ),
          title: Text(
            username,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          trailing: Icon(Icons.more_vert),
        ),
        Image.asset(
          postImage,
          width: double.infinity,
          height: 300,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(Icons.favorite_border),
              SizedBox(width: 8),
              Icon(Icons.comment_outlined),
              SizedBox(width: 8),
              Icon(Icons.send_outlined),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            '$likes likes',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(description),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
