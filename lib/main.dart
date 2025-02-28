import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hosteler',
      debugShowCheckedModeBanner: false,
      home: Scaffold(backgroundColor: const Color.fromARGB(255, 247, 222, 222), body: RealScoutScreen()),
    );
  }
}

class RealScoutScreen extends StatelessWidget {
  final List<String> imageUrls = [
    'assets/image1.jpg',
    'assets/image2.jpg',
    'assets/image3.jpg',
    'assets/image4.jpg',
    'assets/image5.jpg',
    'assets/image6.jpg',
    'assets/image7.jpg',
    'assets/image8.jpg',
    'assets/image9.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: MasonryGridView.count(
                physics: BouncingScrollPhysics(),
                  crossAxisCount: 3, 
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                itemCount: imageUrls.length,
                itemBuilder: (context, index) {
                  double height = 190;

                  if (index == 1) height = 240; 
                  if (index == 5 || index == 8) height = 150;

                  return Container(
                    height: height, 
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage(imageUrls[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  "WELCOME TO REAL SCOUT",
                  style: TextStyle(letterSpacing: 1.2, color: Colors.grey),
                ),
                SizedBox(height: 8),
                Text(
                  "Let’s Get You Closer",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text.rich(
                    TextSpan(
                      text: "To ", 
                      style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold), 
                      children: [
                        TextSpan(
                          text: "Your Ideal Home", 
                          style: TextStyle(fontSize: 24, color: const Color.fromARGB(255, 5, 64, 173), fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),

                SizedBox(height: 8),
                Text(
                  "Login to Real Scout with Google",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 16),
               ElevatedButton.icon(
                  onPressed: () {
                    print("Philip you just like Dating big girls!!!!");
                  },
                  icon: Image.asset(
                    "assets/g-logo.png",
                    height: 18,
                  ),

                  label: Text(
                    "Sign Up with Google",
                    style: TextStyle(fontSize: 14), 
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8), 
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20), 
                    ),
                    elevation: 2, // Lower elevation
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
