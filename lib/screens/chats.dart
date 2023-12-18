import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  static List<String> entries = <String>['A', 'B', 'C', 'D', 'E', 'F', 'D'];
  static List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        return const ConversationCard();
      },
    );
  }
}

class ConversationCard extends StatelessWidget {
  const ConversationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircleAvatar(
            backgroundColor: Colors.amber,
            radius: 30.0,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Contact Name',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Text(
                'latest message send to me',
                style: TextStyle(fontWeight: FontWeight.w300),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('10:30 AM', style: TextStyle(
                fontSize: 11.0
              ),),
              Container(
                width: 20.0,
                height: 20.0,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                  color: Color.fromRGBO(37, 211, 102, 1),
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    '20',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 11.0,
                        fontWeight: FontWeight.w700),
                    // textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}