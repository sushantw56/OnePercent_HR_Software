import 'package:flutter/material.dart';
import 'package:onepercent_hr_software/screens/addemployee.dart';
import 'package:onepercent_hr_software/widgets/profileCard.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text("HR"),
            actions: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueGrey,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AddEmployee()));
                },
                child: Text("Add Employee"),
              )
            ],
          ),
          body: Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          style: TextStyle(color: Colors.blue),
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              hintText: "Search",
                              hintStyle: TextStyle(color: Colors.blue.shade200),
                              border: InputBorder.none),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                const Color(0x36FFFFFF),
                                const Color(0x0FFFFFFF)
                              ]),
                              borderRadius: BorderRadius.circular(40)),
                          child: Icon(
                            Icons.search,
                            size: 25,
                            color: Colors.blue,
                          ),
                        ),
                      )
                    ],
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  Expanded(
                    flex: 100,
                    child: (ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 12,
                      shrinkWrap: false,
                      itemBuilder: (context, pos) {
                        return ProfileCard(
                          name: "Sushant",
                          position: "Flutter Developer",
                          imageAddress: "assets/profile_image.png",
                        );
                      },
                    )),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
// Row(
// children: [
// ProfileCard(
// name: "Sushant",
// position: "Flutter Developer",
// imageAddress: "assets/profile_image.png",
// ),
// ProfileCard(
// name: "Sushant",
// position: "Flutter Developer",
// imageAddress: "assets/profile_image.png",
// ),
// ProfileCard(
// name: "Sushant",
// position: "Flutter Developer",
// imageAddress: "assets/profile_image.png",
// ),
// ProfileCard(
// name: "Sushant",
// position: "Flutter Developer",
// imageAddress: "assets/profile_image.png",
// ),
// ProfileCard(
// name: "Hemang",
// position: "Flutter Developer",
// imageAddress: "assets/profile_image.png",
// ),
// ProfileCard(
// name: "Hemang",
// position: "Flutter Developer",
// imageAddress: "assets/profile_image.png",
// ),
// ProfileCard(
// name: "Hemang",
// position: "Flutter Developer",
// imageAddress: "assets/profile_image.png",
// ),
// ProfileCard(
// name: "Hemang",
// position: "Flutter Developer",
// imageAddress: "assets/profile_image.png",
// )
// ],
// )
