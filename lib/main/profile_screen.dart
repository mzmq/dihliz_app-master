import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 231, 231, 231),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 50, horizontal: 15),
                      child: Text(
                        "Profile",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w500),
                      )),
                  Stack(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('image/pers1.jpg'),
                        radius: 92,
                      ),
                      Positioned(
                        child: Icon(Icons.camera_alt),
                        bottom: -5,
                        left: 160,
                      )
                    ],
                  ),
                  Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 17),
                      child: Text(
                        'Moahammed alqannas',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w600),
                      )),
                  Container(
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.black)),
                      onPressed: () {},
                      child: Text('Srttings'),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                width: 350,

                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 107, vertical: 15),
                          child: Text('Presonal Informaion',
                              style: TextStyle(fontSize: 15)),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 7),
                          child: Text('Usrename : Mzmq',
                              style: TextStyle(fontSize: 13)),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          child: Text('Phone : 0795411633',
                              style: TextStyle(fontSize: 13)),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 7),
                          child: Text('Email : ahmadalbasha22@gmail.com',
                              style: TextStyle(fontSize: 13)),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 7),
                          child: Text('Number of werehouses : 2',
                              style: TextStyle(fontSize: 13)),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 7),
                          child: Text('Business name : Mzmq Company ',
                              style: TextStyle(fontSize: 13)),
                        ),
                        Container(
                         margin: EdgeInsets.only(bottom: 10,left: 15,top: 7),
                          child: Text('Subscription ends : 20/10/2024',
                              style: TextStyle(fontSize: 13)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
