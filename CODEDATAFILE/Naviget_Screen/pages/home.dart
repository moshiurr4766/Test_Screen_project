import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        title: Text('Home Screen',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          fontFamily: 'IndieFlower',
        ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/location');
                },
                icon: Icon(Icons.edit_location),
                label: Text('Location'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green[400],
                ),
              ),
            ),
            SizedBox(width: 20),
            Center(
              child: ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              icon: Icon(Icons.edit_location),
              label: Text('Loading'),
                style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber[800],
                ),
              ),
              ),
            ],
          ),
            
            SizedBox(height: 20),
            Text('Home Screen',
            style: TextStyle(
            color: Colors.grey[800],
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: 'IndieFlower',
          ),
          ),
        ],
      ),
    );
  }
}