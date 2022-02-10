import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(seconds: 10),
        () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => MainScreen()),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              "assets/spalsh.gif",
              gaplessPlayback: true,
              fit: BoxFit.fill,
            )));
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 30.0,
          title: Text('Gif Splash Screen Demo'),
        ),
        body: Center(
          child: Text(
            "This Is Our GIF Splash Screen Hope You LOVE It",
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
    );
  }
}
