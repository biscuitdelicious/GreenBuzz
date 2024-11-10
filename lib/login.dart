import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFB5D3A5), // verde deschis
      body:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: SingleChildScrollView(
            child: Column(
            //  mainAxisAlignment: MainAxisAlignment.center,
             // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
            
                 //=====================================ARROW BACK ICON====================================//
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [Container(
                                            padding: const EdgeInsets.fromLTRB(0.0, 10.0, 50.0, 10.0),
                                            margin: const EdgeInsets.only(left: 20.0, top: 20.0,bottom: 20.0),
                                            color: const Color(0xFFB5D3A5),
                                            child: IconButton(
                                                      onPressed: () {Navigator.pop(context);},
                                                      icon: const Icon(Icons.arrow_back_ios_new_outlined,),
                                                    ),
                                          ),
                                          ],
                                        ),
            
                // Logo
                Container(
                  width: 120, 
                  height: 120,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/logo.png'), 
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const SizedBox(height: 20), 
             
                const Text(
                  'Log In',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2C5F2D), // Verde inchis
                  ),
                ),
                const SizedBox(height: 30), 
              
                TextField(
                  decoration: InputDecoration(
                    labelText: 'USERNAME',
                    labelStyle: const TextStyle(
                      color: Color(0xFF2C5F2D), 
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                    filled: true,
                    fillColor: const Color(0xFFD9EAD3), 
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 20), 
       
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'PASSWORD',
                    labelStyle: const TextStyle(
                      color: Color(0xFF2C5F2D), // Verde inchis
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                    filled: true,
                    fillColor: const Color(0xFFD9EAD3), 
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 30), 

                //og In
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF2C5F2D), 
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Log In',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      
    );
  }
}
