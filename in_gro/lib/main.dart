import 'package:flutter/material.dart';
import 'package:ingro/pages/ProductDetailsPage.dart';
import 'package:ingro/pages/ProductCartPage.dart';
import 'package:ingro/pages/HomePage.dart';
import 'package:ingro/pages/SignInPage.dart';
import 'package:ingro/pages/SignUpPage.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(fontFamily: 'Roboto', hintColor: Color(0xFFd0cece)),
  home: HomePage(),
));
