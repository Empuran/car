import 'dart:ui';

import 'package:car/expense.dart';
import 'package:car/trip.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class homePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeScreen();
  }
}

class HomeScreen extends State<homePage> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 60),
                Text("Hi, Jayasankar 👋",
                    style: GoogleFonts.acme(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(height: 20),
                Text("My Trip",
                    style: GoogleFonts.abel(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(height: 10),
                // ROW ONE
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          print("Shedules");
                        },
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              color: const Color.fromARGB(255, 171, 97, 255),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20))),
                          width: MediaQuery.of(context).size.width / 1.8,
                          child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        padding: const EdgeInsets.all(5),
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white),
                                        child: const Icon(Icons.schedule)),
                                    Text("Shedules",
                                        style: GoogleFonts.abel(
                                            fontWeight: FontWeight.bold))
                                  ])),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          print("Service");
                        },
                        child: Container(
                            height: 100,
                            decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(20))),
                            width: MediaQuery.of(context).size.width / 2.8,
                            child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          padding: const EdgeInsets.all(5),
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color.fromARGB(
                                                  255, 171, 97, 255)),
                                          child: const Icon(
                                              Icons.miscellaneous_services)),
                                      Text("Service",
                                          style: GoogleFonts.abel(
                                              fontWeight: FontWeight.bold))
                                    ]))),
                      )
                    ]),
                const SizedBox(height: 10),

                // ROW TWO
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          print("Expense");
                          Get.to(ExpensePage());
                        },
                        child: Container(
                            height: 80,
                            width: MediaQuery.of(context).size.width / 2.8,
                            decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(20))),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("Expense",
                                      style: GoogleFonts.abel(
                                          fontWeight: FontWeight.bold)),
                                  Container(
                                      padding: const EdgeInsets.all(5),
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color.fromARGB(
                                              255, 171, 97, 255)),
                                      child: const Icon(
                                          Icons.attach_money_rounded))
                                ])),
                      ),
                      GestureDetector(
                        onTap: () {
                          print("Lets go");
                          Get.to(TripPage());
                        },
                        child: Container(
                            height: 80,
                            width: MediaQuery.of(context).size.width / 1.8,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                border: Border.all(),
                                color: Color.fromARGB(255, 27, 21, 21),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(20))),
                            child: Text("Let's Go",
                                style: GoogleFonts.abel(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ))),
                      )
                    ]),

                // DATA
              ])),
      bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.white,
          currentIndex: _index,
          onTap: ((value) {
            setState(() {
              _index = value;
            });
          }),
          selectedItemColor: const Color.fromARGB(255, 171, 97, 255),
          selectedLabelStyle: GoogleFonts.abel(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 171, 97, 255)),
          unselectedLabelStyle: GoogleFonts.abel(),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.pie_chart), label: "Dash"),
            BottomNavigationBarItem(icon: Icon(Icons.history), label: "Review"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account")
          ]),
    );
  }
}
