import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  void getData() async {
    String userName= await Future.delayed(Duration(seconds: 5), () {
      return ('Hello');
    });

    String bio= await Future.delayed(Duration(seconds: 3), () {
      return ('World Come');
    });
    debugPrint('$userName - $bio');


  }

  int counter = 0;

  @override
  void initState() {
    super.initState();
    getData();
          debugPrint('This is a message inside');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[300],
      appBar: AppBar(
        backgroundColor: Colors.green[800],
        centerTitle: true,
        title: Text(
          'Choose Location Screen',
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
        children: [
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
          Text(
            'Choose Location Screen',
            style: TextStyle(
              color: Colors.green[800],
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: 'IndieFlower',
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Counter is $counter',
            style: TextStyle(
              color: Colors.green[800],
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: 'IndieFlower',
              backgroundColor: Colors.white,
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                counter++;
              });
            },
            child: Text(
              'Increment Counter $counter',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'IndieFlower',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
