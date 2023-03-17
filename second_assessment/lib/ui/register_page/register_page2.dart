import 'dart:html';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:second_assessment/services.dart';

class RegisterPage2 extends StatefulWidget {
  String firstName;
  String lastName;
  String email;
  String password;
  RegisterPage2(
      {super.key,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.password});

  @override
  State<RegisterPage2> createState() => _RegisterPage2State();
}

class _RegisterPage2State extends State<RegisterPage2> {
  TextEditingController telephoneontroller = TextEditingController();
  TextEditingController addresscontroller = TextEditingController();
  TextEditingController citycontroller = TextEditingController();
  TextEditingController provincecontroller = TextEditingController();
  TextEditingController countrycontroller = TextEditingController();
  TextEditingController imagecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    String? filename;
    return Scaffold(
        body: Scaffold(
      // resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(right: 150),
                        child: Text(
                          "CREATE ACCOUNT",
                          // style: GoogleFonts.rowdies(fontSize: 20),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: 350,
                        child: Container(
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 7,
                                spreadRadius: 5,
                                offset: const Offset(6, 7))
                          ]),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: TextFormField(
                              controller: telephoneontroller,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.amber),
                                    borderRadius: BorderRadius.circular(10)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.amber),
                                    borderRadius: BorderRadius.circular(10)),
                                prefixIcon: const Icon(
                                  Icons.phone,
                                  color: Colors.black,
                                ),
                                prefixStyle:
                                    const TextStyle(color: Colors.amber),
                                labelText: "Telephone",
                                floatingLabelStyle:
                                    const TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        width: 350,
                        child: Container(
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 7,
                                spreadRadius: 5,
                                offset: const Offset(6, 7))
                          ]),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: TextFormField(
                              controller: addresscontroller,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.amber),
                                    borderRadius: BorderRadius.circular(10)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.amber),
                                    borderRadius: BorderRadius.circular(10)),
                                prefixIcon: const Icon(
                                  Icons.home,
                                  color: Colors.black,
                                ),
                                prefixStyle:
                                    const TextStyle(color: Colors.amber),
                                labelText: "Address",
                                floatingLabelStyle:
                                    const TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        width: 350,
                        child: Container(
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 7,
                                spreadRadius: 5,
                                offset: const Offset(6, 7))
                          ]),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: TextFormField(
                              controller: citycontroller,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.amber),
                                    borderRadius: BorderRadius.circular(10)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.amber),
                                    borderRadius: BorderRadius.circular(10)),
                                prefixIcon: const Icon(
                                  Icons.location_city,
                                  color: Colors.black,
                                ),
                                prefixStyle:
                                    const TextStyle(color: Colors.amber),
                                labelText: "City",
                                floatingLabelStyle:
                                    const TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        width: 350,
                        child: Container(
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 7,
                                spreadRadius: 5,
                                offset: const Offset(6, 7))
                          ]),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: TextFormField(
                              controller: provincecontroller,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.amber),
                                    borderRadius: BorderRadius.circular(10)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.amber),
                                    borderRadius: BorderRadius.circular(10)),
                                prefixIcon: const Icon(
                                  Icons.map,
                                  color: Colors.black,
                                ),
                                prefixStyle:
                                    const TextStyle(color: Colors.amber),
                                labelText: "Province",
                                floatingLabelStyle:
                                    const TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        width: 350,
                        child: Container(
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 7,
                                spreadRadius: 5,
                                offset: const Offset(6, 7))
                          ]),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: TextFormField(
                              controller: countrycontroller,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.amber),
                                    borderRadius: BorderRadius.circular(10)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.amber),
                                    borderRadius: BorderRadius.circular(10)),
                                prefixIcon: const Icon(
                                  Icons.flag,
                                  color: Colors.black,
                                ),
                                prefixStyle:
                                    const TextStyle(color: Colors.amber),
                                labelText: "Country",
                                floatingLabelStyle:
                                    const TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 300,
                            child: Container(
                              decoration: BoxDecoration(boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    blurRadius: 7,
                                    spreadRadius: 5,
                                    offset: const Offset(6, 7))
                              ]),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                child: InkWell(
                                  onTap: () {},
                                  child: TextFormField(
                                    controller: imagecontroller,
                                    enabled: false,
                                    readOnly: true,
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.amber),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.amber),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      prefixIcon: const Icon(
                                        Icons.image,
                                        color: Colors.black,
                                      ),
                                      prefixStyle:
                                          const TextStyle(color: Colors.amber),
                                      labelText: filename ?? 'Image',
                                      floatingLabelStyle:
                                          const TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                FileUploadInputElement uploadInput =
                                    FileUploadInputElement();
                                uploadInput.click();

                                uploadInput.onChange.listen((e) {
                                  final files = uploadInput.files;
                                  if (files!.length == 1) {
                                    final file = files[0];
                                    setState(() {
                                      filename = file.name;
                                    });
                                  }
                                });
                              },
                              child: Icon(Icons.add),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.amber),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 230),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.amber.withOpacity(0.5),
                              blurRadius: 5,
                              spreadRadius: 2,
                              offset: const Offset(1, 2))
                        ]),
                    child: SizedBox(
                        width: 120,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(),
                              backgroundColor: Colors.amber),
                          onPressed: () {},
                          child: const Text("Sign Up"),
                        )),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 15),
            child: Align(
                alignment: Alignment.bottomCenter,
                child: (MediaQuery.of(context).viewInsets.bottom != 0)
                    ? Container()
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Already have an account?"),
                          InkWell(
                            child: Text(
                              " Sign In",
                              style: TextStyle(color: Colors.amber[800]),
                            ),
                            onTap: () {},
                          ),
                        ],
                      )),
          ),
        ],
      ),
    ));
  }
}
