import 'package:pbl/forecast.dart';

import 'package:flutter/material.dart';
import 'package:pbl/location.dart';

class MyLocation extends StatefulWidget {
  const MyLocation({Key? key}) : super(key: key);

  @override
  State<MyLocation> createState() => _MyLocationState();
}

class _MyLocationState extends State<MyLocation> {
  final TextEditingController locationController = TextEditingController();

  String _userLocation = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location Input'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: locationController,
              decoration: InputDecoration(
                labelText: 'Enter your location',//Asking user for the location input
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyForecast(userLocation: _userLocation)),);
                //After user enter the location the application will navigate the user to the result screen.
                setState(() {
                  _userLocation = locationController.text;
                });
              },
              child: Text('Submit'),
            ),
            SizedBox(height: 16.0),
            Text(
              'User Location: $_userLocation',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {

  runApp(MaterialApp(
    home: MyLocation(),
  ));
}


