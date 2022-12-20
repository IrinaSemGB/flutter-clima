import 'package:flutter/material.dart';
import 'package:clima/utilities/constants.dart';

class CityScreen extends StatefulWidget {
  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {

  String cityName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 30.0,
                  color: Colors.grey[400],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                style: kInputTextStyle,
                cursorColor: Colors.teal,
                cursorHeight: 20.0,
                decoration: kTextFieldInputDecoration,
                onChanged: (value) {
                  cityName = value;
                },
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context, cityName);
              },
              child: Text(
                'Get Weather'.toUpperCase(),
                style: kButtonTextStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
