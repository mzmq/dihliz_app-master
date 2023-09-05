import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:re/provider/stock_provider.dart';

class MyStockScreen extends StatefulWidget {
  const MyStockScreen({Key? key}) : super(key: key);

  @override
  State<MyStockScreen> createState() => _MyStockScreenState();
}

class _MyStockScreenState extends State<MyStockScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 231, 231, 231),
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'My Stock',
            style: TextStyle(color: Colors.black),
          )),
      body: Consumer<stockProvider>(
        builder: (context, value, child) => value.listStock.length == 0
            ? Center(
                child: Image.asset('image/box.png',
                    width: 300, color: Colors.black12),
              )
            : ListView.builder(
                itemCount: value.listStock.length,
                itemBuilder: (context, index) => Container(
                    margin: const EdgeInsets.symmetric(
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
                                margin: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 20),
                                child: Text('${value.listStock[index].name}',
                                    style: const TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w500)),
                              ),
                              Row(
                                children: [
                                  Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 5, horizontal: 20),
                                      child: Text(
                                        'weight :${value.listStock[index].weight} ',
                                        style: const TextStyle(
                                            color: Colors.black54,
                                            fontSize: 13),
                                      )),
                                  Text(
                                    'stock Id :${value.listStock[index].id}',
                                    style: const TextStyle(
                                        color: Colors.black54, fontSize: 13),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 20),
                                    child: TextButton(
                                      onPressed: () {},
                                      child: const Text('Withdraw stock',
                                          style:
                                              TextStyle(color: Colors.black)),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 110,
                            child: CircleAvatar(
                              radius: 40,
                              backgroundImage:
                                  AssetImage(value.listStock[index].imageUrl),
                            ),
                          ),
                        ])),
              ),
      ),
    );
  }
}
