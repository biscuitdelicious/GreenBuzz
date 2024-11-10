// import 'package:flutter/material.dart';
// import 'package:flutter_map/flutter_map.dart';
// import 'package:latlong2/latlong.dart';



// class EcoMapPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Eco Events & Businesses')),
//       body: FlutterMap(
//         options: MapOptions(
//           center: LatLng(45.7578, 4.8320),
//           zoom: 13.0,
//         ),
//         layers: [
//           TileLayerOptions(
//             urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
//             subdomains: ['a', 'b', 'c'],
//           ),
//           MarkerLayerOptions(
//             markers: [
//               Marker(
//                 width: 80.0,
//                 height: 80.0,
//                 point: LatLng(45.7578, 4.8320),
//                 builder: (ctx) => Icon(Icons.location_on, color: Colors.green, size: 40),
//               ),

//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:greenbuzz/home.dart';
import 'package:greenbuzz/home2.dart';
import 'package:greenbuzz/profile2.dart';
import 'package:latlong2/latlong.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class EcoMapPage extends StatelessWidget {
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

      body: Stack(
        children: [FlutterMap(
          options: MapOptions(
            center: LatLng(45.745518, 21.238826), 
            zoom: 13.0,
          ),
          children: [
            TileLayer(
              urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
              subdomains: ['a', 'b', 'c'],
            ),
            MarkerLayer(
              markers: [
                Marker(
                  point: LatLng(45.745518, 21.238826),
                  builder: (ctx) => Icon(Icons.location_on, color: Color(0xFF2C5F2D), size: 40),
                ),
        
                Marker(
                  point: LatLng(45.7489, 21.2314),
                  builder: (ctx) => Icon(Icons.location_on, color: Color(0xFF2C5F2D), size: 40),
                ),
        
                Marker(
                  point: LatLng(45.7533, 21.2247),
                  builder: (ctx) => Icon(Icons.location_on, color: Color(0xFF2C5F2D), size: 40),
                ),
        
                Marker(
                  point: LatLng(45.7463, 21.2417),
                  builder: (ctx) => Icon(Icons.location_on, color: Color(0xFF2C5F2D), size: 40),
                ),
        
                Marker(
                  point: LatLng(45.76666, 21.22819),
                  builder: (ctx) => Icon(Icons.location_on, color: Color.fromARGB(255, 179, 135, 98), size: 40),
                ),
        
                Marker(
                  point: LatLng(45.7649, 21.2376),
                  builder: (ctx) => Icon(Icons.location_on, color: Color.fromARGB(255, 179, 135, 98), size: 40),
                ),
        
                Marker(
                  point: LatLng(45.7489, 21.2314),
                  builder: (ctx) => Icon(Icons.location_on, color: Color.fromARGB(255, 179, 135, 98), size: 40),
                ),
              ],
            ),
          ],
        ),
        Positioned(
            bottom: 16.0,
            left: 16.0,
            child: Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 4.0,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.circle, color: Color.fromARGB(255, 179, 135, 98)),
                      SizedBox(width: 4.0),
                      Text('Event', style: TextStyle(fontSize: 14.0)),
                    ],
                  ),
                  SizedBox(height: 4.0),
                  Row(
                    children: [
                      Icon(Icons.circle, color: Color(0xFF2C5F2D)),
                      SizedBox(width: 4.0),
                      Text('Business', style: TextStyle(fontSize: 14.0)),
                    ],
                  
                  ),
                    SizedBox(height: 10.0,),
                ],
              ),
            ),
          ),
        
        ],
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
