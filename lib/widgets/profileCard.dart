import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  ProfileCard({
    this.name,
    this.position,
    this.imageAddress,
  });

  final String name;
  final String position;
  final String imageAddress;

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              maxRadius: 64.0,
              minRadius: 20.0,
              backgroundColor: Colors.white,
              //radius: 60.0,
              backgroundImage: AssetImage(
                  imageAddress), // https://github.com/hemangdtu/MiCardApp/blob/master/images/hemang.jpg?raw=true
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                name,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                position,
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          ],
        ),
      ),
      elevation: 12.0,
      margin: EdgeInsets.all(10.0),
      color: Colors.black38,
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
    );
  }
}
