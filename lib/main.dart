import 'package:flutter/material.dart';
import 'package:flutter_app/components/contact_info.dart';
import 'package:flutter_app/components/primary_info.dart';
import 'package:flutter_app/screens/loading.dart';
import 'package:flutter_app/screens/ninja_profile.dart';
import 'package:flutter_app/services/get_ninja_list.dart';

void main() {
  runApp(const NinjaApp());
}

class NinjaApp extends StatelessWidget {
  const NinjaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const LoadingScreen(),
        '/profile': (context) => const NinjaHome(),
        '/home': (context) {
          final NinjaList args = ModalRoute.of(context)?.settings.arguments as NinjaList;
          return NinjaProfile(data: args);
        }
      },
      title: 'Ninja App',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
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
              PrimaryInfo(label: 'name', content: 'Ninja 1'),
              SizedBox(height: 5.0),
              PrimaryInfo(label: 'ninja level', content: '1'),
              SizedBox(height: 5.0),
              ContactInfo(type: 'email', content: 'ninja@flutter.com'),
              SizedBox(height: 5.0),
              ContactInfo(type: 'phone', content: '123 456 789')
            ]),
      ),
    );
  }
}
