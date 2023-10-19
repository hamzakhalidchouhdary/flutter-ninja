import 'package:flutter/material.dart';

void main() {
  runApp(const NinjaApp());
}

class NinjaApp extends StatelessWidget {
  const NinjaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ninja App',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const NinjaHome(title: 'Ninja IDs'),
    );
  }
}

class NinjaHome extends StatefulWidget {
  const NinjaHome({super.key, this.title = 'Ninja IDs'});

  final String title;

  @override
  State<NinjaHome> createState() => _NinjaHomeState();
}

class _NinjaHomeState extends State<NinjaHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.grey[600],
        title: Text(
          widget.title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'NAME',
              style: TextStyle(
                letterSpacing: 2.0,
                color: Colors.grey,
                fontSize: 15.0
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              'Ninja 1',
              style: TextStyle(
                color: Colors.amber,
                fontSize: 40.0,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              'NINJA LEVEL',
              style: TextStyle(
                letterSpacing: 2.0,
                color: Colors.grey,
                fontSize: 15.0
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              '1',
              style: TextStyle(
                color: Colors.amber,
                fontSize: 40.0,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 5.0),
            Row(
              children: [
                Icon(
                  Icons.mail,
                  color: Colors.grey,
                ),
                SizedBox(width: 3.0),
                Text(
                  'ninja@flutter.com',
                  style: TextStyle(
                    color: Colors.grey
                  ),
                )
              ],
            )
          ]
        ),
      ),
    );
  }
}