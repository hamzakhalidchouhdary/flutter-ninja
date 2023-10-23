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
        children: data.ninjas.map((ninja) => NinjaCard(ninja: ninja)).toList()
      ),
    );
  }
}

class NinjaCard extends StatelessWidget {
  const NinjaCard({super.key, required this.ninja});

  final Ninja ninja;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          ninja.name,
          style: TextStyle(
            backgroundColor: Colors.grey[400],
            height: 2.0
          ),
        ),
        Text(ninja.level)
      ],
  );
  }
}