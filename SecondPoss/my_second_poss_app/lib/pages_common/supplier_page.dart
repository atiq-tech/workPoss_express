import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SupplierPage extends StatefulWidget {
  const SupplierPage({super.key});

  @override
  State<SupplierPage> createState() => _SupplierPageState();
}

class _SupplierPageState extends State<SupplierPage> {
  final TextEditingController _supplierIdController = TextEditingController();
  final TextEditingController _supplierNameController = TextEditingController();
  final TextEditingController _ownerNameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _previousDueController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 5, 114, 165),
        centerTitle: true,
        title: Text("Supplier"),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(6.0),
            child: Container(
              height: 275.0,
              width: double.infinity,
              padding: EdgeInsets.only(top: 6.0, left: 6.0, right: 6.0),
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
                      const Expanded(
                        flex: 5,
                        child: Text(
                          "Supplier Id",
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
                            controller: _supplierIdController,
                            keyboardType: TextInputType.phone,
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
                  SizedBox(height: 4.0),
                  Row(
                    children: [
                      const Expanded(
                        flex: 5,
                        child: Text(
                          "Supplier Name",
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
                            controller: _supplierNameController,
                            keyboardType: TextInputType.text,
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
                  SizedBox(height: 4.0),
                  Row(
                    children: [
                      const Expanded(
                        flex: 5,
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
                            controller: _ownerNameController,
                            keyboardType: TextInputType.text,
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
                  SizedBox(height: 4.0),
                  Row(
                    children: [
                      const Expanded(
                        flex: 5,
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
                            keyboardType: TextInputType.streetAddress,
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
                  SizedBox(height: 4.0),
                  Row(
                    children: [
                      const Expanded(
                        flex: 5,
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
                            keyboardType: TextInputType.phone,
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
                  SizedBox(height: 4.0),
                  Row(
                    children: [
                      const Expanded(
                        flex: 5,
                        child: Text(
                          "Email",
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
                            controller: _emailController,
                            keyboardType: TextInputType.emailAddress,
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
                  SizedBox(height: 4.0),
                  Row(
                    children: [
                      const Expanded(
                        flex: 5,
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
                            keyboardType: TextInputType.number,
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
                  Align(
                    alignment: Alignment.bottomRight,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 35.0,
                        width: 70.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromARGB(255, 173, 241, 179),
                              width: 2.0),
                          color: Color.fromARGB(255, 75, 90, 131),
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
            padding: const EdgeInsets.only(left: 6.0, right: 6.0),
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
          SizedBox(height: 6.0),
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
                            "Supplier Id",
                            style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          )))),
                  Expanded(
                      flex: 3,
                      child: Container(
                          color: Color.fromARGB(255, 218, 8, 8),
                          child: Center(
                              child: Text(
                            "Supplier",
                            style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          )))),
                  Expanded(
                      flex: 3,
                      child: Container(
                          color: Color.fromARGB(255, 63, 69, 104),
                          child: Center(
                              child: Text(
                            "Person",
                            style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          )))),
                  Expanded(
                      flex: 3,
                      child: Container(
                          color: Color.fromARGB(255, 4, 112, 161),
                          child: Center(
                              child: Text(
                            "Address",
                            style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(255, 255, 253, 253)),
                          )))),
                  Expanded(
                      flex: 5,
                      child: Container(
                          color: Color.fromARGB(255, 4, 163, 89),
                          child: Center(
                              child: Text(
                            "Contact No.",
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
                      flex: 3,
                      child: Container(
                          color: Color.fromARGB(255, 247, 209, 209),
                          child: Center(
                              child: Text(
                            "Hasan Ali",
                            style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(255, 102, 99, 99)),
                          )))),
                  Expanded(
                      flex: 3,
                      child: Container(
                          color: Color.fromARGB(255, 216, 221, 250),
                          child: Center(
                              child: Text(
                            "Iftikar",
                            style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(255, 102, 99, 99)),
                          )))),
                  Expanded(
                      flex: 3,
                      child: Container(
                          color: Color.fromARGB(255, 190, 230, 253),
                          child: Center(
                              child: Text(
                            "Tangail",
                            style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(255, 102, 99, 99)),
                          )))),
                  Expanded(
                      flex: 5,
                      child: Container(
                          color: Color.fromARGB(255, 196, 255, 227),
                          child: Center(
                              child: Text(
                            "01725568923",
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
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
    );
  }
}
