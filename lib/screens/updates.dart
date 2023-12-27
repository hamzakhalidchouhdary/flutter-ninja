import 'package:flutter/material.dart';

class Updates extends StatelessWidget {
  const Updates({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Status',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0),
              ),
              Icon(Icons.more_vert_rounded),
            ],
          ),
        ),
        Status()
      ],
    );
  }
}

class Status extends StatelessWidget {
  const Status({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const double avatarRadius = 32.0;
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: SizedBox(
        height: 100.0,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 50,
            itemBuilder: (BuildContext context, int index) {
              return const SizedBox(
                width: (avatarRadius * 2.0) + 20.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: avatarRadius,
                    ),
                    Text(
                      'User First Name',
                      style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontSize: 12.0,
                      ),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
