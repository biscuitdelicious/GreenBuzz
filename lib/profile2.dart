import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:greenbuzz/home.dart';
import 'package:greenbuzz/home2.dart';
import 'package:greenbuzz/map.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(GreenGuardingApp());
}

bool all = true;
bool Progress = false, Posts = false, GreenCard = false;

class GreenGuardingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserProfilePage(),
    );
  }
}

class UserProfilePage extends StatefulWidget {
  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  String selectedTab = 'Progress';

  void _changeTab(String tab) {
    setState(() {
      selectedTab = tab;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB5D3A5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Text(
              'Green Guarding',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              '120 Eco Points',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('images/profile.jpg'),
              backgroundColor: Color(0xFF2C5F2D),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      '10 posts',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '230 followers',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '200 following',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Edit Profile',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF2C5F2D),
                  ),
                ),
           

                 
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Add a post',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF2C5F2D),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Add event',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF2C5F2D),
                      ),
                    ),
                  
                
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildNavigationTab('Progress'),
                _buildNavigationTab('My Events'),
                _buildNavigationTab('Posts'),
                _buildNavigationTab('Green Card'),
              ],
            ),
            SizedBox(height: 20),
            if (selectedTab == 'My Events') _buildUserEventsList(),
            if (selectedTab == 'Green Card') _buildGreenCard(),
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

  Widget _buildNavigationTab(String label) {
    bool isSelected = selectedTab == label;
    return GestureDetector(
      onTap: () {
        _changeTab(label);
      },
      child: Column(
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 16,
              color: isSelected ? Colors.black : Colors.black54,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          if (isSelected)
            Container(
              height: 2,
              width: 40,
              color: Colors.black,
              margin: EdgeInsets.only(top: 4),
            ),
        ],
      ),
    );
  }

  Widget _buildUserEventsList() {
    final List<Map<String, String>> userEvents = [
      {
        'title': 'Plantare de copaci',
        'image': 'images/posts/post_1.jpeg',
        //'description': 'Am participat la plantarea copacilor pentru a ajuta mediul.',
        'organizer': 'images/profile.jpg'
      },
      {
        'title': 'Curatenie in parc',
        'image': 'images/posts/post_2.jpeg',
       // 'description': 'O zi de curatenie alaturi de voluntari',
       'organizer': 'images/profile.jpg'
      },
      {
        'title': 'Eveniment reciclare',
        'image': 'images/posts/post_3.jpeg',
        //'description': 'Am participat la un eveniment de reciclare.',
        'organizer': 'images/profile.jpg'
      },
    ];

    return Column(
      children: userEvents.map((event) {
        return Card(
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
                child: Image.asset(
                  event['image']!,
                  width: double.infinity,
                  height: 170,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [Text(
                        event['title']!,
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 120.0,),
                       Icon(Icons.favorite_border, color: Colors.grey[700]),
                      ],
                    ),
                    SizedBox(height: 4.0),
                    Row(children: [Text("Organized by"),
                    SizedBox(width: 4.0,),
                         CircleAvatar(
                          radius: 15,
                          backgroundImage: AssetImage('images/profile.jpg'),
                          
                        ),
                        SizedBox(width: 100.0,),
                         Icon(Icons.calendar_month, color: Colors.grey[700]),
                        Text('19.04.2024')]),
                    Row(
                   //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Icon(Icons.favorite_border, color: Colors.grey[700]),
                        // SizedBox(width: 12.0,),
                        
                        // SizedBox(width: 170.0,),
                        // Icon(Icons.calendar_month, color: Colors.grey[700]),
                        // Text('19.04.2024')

                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
    
  }
  // Add this method inside your `_UserProfilePageState` class
Widget _buildGreenCard() {
  return Card(
   // margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              SizedBox(width: 10.0,),

             CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('images/logo.png'),
              ),

              SizedBox(width: 10.0,),

              Text(
              'GreenBuzz',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                fontFamily: 'ShadowsIntoLight',
              ),
            ),

            
              SizedBox(width: 20),
            ],
          ),

          Text(
            'My Green Card',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),

          SizedBox(height: 10),
          
             
          Image.asset('images/qrcode.png'),
            
          
          SizedBox(height: 10),
          Text(
            'Total: 120 EcoPoints',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  );
}

}



