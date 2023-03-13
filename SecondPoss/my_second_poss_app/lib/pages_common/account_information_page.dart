import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:my_second_poss_app/hive_model/account_info.dart';

class AccountInformationPage extends StatefulWidget {
  const AccountInformationPage({super.key});

  @override
  State<AccountInformationPage> createState() => _AccountInformationPageState();
}

class _AccountInformationPageState extends State<AccountInformationPage> {
  final TextEditingController _accountIdController = TextEditingController();
  final TextEditingController _accountNameController = TextEditingController();
  final TextEditingController _DescriptionController = TextEditingController();

  late final Box boxInfo;

  double h1TextSize = 16.0;
  double h2TextSize = 14.0;

  @override
  void initState() {
    super.initState();
    boxInfo = Hive.box('accountInfo');
  }

  // Delete info from people box
  _deleteProduct(int index) {
    boxInfo.deleteAt(index);
    print('Product deleted from box at index: $index');
  }

  List<String> listitem = [
    'A10003',
    'A30005',
    'A10006',
    'A320009',
  ];
  String dropdownValues = 'A10003';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 5, 114, 165),
        centerTitle: true,
        title: Text("Account Information"),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10.0),
            child: Container(
              height: 170.0,
              width: double.infinity,
              padding: EdgeInsets.only(top: 6.0, left: 10.0, right: 8.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(255, 5, 107, 155),
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Text(
                          "Account Id",
                          style: TextStyle(
                              color: Color.fromARGB(255, 126, 125, 125)),
                        ),
                      ),
                      Expanded(flex: 1, child: Text(":")),
                      Expanded(
                          flex: 11,
                          child: Container(
                            height: 28.0,
                            width: MediaQuery.of(context).size.width / 2,
                            child: TextField(
                              enabled: true,
                              controller: _accountIdController,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 8.0),
                                border: InputBorder.none,
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromARGB(255, 7, 125, 180),
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromARGB(255, 7, 125, 180),
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          )),
                    ],
                  ),
                  SizedBox(height: 5.0),
                  Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Text(
                          "Account Name",
                          style: TextStyle(
                              color: Color.fromARGB(255, 126, 125, 125)),
                        ),
                      ),
                      Expanded(flex: 1, child: Text(":")),
                      Expanded(
                        flex: 11,
                        child: Container(
                          height: 28.0,
                          width: MediaQuery.of(context).size.width / 2,
                          child: TextField(
                            controller: _accountNameController,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 8.0),
                              border: InputBorder.none,
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 7, 125, 180),
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 7, 125, 180),
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.0),
                  Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Text(
                          "Description",
                          style: TextStyle(
                              color: Color.fromARGB(255, 126, 125, 125)),
                        ),
                      ),
                      Expanded(flex: 1, child: Text(":")),
                      Expanded(
                        flex: 11,
                        child: Container(
                          height: 50.0,
                          width: MediaQuery.of(context).size.width / 2,
                          child: TextField(
                            controller: _DescriptionController,
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.only(left: 8.0, top: 1.0),
                              border: InputBorder.none,
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 7, 125, 180),
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 7, 125, 180),
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.0),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: InkWell(
                      onTap: () {
                        AccountInfoDetails accountInfoDetails =
                            AccountInfoDetails(
                                accountId: _accountIdController.text,
                                accountName: _accountNameController.text,
                                description: _DescriptionController.text);
                        boxInfo.add(accountInfoDetails);
                        _accountIdController.text = '';
                        _accountNameController.text = '';
                        _DescriptionController.text = '';
                      },
                      child: Container(
                        height: 35.0,
                        width: 70.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromARGB(255, 173, 241, 179),
                              width: 2.0),
                          color: Color.fromARGB(255, 94, 136, 84),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Center(
                            child: Text(
                          "SAVE",
                          style: TextStyle(
                              letterSpacing: 1.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        )),
                      ),
                    ),
                  ),
               
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Container(
              height: 40.0,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(color: Colors.black38, width: 1)),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {
                        /* Clear the search field */
                      },
                    ),
                    hintText: 'Filter...',
                    border: InputBorder.none),
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.only(left: 5.0, right: 5.0),
            child: Container(
              height: 40.0,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                      flex: 3,
                      child: Container(
                          color: Color.fromARGB(255, 218, 8, 8),
                          child: Center(
                              child: Text(
                            "Account Id",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          )))),
                  Expanded(
                      flex: 4,
                      child: Container(
                          color: Color.fromARGB(255, 63, 69, 104),
                          child: Center(
                              child: Text(
                            "Account Name",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          )))),
                  Expanded(
                      flex: 4,
                      child: Container(
                          color: Color.fromARGB(255, 4, 163, 89),
                          child: Center(
                              child: Text(
                            "Description",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(255, 255, 253, 253)),
                          )))),
                  Expanded(
                      flex: 2,
                      child: Container(
                          color: Color.fromARGB(255, 65, 56, 116),
                          child: Center(
                              child: Text(
                            "Action",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ))))
                ],
              ),
            ),
          ),
          Container(
            height: 320.0,
            width: double.infinity,
            child: ValueListenableBuilder(
              valueListenable: boxInfo.listenable(),
              builder: (context, Box boxInfo, widget) {
                if (boxInfo.isEmpty) {
                  return Center(
                    child: Text('No Product in Cart'),
                  );
                } else {
                  return Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          itemCount: boxInfo.length,
                          itemBuilder: (context, index) {
                            var currentBox = boxInfo;
                            var purchaseitemData = currentBox.getAt(index)!;
                            return Padding(
                              padding: const EdgeInsets.only(
                                  left: 5.0, right: 5.0, top: 1.0),
                              child: Container(
                                height: 35.0,
                                width: double.infinity,
                                child: Row(
                                  children: [
                                    Expanded(
                                        flex: 3,
                                        child: Container(
                                            color: Color.fromARGB(
                                                255, 248, 208, 208),
                                            child: Center(
                                                child: Text(
                                              "${purchaseitemData.accountId}",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  color: Color.fromARGB(
                                                      255, 110, 106, 106)),
                                            )))),
                                    Expanded(
                                        flex: 4,
                                        child: Container(
                                            color: Color.fromARGB(
                                                255, 203, 210, 248),
                                            child: Center(
                                                child: Text(
                                              "${purchaseitemData.accountName}",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  color: Color.fromARGB(
                                                      255, 110, 106, 106)),
                                            )))),
                                    Expanded(
                                        flex: 4,
                                        child: Container(
                                            color: Color.fromARGB(
                                                255, 213, 248, 218),
                                            child: Center(
                                                child: Text(
                                              "${purchaseitemData.description}",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  color: Color.fromARGB(
                                                      255, 110, 106, 106)),
                                            )))),
                                    Expanded(
                                        flex: 2,
                                        child: Container(
                                            color: Color.fromARGB(
                                                255, 215, 209, 247),
                                            child: Center(
                                                child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                InkWell(
                                                  onTap: () {
                                                    showDialog(
                                                        context: context,
                                                        builder: (BuildContext
                                                            context) {
                                                          return Dialog(
                                                            child: Container(
                                                              height: 18.0,
                                                              width: double
                                                                  .infinity,
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      top: 15.0,
                                                                      left:
                                                                          10.0,
                                                                      right:
                                                                          10.0),
                                                              child: Column(
                                                                children: [
                                                                  Row(
                                                                    children: [
                                                                      Expanded(
                                                                        flex: 5,
                                                                        child:
                                                                            Text(
                                                                          "Account Id",
                                                                          style:
                                                                              TextStyle(color: Color.fromARGB(255, 126, 125, 125)),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                          flex:
                                                                              1,
                                                                          child:
                                                                              Text(":")),
                                                                      Expanded(
                                                                          flex:
                                                                              11,
                                                                          child:
                                                                              Container(
                                                                            height:
                                                                                28.0,
                                                                            width:
                                                                                MediaQuery.of(context).size.width / 2,
                                                                            child:
                                                                                TextField(
                                                                              enabled: true,
                                                                              controller: _accountIdController,
                                                                              decoration: InputDecoration(
                                                                                contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
                                                                                border: InputBorder.none,
                                                                                focusedBorder: OutlineInputBorder(
                                                                                  borderSide: BorderSide(
                                                                                    color: Color.fromARGB(255, 7, 125, 180),
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(10.0),
                                                                                ),
                                                                                enabledBorder: OutlineInputBorder(
                                                                                  borderSide: BorderSide(
                                                                                    color: Color.fromARGB(255, 7, 125, 180),
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(10.0),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          )),
                                                                    ],
                                                                  ),
                                                                  SizedBox(
                                                                      height:
                                                                          5.0),
                                                                  Row(
                                                                    children: [
                                                                      Expanded(
                                                                        flex: 5,
                                                                        child:
                                                                            Text(
                                                                          "Account Name",
                                                                          style:
                                                                              TextStyle(color: Color.fromARGB(255, 126, 125, 125)),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                          flex:
                                                                              1,
                                                                          child:
                                                                              Text(":")),
                                                                      Expanded(
                                                                        flex:
                                                                            11,
                                                                        child:
                                                                            Container(
                                                                          height:
                                                                              28.0,
                                                                          width:
                                                                              MediaQuery.of(context).size.width / 2,
                                                                          child:
                                                                              TextField(
                                                                            controller:
                                                                                _accountNameController,
                                                                            decoration:
                                                                                InputDecoration(
                                                                              contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
                                                                              border: InputBorder.none,
                                                                              focusedBorder: OutlineInputBorder(
                                                                                borderSide: BorderSide(
                                                                                  color: Color.fromARGB(255, 7, 125, 180),
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(10.0),
                                                                              ),
                                                                              enabledBorder: OutlineInputBorder(
                                                                                borderSide: BorderSide(
                                                                                  color: Color.fromARGB(255, 7, 125, 180),
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(10.0),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  SizedBox(
                                                                      height:
                                                                          5.0),
                                                                  Row(
                                                                    children: [
                                                                      Expanded(
                                                                        flex: 5,
                                                                        child:
                                                                            Text(
                                                                          "Description",
                                                                          style:
                                                                              TextStyle(color: Color.fromARGB(255, 126, 125, 125)),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                          flex:
                                                                              1,
                                                                          child:
                                                                              Text(":")),
                                                                      Expanded(
                                                                        flex:
                                                                            11,
                                                                        child:
                                                                            Container(
                                                                          height:
                                                                              50.0,
                                                                          width:
                                                                              MediaQuery.of(context).size.width / 2,
                                                                          child:
                                                                              TextField(
                                                                            controller:
                                                                                _DescriptionController,
                                                                            decoration:
                                                                                InputDecoration(
                                                                              contentPadding: EdgeInsets.only(left: 8.0, top: 1.0),
                                                                              border: InputBorder.none,
                                                                              focusedBorder: OutlineInputBorder(
                                                                                borderSide: BorderSide(
                                                                                  color: Color.fromARGB(255, 7, 125, 180),
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(10.0),
                                                                              ),
                                                                              enabledBorder: OutlineInputBorder(
                                                                                borderSide: BorderSide(
                                                                                  color: Color.fromARGB(255, 7, 125, 180),
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(10.0),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  SizedBox(
                                                                      height:
                                                                          5.0),
                                                                  Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomRight,
                                                                    child:
                                                                        InkWell(
                                                                      onTap:
                                                                          () {
                                                                        AccountInfoDetails accountInfoDetails = AccountInfoDetails(
                                                                            accountId:
                                                                                _accountIdController.text,
                                                                            accountName: _accountNameController.text,
                                                                            description: _DescriptionController.text);
                                                                        boxInfo.add(
                                                                            accountInfoDetails);
                                                                        _accountIdController.text =
                                                                            '';
                                                                        _accountNameController.text =
                                                                            '';
                                                                        _DescriptionController.text =
                                                                            '';
                                                                      },
                                                                      child:
                                                                          Container(
                                                                        height:
                                                                            35.0,
                                                                        width:
                                                                            80.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          border: Border.all(
                                                                              color: Color.fromARGB(255, 173, 241, 179),
                                                                              width: 2.0),
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              94,
                                                                              136,
                                                                              84),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        child: Center(
                                                                            child: Text(
                                                                          "Update",
                                                                          style: TextStyle(
                                                                              letterSpacing: 1.0,
                                                                              color: Colors.white,
                                                                              fontWeight: FontWeight.w500),
                                                                        )),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          );
                                                        });
                                                  },
                                                  child: Icon(
                                                    Icons.edit,
                                                    size: 20.0,
                                                    color: Color.fromARGB(
                                                        255, 3, 3, 3),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    _deleteProduct(index);
                                                    setState(() {
                                                      boxInfo.length;
                                                    });
                                                  },
                                                  child: Icon(
                                                    Icons.delete,
                                                    size: 20.0,
                                                    color: Colors.red,
                                                  ),
                                                ),
                                              ],
                                            ))))
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

// Expanded(
//                                                   flex: 1,
//                                                   child: Container(
//                                                     color: Colors.white,
//                                                     child: FloatingActionButton(
//                                                       heroTag: null,
//                                                       onPressed: () {
//                                                         _deleteProduct(index);
//                                                         setState(() {
//                                                           boxInfo.length;
//                                                         });
//                                                       },
//                                                       mini: true,
//                                                       shape:
//                                                           const CircleBorder(),
//                                                       backgroundColor:
//                                                           Colors.white,
//                                                       child: Icon(
//                                                         Icons.delete,
//                                                         color: Color.fromARGB(
//                                                             255, 3, 3, 3),
//                                                       ),
//                                                     ),
//                                                   // ))