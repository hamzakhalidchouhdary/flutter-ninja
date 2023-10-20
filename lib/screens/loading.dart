import 'package:flutter/material.dart';
import 'package:flutter_app/services/get_ninja_list.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  NinjaList ninjas = NinjaList();

  void navigateToHome() {
    Navigator.pushReplacementNamed(context, '/home', arguments: ninjas);
  }

  void loadNinjsList() async {
    await ninjas.getNinjaList();
    navigateToHome();
  }

  @override
  void initState() {
    super.initState();
    loadNinjsList();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('LOADING'),
      ),
    );
  }
}
