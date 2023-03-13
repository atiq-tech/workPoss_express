import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:intl/intl.dart';
import 'package:my_second_poss_app/common_widget/custom_appbar.dart';
import 'package:my_second_poss_app/models/product_list.dart';

class BankTransactionPage extends StatefulWidget {
  const BankTransactionPage({super.key});

  @override
  State<BankTransactionPage> createState() => _BankTransactionPageState();
}

class _BankTransactionPageState extends State<BankTransactionPage> {
  final TextEditingController _DateController = TextEditingController();
  final TextEditingController _accountController = TextEditingController();
  final TextEditingController _transactionTypeController =
      TextEditingController();
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _noteController = TextEditingController();
  String? _selectedAccount;
  List<String> _selectedAccountList = [
    'Happy Product-020069(Agrani Bank)',
    'Happy Product-070075(Brac Bank)',
    'Happy Product C.C-1358(Mercentile Bank)',
    'Happy Product-01009(Jonota Bank)',
    'New Happy Product-20069(Islami Bank)',
    'Happy Product C.D-069(Mercentile Bank)',
    'Happy Product-256524(City Bank)',
  ];
  String? _transactionType;
  List<String> _transactionTypeList = [
    'Deposit',
    'Withdraw',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Bank Transaction"),
      body: InkWell(
        onTap: () {
          FocusManager.instance.primaryFocus!.unfocus();
        },
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              child: Container(
                height: 210.0,
                width: double.infinity,
                padding: EdgeInsets.only(top: 4.0, left: 6.0, right: 6.0),
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
                          flex: 3,
                          child: Text(
                            "Date",
                            style: TextStyle(
                                fontSize: 12.0,
                                color: Color.fromARGB(255, 126, 125, 125)),
                          ),
                        ),
                        Expanded(flex: 1, child: Text(":")),
                        Expanded(
                          flex: 12,
                          child: Container(
                            height: 30.0,
                            width: MediaQuery.of(context).size.width / 2,
                            child: TextField(
                              controller: _DateController,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 10.0),
                                suffixIcon: Icon(
                                  Icons.calendar_month_outlined,
                                  size: 20.0,
                                ),
                                suffixIconColor:
                                    Color.fromARGB(255, 3, 95, 216),
                                border: InputBorder.none,
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromARGB(255, 7, 125, 180),
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromARGB(255, 7, 125, 180),
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                              ),
                              onTap: () async {
                                DateTime? pickdate = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(2000),
                                    lastDate: DateTime(2101));
                                if (pickdate != null) {
                                  setState(() {
                                    _DateController.text =
                                        DateFormat("yyyy-MM-dd")
                                            .format(pickdate);
                                  });
                                }
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 3.0),
                    Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Text(
                            "Account",
                            style: TextStyle(
                                fontSize: 12.0,
                                color: Color.fromARGB(255, 126, 125, 125)),
                          ),
                        ),
                        Expanded(flex: 1, child: Text(":")),
                        Expanded(
                          flex: 12,
                          child: Container(
                            height: 28.0,
                            width: MediaQuery.of(context).size.width / 2,
                            padding: EdgeInsets.only(left: 5.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color.fromARGB(255, 5, 107, 155),
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                hint: Text(
                                  'Select account',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color:
                                          Color.fromARGB(255, 170, 167, 167)),
                                ), // Not necessary for Option 1
                                value: _selectedAccount,
                                onChanged: (newValue) {
                                  setState(() {
                                    _selectedAccount = newValue!;
                                  });
                                },
                                items: _selectedAccountList.map((location) {
                                  return DropdownMenuItem(
                                    child: Text(
                                      location,
                                      style: TextStyle(
                                          fontSize: 12,
                                          color:
                                              Color.fromARGB(255, 31, 30, 30)),
                                    ),
                                    value: location,
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    
                    SizedBox(height: 3.0),
                    Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Text(
                            "Transaction Type",
                            style: TextStyle(
                                fontSize: 12.0,
                                color: Color.fromARGB(255, 126, 125, 125)),
                          ),
                        ),
                        Expanded(flex: 1, child: Text(":")),
                        Expanded(
                          flex: 12,
                          child: Container(
                            height: 28.0,
                            width: MediaQuery.of(context).size.width / 2,
                            padding: EdgeInsets.only(left: 5.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color.fromARGB(255, 5, 107, 155),
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                hint: Text(
                                  'Select Type',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromARGB(255, 100, 98, 98)),
                                ), // Not necessary for Option 1
                                value: _transactionType,
                                onChanged: (newValue) {
                                  setState(() {
                                    _transactionType = newValue!;
                                  });
                                },
                                items: _transactionTypeList.map((location) {
                                  return DropdownMenuItem(
                                    child: Text(
                                      location,
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color.fromARGB(
                                              255, 126, 125, 125)),
                                    ),
                                    value: location,
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 3.0),
                    Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Text(
                            "Amount",
                            style: TextStyle(
                                fontSize: 12.0,
                                color: Color.fromARGB(255, 126, 125, 125)),
                          ),
                        ),
                        Expanded(flex: 1, child: Text(":")),
                        Expanded(
                          flex: 12,
                          child: Container(
                            height: 28.0,
                            width: MediaQuery.of(context).size.width / 2,
                            child: TextField(
                              controller: _amountController,
                              decoration: InputDecoration(
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
                    SizedBox(height: 3.0),
                    Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Text(
                            "Note",
                            style: TextStyle(
                                fontSize: 12.0,
                                color: Color.fromARGB(255, 126, 125, 125)),
                          ),
                        ),
                        Expanded(flex: 1, child: Text(":")),
                        Expanded(
                          flex: 12,
                          child: Container(
                            height: 28.0,
                            width: MediaQuery.of(context).size.width / 2,
                            child: TextField(
                              controller: _noteController,
                              decoration: InputDecoration(
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
                    SizedBox(height: 8.0),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 35.0,
                        width: 180.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromARGB(255, 131, 224, 146),
                              width: 2.0),
                          color: Color.fromARGB(255, 5, 120, 165),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Center(
                            child: Text(
                          "SAVE TRANSACTIONS",
                          style: TextStyle(
                              letterSpacing: 1.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0, right: 5.0),
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
                        flex: 4,
                        child: Container(
                            color: Color.fromARGB(255, 193, 203, 247),
                            child: Center(
                                child: Text(
                              "Tr.Date",
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 10, 10, 10)),
                            )))),
                    Expanded(
                        flex: 5,
                        child: Container(
                            color: Color.fromARGB(255, 250, 195, 195),
                            child: Center(
                                child: Text(
                              "Account Name",
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            )))),
                    Expanded(
                        flex: 4,
                        child: Container(
                            color: Color.fromARGB(255, 190, 200, 255),
                            child: Center(
                                child: Text(
                              "Bank Name",
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            )))),
                    Expanded(
                        flex: 3,
                        child: Container(
                            color: Color.fromARGB(255, 196, 255, 227),
                            child: Center(
                                child: Text(
                              "Amount",
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            )))),
                    Expanded(
                        flex: 3,
                        child: Container(
                            color: Color.fromARGB(255, 203, 193, 255),
                            child: Center(
                                child: Text(
                              "Action",
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ))))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0, right: 5.0),
              child: Container(
                height: 35.0,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                        flex: 4,
                        child: Container(
                            color: Color.fromARGB(255, 209, 215, 241),
                            child: Center(
                                child: Text(
                              "2023-03-12",
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 102, 99, 99)),
                            )))),
                    Expanded(
                        flex: 5,
                        child: Container(
                            color: Color.fromARGB(255, 247, 217, 217),
                            child: Center(
                                child: Text(
                              "Agrani Bank",
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 102, 99, 99)),
                            )))),
                    Expanded(
                        flex: 4,
                        child: Container(
                            color: Color.fromARGB(255, 214, 219, 248),
                            child: Center(
                                child: Text(
                              "58000.0",
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 102, 99, 99)),
                            )))),
                    Expanded(
                        flex: 3,
                        child: Container(
                            color: Color.fromARGB(255, 223, 250, 237),
                            child: Center(
                                child: Text(
                              "12500.0",
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 102, 99, 99)),
                            )))),
                    Expanded(
                        flex: 3,
                        child: Container(
                            color: Color.fromARGB(255, 232, 227, 255),
                            child: Center(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(Icons.edit),
                                  Icon(Icons.delete),
                                ],
                              ),
                            )))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
