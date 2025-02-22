import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getData() async{
    Response response = await get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
    Map data=jsonDecode(response.body);
    debugPrint(data['title']);
    debugPrint(data.toString());
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 199, 129, 132),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 125, 46, 57),
        title: Text('Loding Screen',
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
          Center(
            child: ElevatedButton.icon(
            onPressed: (){
              Navigator.pushNamed(context, '/location');
            }, 
            icon: Icon(Icons.edit_location),
            label: Text('Edit Location'),
            ),
          ),
          SizedBox(height: 20),
          Text('Loding Screen',
          style: TextStyle(
            color: const Color.fromARGB(255, 125, 46, 53),
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