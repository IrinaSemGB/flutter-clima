import 'package:flutter/material.dart';

const kTempTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 70.0,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 35.0,
);

const kButtonTextStyle = TextStyle(
  fontSize: 20.0,
  fontFamily: 'Spartan MB',
  color: Colors.white,
  letterSpacing: 3.0,
);

const kConditionTextStyle = TextStyle(
  fontSize: 60.0,
);

const TextStyle kInputTextStyle = TextStyle(
  color: Colors.teal,
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
  letterSpacing: 1.5,
);

const InputDecoration kTextFieldInputDecoration = InputDecoration(
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
        color: Colors.teal,
        style: BorderStyle.solid
    ),
  ),
  icon: Icon(
    Icons.location_city,
    color: Color(0xFFBDBDBD),
  ),
  hintText: 'Enter city name',
  filled: true,
);

