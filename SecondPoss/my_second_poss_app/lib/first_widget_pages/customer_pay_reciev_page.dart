import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:my_second_poss_app/common_widget/custom_appbar.dart';
import 'package:my_second_poss_app/models/product_list.dart';
import 'package:my_second_poss_app/pages_common/custom_pay_receive_add_costomer.dart';

class CustomerPayRecivePage extends StatefulWidget {
  const CustomerPayRecivePage({super.key});
  @override
  State<CustomerPayRecivePage> createState() => _CustomerPayRecivePageState();
}

class _CustomerPayRecivePageState extends State<CustomerPayRecivePage> {
  final TextEditingController _transactionTypeController =
      TextEditingController();
  final TextEditingController _paymentTypeController = TextEditingController();
  final TextEditingController _DueController = TextEditingController();
  final TextEditingController _DateController = TextEditingController();
  final TextEditingController _DescriptionController = TextEditingController();
  final TextEditingController _AmountController = TextEditingController();
  String? _transactionType;
  List<String> _transactionTypeList = [
    'Deposit',
    'Withdraw',
  ];
  String? _paymentType;
  List<String> _paymentTypeList = [
    'Cash',
    'Bank',
  ];
  String? _customerType;
  List<String> _customerTypeList = [
    'Retail',
    'Wholesale',
  ];
  String? _selectedCustomer;
  List<String> customerList = [
    'Atiq',
    'Nitish',
    'Maruf',
    'Mehedi',
    'Nahid',
    'Nuzmul',
    'Joy',
    'Musha'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
        title: "Customer Payment",
      ),
      body: InkWell(
        onTap: () {
          FocusManager.instance.primaryFocus!.unfocus();
        },
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Container(
                height: 320.0,
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
                          flex: 6,
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
                            "Payment Type",
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
                                value: _paymentType,
                                onChanged: (newValue) {
                                  setState(() {
                                    _paymentType = newValue!;
                                  });
                                },
                                items: _paymentTypeList.map((location) {
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
                            "Customer Type",
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
                                value: _customerType,
                                onChanged: (newValue) {
                                  setState(() {
                                    _customerType = newValue!;
                                  });
                                },
                                items: _customerTypeList.map((location) {
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
                    SizedBox(height: 6.0),
                    Row(
                      children: [
                        Expanded(
                          flex: 6,
                          child: Text(
                            "Customer",
                            style: TextStyle(
                                color: Color.fromARGB(255, 126, 125, 125)),
                          ),
                        ),
                        Expanded(flex: 1, child: Text(":")),
                        Expanded(
                          flex: 9,
                          child: Container(
                            height: 30.0,
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
                                  'Select Customer',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ), // Not necessary for Option 1
                                value: _selectedCustomer,
                                onChanged: (newValue) {
                                  setState(() {
                                    _selectedCustomer = newValue!;
                                  });
                                },
                                items: customerList.map((location) {
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
                                        CustomPayReceiveAddCostom()));
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
                    SizedBox(height: 6.0),
                    Row(
                      children: [
                        Expanded(
                          flex: 6,
                          child: Text(
                            "Due",
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
                              controller: _DueController,
                              decoration: InputDecoration(
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
                            "Payment Date",
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
                          flex: 6,
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
                            height: 28.0,
                            width: MediaQuery.of(context).size.width / 2,
                            child: TextField(
                              controller: _DescriptionController,
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
                          flex: 6,
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
                              controller: _AmountController,
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
                                color: Color.fromARGB(255, 88, 204, 91),
                                width: 2.0),
                            color: Color.fromARGB(255, 5, 114, 165),
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
                                color: Color.fromARGB(255, 88, 204, 91),
                                width: 2.0),
                            color: Color.fromARGB(255, 252, 33, 4),
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
                              "Tr.Type",
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
                              "Payment",
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
                              "Customer",
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            )))),
                    Expanded(
                        flex: 4,
                        child: Container(
                            color: Color.fromARGB(255, 119, 2, 90),
                            child: Center(
                                child: Text(
                              "Due",
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 255, 253, 253)),
                            )))),
                    Expanded(
                        flex: 4,
                        child: Container(
                            color: Color.fromARGB(255, 4, 163, 89),
                            child: Center(
                                child: Text(
                              "Date",
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
            SizedBox(height: 1.0),
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
                            color: Color.fromARGB(255, 221, 227, 255),
                            child: Center(
                                child: Text(
                              "Deposit",
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 99, 95, 95)),
                            )))),
                    Expanded(
                        flex: 4,
                        child: Container(
                            color: Color.fromARGB(255, 255, 231, 231),
                            child: Center(
                                child: Text(
                              "Cash",
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 99, 95, 95)),
                            )))),
                    Expanded(
                        flex: 4,
                        child: Container(
                            color: Color.fromARGB(255, 231, 234, 255),
                            child: Center(
                                child: Text(
                              "Wholesale",
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 99, 95, 95)),
                            )))),
                    Expanded(
                        flex: 4,
                        child: Container(
                            color: Color.fromARGB(255, 255, 224, 250),
                            child: Center(
                                child: Text(
                              "50500.0",
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 99, 95, 95)),
                            )))),
                    Expanded(
                        flex: 4,
                        child: Container(
                            color: Color.fromARGB(255, 222, 255, 240),
                            child: Center(
                                child: Text(
                              "2023-03-12",
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 99, 95, 95)),
                            )))),
                    Expanded(
                        flex: 3,
                        child: Container(
                            color: Color.fromARGB(255, 227, 223, 253),
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
