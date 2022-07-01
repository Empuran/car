import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TripPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TripScreen();
  }
}

class TripScreen extends State<TripPage> {
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
                Text("New Trip 🚖",
                    style: GoogleFonts.acme(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(height: 30),
                TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.0)),
                      focusedBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.0)),
                      border: const OutlineInputBorder(),
                      label: Text("Customer name",
                          style: GoogleFonts.abel(fontWeight: FontWeight.bold)),
                      labelStyle: const TextStyle(
                          color: Color.fromARGB(255, 171, 97, 255)),
                    )),
                const SizedBox(height: 10),
                //
                TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.0)),
                      focusedBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.0)),
                      border: const OutlineInputBorder(),
                      label: Text("Phone",
                          style: GoogleFonts.abel(fontWeight: FontWeight.bold)),
                      labelStyle: const TextStyle(
                          color: Color.fromARGB(255, 171, 97, 255)),
                    )),
                const SizedBox(height: 10),
                //
                TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.0)),
                      focusedBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.0)),
                      border: const OutlineInputBorder(),
                      label: Text("No: Guest",
                          style: GoogleFonts.abel(fontWeight: FontWeight.bold)),
                      labelStyle: const TextStyle(
                          color: Color.fromARGB(255, 171, 97, 255)),
                    )),
                const SizedBox(height: 10),
                //
                TextFormField(
                    decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.0)),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.0)),
                  border: const OutlineInputBorder(),
                  label: Text("From",
                      style: GoogleFonts.abel(fontWeight: FontWeight.bold)),
                  labelStyle:
                      const TextStyle(color: Color.fromARGB(255, 171, 97, 255)),
                )),
                const SizedBox(height: 10),
                //
                TextFormField(
                    decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.0)),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.0)),
                  border: const OutlineInputBorder(),
                  label: Text("To",
                      style: GoogleFonts.abel(fontWeight: FontWeight.bold)),
                  labelStyle:
                      const TextStyle(color: Color.fromARGB(255, 171, 97, 255)),
                )),
                const SizedBox(height: 10),
                //
                TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.0)),
                      focusedBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.0)),
                      border: const OutlineInputBorder(),
                      label: Text("Reading",
                          style: GoogleFonts.abel(fontWeight: FontWeight.bold)),
                      labelStyle: const TextStyle(
                          color: Color.fromARGB(255, 171, 97, 255)),
                    )),
                const SizedBox(height: 10),

                SizedBox(
                  height: 50,
                  child: MaterialButton(
                      color: Color.fromARGB(255, 171, 97, 255),
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                          child: Text("Start",
                              style: GoogleFonts.abel(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)))),
                )
              ])),
    );
  }
}
