import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../model/inventory/inventory_provider.dart';
import 'add_stock_screen.dart';



class EnterInventoryScreen extends StatefulWidget {
  const EnterInventoryScreen({Key? key}) : super(key: key);

  @override
  State<EnterInventoryScreen> createState() => _EnterInventoryScreenState();
}

class _EnterInventoryScreenState extends State<EnterInventoryScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 225, 225, 225),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text("Enter inventory",
              style: TextStyle(
                color: Colors.black,
              )),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.all(25),
                      child: Icon(Icons.filter_list, size: 30),
                    ),
                    Container(
                      margin: EdgeInsets.all(25),
                      height: 60,
                      width: 160,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.black54)),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => AddStockScreen(),
                            ));
                          },
                          child: Text("Add Stock")),
                    )
                  ],
                ),
                Container(
                  height: 582,
                  child: Consumer<InventoryProvider>(
                    builder: (context, value, child) => value.listItem.length == 0
                        ? Center(
                            child: Text('No item found'),
                          )
                        : ListView.builder(
                            itemCount: value.listItem.length,
                            itemBuilder: (context, index) => Container(
                                margin: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 25),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 20),
                                          child: Text(
                                              '${value.listItem[index].name}',
                                              style: TextStyle(
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.w500)),
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                                margin: EdgeInsets.symmetric(
                                                    vertical: 5, horizontal: 20),
                                                child: Text(
                                                  'weight :${value.listItem[index].weight} ',
                                                  style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: 13),
                                                )),
                                            Container(
                                                child: Text(
                                              'stock Id :${value.listItem[index].id}',
                                              style: TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 13),
                                            )),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 5, horizontal: 20),
                                              child: TextButton(
                                                onPressed: () {

                                                                                 },
                                                child: Text('View Details',
                                                    style: TextStyle(
                                                        color: Colors.black)),
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  child: value.listItem[index].icon,
                                                ),
                                                Container(
                                                    child: value
                                                        .listItem[index].status),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      child: CircleAvatar(
                                        radius: 40,
                                        backgroundImage: MemoryImage(
                                            value.listItem[index].imageUrl!),
                                      ),
                                      width: 110,
                                    )
                                  ],
                                )),
                          ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
