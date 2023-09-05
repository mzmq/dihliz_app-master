import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:re/provider/notifi_provider.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 231, 231, 231),
      appBar: AppBar(

          centerTitle: true,
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 231, 231, 231),
          title: Text(
            'Notifications',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          actions: [
            Icon(
              Icons.delete,
              color: Colors.black,
            )
          ]),
      body:

      Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 35, top: 20),
                child:
                    Text(' you have ', style: TextStyle(color: Colors.black54)),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(' 2 Notifications '),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(' Today', style: TextStyle(color: Colors.black54)),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            alignment: Alignment.topLeft,
            child: Text('Today',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500)),
          ),
          Container(
            height: 400,
            child: Consumer<notifiProvider>(
                builder: (context, value, child) => value.listNotifi.length == 0
                    ? Center(
                        child: Column(
                          children: [
                            Text('data'),
                            Image.asset('image/notifi.jpg',width: 200,)
                          ],
                        ),
                      )
                    : ListView.builder(
                  itemCount: value.listNotifi.length,
                        itemBuilder: (context, index) => Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          margin: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: ListTile(
                            title: Text(
                                '${value.listNotifi[index].description}',
                                style: TextStyle(fontSize: 13)),
                            leading: CircleAvatar(
                                backgroundImage: AssetImage('${value.listNotifi[index].imageUrl}') ,
                                radius: 50),
                            trailing: Icon(Icons.delete_forever_rounded),
                          ),
                        ),
                      )),
          ),
        ],
      ),
    );
  }
}
