import 'package:flutter/material.dart';
import 'package:flutter_app/components/contact_info.dart';
import 'package:flutter_app/components/primary_info.dart';
import 'package:flutter_app/screens/calls.dart';
import 'package:flutter_app/screens/chats.dart';
import 'package:flutter_app/screens/loading.dart';
import 'package:flutter_app/screens/ninja_profile.dart';
import 'package:flutter_app/screens/people.dart';
import 'package:flutter_app/screens/updates.dart';
import 'package:flutter_app/services/get_ninja_list.dart';

void main() {
  runApp(const MyFlutterApp());
}

class MyFlutterApp extends StatefulWidget {
  const MyFlutterApp({super.key});

  @override
  State<MyFlutterApp> createState() => _MyFlutterAppState();
}

class _MyFlutterAppState extends State<MyFlutterApp> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        initialIndex: 1,
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: const Color.fromRGBO(7, 94, 84, 1),
            title: const Text(
              'WhatsApp',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            actionsIconTheme: const IconThemeData(
              color: Colors.white,
            ),
            automaticallyImplyLeading: true,
            actions: [
              IconButton(
                icon: const Icon(Icons.camera_alt_outlined),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {},
              )
            ],
            bottom: const TabBar(
              indicatorColor: Colors.white,
              indicatorWeight: 3.0,
              indicatorSize: TabBarIndicatorSize.tab,
              automaticIndicatorColorAdjustment: true,
              labelColor: Colors.white,
              unselectedLabelColor: Color.fromRGBO(18, 140, 126, 1),
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              tabs: [
                Tab(icon: Icon(Icons.people)),
                Tab(text: 'Chats'),
                Tab(text: 'Updates'),
                Tab(text: 'Calls'),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              People(),
              Chats(),
              Updates(),
              Calls(),
            ],
          ),
        ),
      ),
    );
  }
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
          final NinjaList args =
              ModalRoute.of(context)?.settings.arguments as NinjaList;
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
              CircleAvatar(
                backgroundImage: AssetImage('ninja1.png'),
                radius: 70.0,
                backgroundColor: Colors.amber,
              ),
              Divider(
                height: 50.0,
                thickness: 1.0,
                color: Colors.grey,
              ),
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
