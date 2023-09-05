import 'package:dihliz_app/home/self%20mangement%20of%20invntory/withdrawd/view__details._withdraw_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../provider/withdrawal_provider.dart';

class WithdrawalOfInventoryScreen extends StatefulWidget {
  const WithdrawalOfInventoryScreen({Key? key}) : super(key: key);

  @override
  State<WithdrawalOfInventoryScreen> createState() => _WithdrawalOfInventoryScreenState();
}

class _WithdrawalOfInventoryScreenState extends State<WithdrawalOfInventoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 231, 231, 231),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          centerTitle: true,
          title: const Text('Withdrawal of invntory',
              style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.white,
        ),
        body: Consumer<WithdrawalProvider>(
            builder: (context, value, child) => ListView.builder(
                itemCount: value.Listitem2.length,
                itemBuilder: (context, index) => Container(
                    margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
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
                                child: Text(
                                    '${value.Listitem2[index].name}',
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
                                        'weight :${value.Listitem2[index].weight} ',
                                        style: const TextStyle(
                                            color: Colors.black54,
                                            fontSize: 13),
                                      )),
                                  Text(
                                    'stock Id :${value.Listitem2[index].id}',
                                    style:const TextStyle(
                                        color: Colors.black54,
                                        fontSize: 13),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 20),
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.of(context)
                                            .push(MaterialPageRoute(
                                          builder: (context) =>
                                              ViewDetailsWithdrawScreen(id:   value.Listitem2[index].id),
                                        ));
                                      },
                                      child: const Text('Withdraw stock',
                                          style: TextStyle(
                                              color: Colors.black)),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 96,
                            child: CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(
                                  value.Listitem2[index].imagUrl),
                            ),
                          ),
                        ])))));
  }
}