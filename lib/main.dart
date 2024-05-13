import 'package:flutter/material.dart';
import 'package:symbioseyaar/splash_screen.dart';
import 'package:symbioseyaar/webview_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:   const  SafeArea(child:  SplashScreen()), //WebViewScreen()),
      debugShowCheckedModeBanner:  false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        useMaterial3: true,
      ),

    );
  }
}



