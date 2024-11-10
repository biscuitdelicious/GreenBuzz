import 'package:flutter/material.dart';


class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  _ProfileState createState() => _ProfileState();
}
  bool all = true;
  bool Progress = false, Posts = false, GreenCard = false;
class _ProfileState extends State<Profile> {


  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(children: [
        Text("buna"),
        showItem(),
      ],),
    );
  }


//==========================================HEADLINE MENU OPTIONS WIDGETS====================================================================//
  Widget showItem() {
     
                     return  Row(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          //SizedBox(width: 20.0,),
                       
                          GestureDetector(
                            onTap: () {
                              all = true;
                              Progress = false;
                              Posts = false;
                              GreenCard = false;
                              
                              setState(() {

                               });
                            },
                  
                            child: Text(
                                      'Progress',
                                      style: TextStyle(
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 2.0,
                                              color: all ? const Color(0xFFE4E2DD) : const Color.fromARGB(255, 156, 154, 152),
                                              //color: Color(0xFFE4E2DD),
                                              // decoration: TextDecoration.underline,
                                              // decorationColor: Color(0xFFE4E2DD),
                                              fontFamily: 'Poppins',
                                            ),
                                      ),
                              
                            ),
                          
                            
                          
                       
                          const SizedBox(width: 20.0,),
                       
                          GestureDetector(
                            onTap: () {
                              all = false;
                              Progress = true;
                              Posts = false;
                              GreenCard = false;
                           

                              setState(() {

                               });

                            },
                            child: Text(
                              'Posts',
                               style: TextStyle(
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 2.0,
                                      color: Progress ? const Color(0xFFE4E2DD) : const Color.fromARGB(255, 156, 154, 152),
                                      fontFamily: 'Poppins',
                               ),
                            ),
                          ),
                       
                          const SizedBox(width: 20.0,),
                       
                          GestureDetector(
                            onTap: () {
                              all = false;
                              Progress = false;
                              Posts = true;
                              GreenCard = false;
                             
                              
                              setState(() {

                               });

                            },
                            child: Text(
                              'Green Card',
                               style: TextStyle(
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 2.0,
                                      color: Posts ? const Color(0xFFE4E2DD) : const Color.fromARGB(255, 156, 154, 152),
                                      fontFamily: 'Poppins',
                               ),
                            ),
                          ),
                       
                          //SizedBox(width: 20.0,),
                       
                          
                        ],
                       ); 
  } 



}