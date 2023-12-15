import 'package:flutter/material.dart';
import 'package:flutter_app/components/contact_info.dart';
import 'package:flutter_app/components/primary_info.dart';
import 'package:flutter_app/screens/loading.dart';
import 'package:flutter_app/screens/ninja_profile.dart';
import 'package:flutter_app/services/get_ninja_list.dart';

void main() {
  runApp(const MyFlutterApp());
}

class MyFlutterApp extends StatefulWidget {
  const MyFlutterApp({super.key});

  @override
  State<MyFlutterApp> createState() => _MyFlutterAppState();
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Home');
  }
}

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Search');
  }
}

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Settings');
  }
}

class _MyFlutterAppState extends State<MyFlutterApp> {
  int currentIndex = 0;

  Widget getBodyWidget() {
    switch (currentIndex) {
      case 0:
        return const HomeScreen();
      case 1:
        return const SearchScreen();
      case 2:
        return const SettingScreen();
      default:
        return const Placeholder();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.amber,
          appBar: AppBar(
            backgroundColor: Colors.amberAccent,
            title: const Text(
              'My Flutter App',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: Center(
            child: getBodyWidget(),
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.amber[200],
            selectedItemColor: Colors.white,
            currentIndex: currentIndex,
            onTap: (index) => setState(() {
              currentIndex = index;
            }),
            items: const [
              BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ],
          )),
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
