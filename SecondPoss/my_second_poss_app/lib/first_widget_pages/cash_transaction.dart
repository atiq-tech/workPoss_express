import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:intl/intl.dart';
import 'package:my_second_poss_app/common_widget/custom_appbar.dart';
import 'package:my_second_poss_app/models/product_list.dart';
import 'package:my_second_poss_app/pages_common/account_information_page.dart';

class CashTransactionPage extends StatefulWidget {
  const CashTransactionPage({super.key});

  @override
  State<CashTransactionPage> createState() => _CashTransactionPageState();
}

class _CashTransactionPageState extends State<CashTransactionPage> {
  final TextEditingController _transactionTypeController =
      TextEditingController();
  final TextEditingController _accountController = TextEditingController();
  final TextEditingController _DateController = TextEditingController();
  final TextEditingController _DescriptionController = TextEditingController();
  final TextEditingController _AmountController = TextEditingController();

  String? _selectedType;
  List<String> _selectedTypeList = [
    'Cash Receive',
    'Cash Payment',
  ];
  String? _selectedAccount;
  List<String> _selectedAccountList = [
    'Auto Vara',
    'Capital',
    'Transport bill',
    'Sallary',
    'Discount',
    'Withdraw',
    'Van Survice',
    'Machine Survice',
    'Factory Rent',
    'Purchase',
    'Truck Vara',
    'Mobile Recharge',
    'Production bill',
    'Interest',
    'Instolment',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Cash Transaction"),
      body: InkWell(
        onTap: () {
          FocusManager.instance.primaryFocus!.unfocus();
        },
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Container(
                height: 250.0,
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
                            "Date",
                            style: TextStyle(
                                color: Color.fromARGB(255, 126, 125, 125)),
                          ),
                        ),
                        Expanded(flex: 1, child: Text(":")),
                        Expanded(
                          flex: 11,
                          child: Container(
                            height: 35.0,
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
                          flex: 5,
                          child: Text(
                            "Transaction Type",
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
                                  ),
                                ),
                                dropdownColor: Color.fromARGB(255, 231, 251,
                                    255), // Not necessary for Option 1
                                value: _selectedType,
                                onChanged: (newValue) {
                                  setState(() {
                                    _selectedType = newValue!;
                                  });
                                },
                                items: _selectedTypeList.map((location) {
                                  return DropdownMenuItem(
                                    child: Text(
                                      location,
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
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
                          flex: 6,
                          child: Text(
                            "Account",
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
                                  ),
                                ),
                                dropdownColor: Color.fromARGB(255, 231, 251,
                                    255), // Not necessary for Option 1
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
                                        fontSize: 14,
                                      ),
                                    ),
                                    value: location,
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 5.0),
                        Expanded(
                          flex: 2,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        AccountInformationPage()));
                              });
                            },
                            child: Container(
                              height: 28.0,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 7, 125, 180),
                                  borderRadius: BorderRadius.circular(5.0),
                                  border: Border.all(
                                      color: Color.fromARGB(255, 75, 196, 201),
                                      width: 1)),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 25.0,
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
                            height: 45.0,
                            width: MediaQuery.of(context).size.width / 2,
                            child: TextField(
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
                    SizedBox(height: 5.0),
                    Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child: Text(
                            "Amount",
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
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 35.0,
                          width: 85.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(255, 75, 196, 201),
                                width: 2.0),
                            color: Color.fromARGB(255, 105, 170, 88),
                            borderRadius: BorderRadius.circular(10.0),
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
                        SizedBox(width: 4.0),
                        Container(
                          height: 35.0,
                          width: 85.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(255, 75, 196, 201),
                                width: 2.0),
                            color: Color.fromARGB(255, 196, 81, 65),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Center(
                              child: Text(
                            "CANCEL",
                            style: TextStyle(
                                letterSpacing: 1.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          )),
                        ),
                      ],
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
                        flex: 4,
                        child: Container(
                            color: Color.fromARGB(255, 67, 86, 168),
                            child: Center(
                                child: Text(
                              "Tr.Id",
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            )))),
                    Expanded(
                        flex: 4,
                        child: Container(
                            color: Color.fromARGB(255, 218, 8, 8),
                            child: Center(
                                child: Text(
                              "Date",
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            )))),
                    Expanded(
                        flex: 4,
                        child: Container(
                            color: Color.fromARGB(255, 63, 69, 104),
                            child: Center(
                                child: Text(
                              "Received",
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            )))),
                    Expanded(
                        flex: 3,
                        child: Container(
                            color: Color.fromARGB(255, 4, 163, 89),
                            child: Center(
                                child: Text(
                              "Paid",
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 255, 253, 253)),
                            )))),
                    Expanded(
                        flex: 3,
                        child: Container(
                            color: Color.fromARGB(255, 65, 56, 116),
                            child: Center(
                                child: Text(
                              "Action",
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 255, 255, 255)),
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
                            color: Color.fromARGB(255, 193, 203, 247),
                            child: Center(
                                child: Text(
                              "TR1002",
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 102, 99, 99)),
                            )))),
                    Expanded(
                        flex: 4,
                        child: Container(
                            color: Color.fromARGB(255, 250, 195, 195),
                            child: Center(
                                child: Text(
                              "2023-03-12",
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 102, 99, 99)),
                            )))),
                    Expanded(
                        flex: 4,
                        child: Container(
                            color: Color.fromARGB(255, 190, 200, 255),
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
                            color: Color.fromARGB(255, 196, 255, 227),
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
                            color: Color.fromARGB(255, 203, 193, 255),
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
