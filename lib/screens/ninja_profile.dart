import 'package:flutter/material.dart';
import 'package:flutter_app/services/get_ninja_list.dart';

class NinjaProfile extends StatelessWidget {
  const NinjaProfile({super.key, required this.data});

  final NinjaList data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ninja List')
      ),
      body: Column(
        children: data.ninjas.map((ninja) => Text(ninja.name)).toList()
      ),
    );
  }
}