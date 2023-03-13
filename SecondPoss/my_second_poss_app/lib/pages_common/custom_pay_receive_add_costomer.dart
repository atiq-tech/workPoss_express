import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomPayReceiveAddCostom extends StatefulWidget {
  const CustomPayReceiveAddCostom({super.key});

  @override
  State<CustomPayReceiveAddCostom> createState() =>
      _CustomPayReceiveAddCostomState();
}

class _CustomPayReceiveAddCostomState extends State<CustomPayReceiveAddCostom> {
  final TextEditingController _customerIdController = TextEditingController();
  final TextEditingController _customerNameController = TextEditingController();
  final TextEditingController _OwnerNameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _areaController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _officePhoneController = TextEditingController();
  final TextEditingController _previousDueController = TextEditingController();
  final TextEditingController _creditLimitController = TextEditingController();
  final TextEditingController _addAreaController = TextEditingController();

  String lavel = "Retail";
  String? _selectedArea;
  List<String> _selectedAreaList = [
    'Nagorpur',
    'Pabna',
    'Putia',
    'Bonpara',
    'Najirpur',
    'Kisorgong',
    'Shoriotpur',
    'Vobanigong',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 5, 114, 165),
        centerTitle: true,
        title: Text("Customer"),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10.0),
            child: Container(
              height: 380.0,
              width: double.infinity,
              padding: EdgeInsets.only(
                top: 6.0,
                left: 8.0,
                right: 8.0,
              ),
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
                          "Customer Id",
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
                            controller: _customerIdController,
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
                          "Customer Name",
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
                            controller: _customerNameController,
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
                          "Owner Name",
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
                            controller: _OwnerNameController,
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
                          "Address",
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
                            controller: _addressController,
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
                  SizedBox(height: 6.0),
                  Row(
                    children: [
                      Expanded(
                        flex: 6,
                        child: Text(
                          "Area",
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
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              hint: Text(
                                'Select area',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              dropdownColor: Color.fromARGB(255, 231, 251,
                                  255), // Not necessary for Option 1
                              value: _selectedArea,
                              onChanged: (newValue) {
                                setState(() {
                                  _selectedArea = newValue!;
                                });
                              },
                              items: _selectedAreaList.map((location) {
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
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return Dialog(
                                    child: Container(
                                      height: 95.0,
                                      width: double.infinity,
                                      padding: EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          SizedBox(height: 3.0),
                                          Row(
                                            children: [
                                              Expanded(
                                                flex: 4,
                                                child: Text(
                                                  "Add Area :",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Color.fromARGB(
                                                          255, 78, 77, 77)),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 12,
                                                child: Container(
                                                  height: 28.0,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      2,
                                                  child: TextField(
                                                    controller:
                                                        _addAreaController,
                                                    decoration: InputDecoration(
                                                      border: InputBorder.none,
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: Color.fromARGB(
                                                              255, 7, 125, 180),
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: Color.fromARGB(
                                                              255, 7, 125, 180),
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 10.0),
                                          Align(
                                            alignment: Alignment.bottomRight,
                                            child: InkWell(
                                              onTap: () {},
                                              child: Container(
                                                height: 35.0,
                                                width: 80.0,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Color.fromARGB(
                                                          255, 173, 241, 179),
                                                      width: 2.0),
                                                  color: Color.fromARGB(
                                                      255, 94, 136, 84),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                child: Center(
                                                    child: Text(
                                                  "Submit",
                                                  style: TextStyle(
                                                      letterSpacing: 1.0,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                )),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                });
                            // setState(() {
                            //   Navigator.of(context).push(MaterialPageRoute(
                            //       builder: (context) => AreaPage()));
                            // });
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
                  SizedBox(height: 3.0),
                  Row(
                    children: [
                      Expanded(
                        flex: 6,
                        child: Text(
                          "Mobile",
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
                            controller: _mobileController,
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
                          "Office Phone",
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
                            controller: _officePhoneController,
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
                          "Previous Due",
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
                            controller: _previousDueController,
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
                          "Credit Limit",
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
                            controller: _creditLimitController,
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
                  Row(
                    children: [
                      Text(
                        "Customer Type      :",
                        style: TextStyle(
                            color: Color.fromARGB(255, 126, 125, 125)),
                      ),
                      Row(
                        children: [
                          Transform.scale(
                            scale: 1.15,
                            child: Radio(
                                fillColor: MaterialStateColor.resolveWith(
                                  (states) => Color.fromARGB(255, 5, 114, 165),
                                ),
                                value: "Retails",
                                groupValue: lavel,
                                onChanged: (value) {
                                  setState(() {
                                    lavel = value.toString();
                                  });
                                }),
                          ),
                          Text("Retails"),
                        ],
                      ),
                      Row(
                        children: [
                          Transform.scale(
                            scale: 1.15,
                            child: Radio(
                                fillColor: MaterialStateColor.resolveWith(
                                  (states) => Color.fromARGB(255, 5, 114, 165),
                                ),
                                value: "Wholesale",
                                groupValue: lavel,
                                onChanged: (value) {
                                  setState(() {
                                    lavel = value.toString();
                                  });
                                }),
                          ),
                          Text("Wholesale"),
                        ],
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 35.0,
                        width: 80.0,
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
          )
        ],
      ),
    );
  }
}
