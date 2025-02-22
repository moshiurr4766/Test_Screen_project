import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[300],
      appBar: AppBar(
        backgroundColor: Colors.green[800],
        centerTitle: true,
        title: Text('Choose Location Screen',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          fontFamily: 'IndieFlower',
        ),
        ),
        elevation: 5,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                icon: Icon(Icons.edit_location),
                label: Text('Home   '),
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
          Text('Choose Location Screen',
          style: TextStyle(
            color: Colors.green[800],
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