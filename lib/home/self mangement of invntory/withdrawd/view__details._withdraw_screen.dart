import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../provider/withdrawal_provider.dart';

class ViewDetailsWithdrawScreen extends StatefulWidget {
  final String id;

  ViewDetailsWithdrawScreen({required this.id, Key? key}) : super(key: key);

  @override
  State<ViewDetailsWithdrawScreen> createState() =>
      _ViewDetailsWithdrawScreenState();
}

class _ViewDetailsWithdrawScreenState
    extends State<ViewDetailsWithdrawScreen> {
  String? x;
  var selected;

  @override
  Widget build(BuildContext context) {
    final getDataId = Provider.of<WithdrawalProvider>(context)
        .Listitem2
        .firstWhere((element) => element.id == widget.id);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 231, 231, 231),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          '${getDataId.name}',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('${getDataId.imagUrl}'),
                          radius: 40,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 30, left: 5, bottom: 5),
                        child: Text(
                          '${getDataId.name}',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        child: Text(
                          'Stock ID : ${getDataId.id}',
                          style: TextStyle(color: Colors.black54, fontSize: 13),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 15, left: 5, bottom: 8),
                        child: Text(
                          '${getDataId.deccirption}',
                          style: TextStyle(color: Colors.black54),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 5, left: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 3, vertical: 20),
                        child: Text(
                          'Total quantity stored ',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 15),
                        child: Text(
                          '${getDataId.TotalQ}',
                          style: TextStyle(fontSize: 28),
                        ),
                      ),
                      Container(
                        child: const Text('in the warehouse',
                            style: TextStyle(color: Colors.green)),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        width: 130,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            backgroundColor: MaterialStateProperty.all(
                              Colors.black,
                            ),
                          ),
                          onPressed: () {
                            showModalBottomSheet(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(35),
                              ),
                              context: context,
                              builder: (BuildContext context) {
                                return SizedBox(
                                  height: 800,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.all(8),
                                        alignment: Alignment.center,
                                        child: Text(
                                          'Total quantity stored',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ),
                                      // Add your warehouse details here
                                      // Example:
                                      // Container(
                                      //   margin: const EdgeInsets.symmetric(
                                      //       vertical: 3, horizontal: 30),
                                      //   child: Text('Warehouse Name 1'),
                                      // ),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                          child: const Text('View'),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5, left: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 20),
                        child: const Text(
                          'Warehouse ',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 15),
                        child: Text(
                          '${getDataId.Wh}',
                          style: TextStyle(fontSize: 28),
                        ),
                      ),
                      Container(
                        child: const Text('in the warehouse',
                            style: TextStyle(color: Colors.red)),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        width: 130,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            backgroundColor: MaterialStateProperty.all(
                              Colors.black,
                            ),
                          ),
                          onPressed: () {},
                          child: const Text('View'),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: Radio(
                          fillColor: MaterialStateProperty.all(Colors.black),
                          value: "weight",
                          groupValue: x,
                          onChanged: (val) {
                            setState(() {
                              x = val;
                            });
                          },
                        ),
                      ),
                      const Text("weight", style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Row(
                    children: [
                      Radio(
                        fillColor: MaterialStateProperty.all(Colors.black),
                        value: "wooden pallet",
                        groupValue: x,
                        onChanged: (val) {
                          setState(() {
                            x = val;
                          });
                        },
                      ),
                      const Text("wooden pallet", style: TextStyle(fontSize: 20)),
                    ],
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  label: const Text('Weight', style: TextStyle(color: Colors.black)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              width: double.infinity, // Use double.infinity to fill the available width
              margin: EdgeInsets.symmetric(horizontal: 17, vertical: 15),
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                  labelText: 'Warehouse Name', // Use labelText for the label
                  labelStyle: TextStyle(color: Colors.black),
                  contentPadding: EdgeInsets.symmetric(horizontal: 10), // Adjust label padding
                  border: InputBorder.none, // Remove input border
                ),
                value: selected,
                onChanged: (val) {
                  setState(() {
                    selected = val;
                  });
                },
                items: [
                  DropdownMenuItem(
                    value: 'warehouse1',
                    child: Container(
                      margin: EdgeInsets.only(left: 15), // Adjust left margin
                      child: Text("Warehouse 1"),
                    ),
                  ),
                  DropdownMenuItem(
                    value: 'warehouse2',
                    child: Container(
                      margin: EdgeInsets.only(left: 15), // Adjust left margin
                      child: Text("Warehouse 2"),
                    ),
                  ),
                  DropdownMenuItem(
                    value: 'warehouse3',
                    child: Container(
                      margin: EdgeInsets.only(left: 15), // Adjust left margin
                      child: Text("Warehouse 3"),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 270,
              height: 60,
              margin: const EdgeInsets.only(top: 25),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                onPressed: () {},
                child: const Text('Withdraw Now'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
