// ignore_for_file: unused_field, non_constant_identifier_names, prefer_final_fields
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return AccountScreen();
  }
}

class AccountScreen extends State<AccountPage> {
  int _index = 0;
  var _single_date = DateTime.now();
  var _second_date = DateTime.now();

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
                SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.black),
                          shape: BoxShape.circle,
                          image: const DecorationImage(
                              image: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT124Q4vOYYlEtesD_K63QCu7eHy64pirVOaw&usqp=CAU"),
                              fit: BoxFit.fitHeight)),
                    )),
                const SizedBox(height: 10),
                Container(
                  alignment: Alignment.center,
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  child: Text("Jayasankar Punnakunnil",
                      style: GoogleFonts.acme(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                const SizedBox(height: 10),
                Container(
                  alignment: Alignment.center,
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  child: Text("KL 08 BH 8557",
                      style: GoogleFonts.acme(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                const SizedBox(height: 20),
                Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  child: Text("Vehicle",
                      style: GoogleFonts.acme(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                const SizedBox(height: 10),
                Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  child: Text("TATA ETIOS LIVA",
                      style: GoogleFonts.acme(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  child: Text("Petrole\nManual",
                      style: GoogleFonts.acme(
                        fontSize: 18,
                      )),
                ),
                const SizedBox(height: 16),
                Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  child: Text("MAHIDHRA ALTO 800",
                      style: GoogleFonts.acme(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  child: Text("Petrole\nManual",
                      style: GoogleFonts.acme(
                        fontSize: 18,
                      )),
                ),
                const SizedBox(height: 20),
                Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  child: Text("Contact",
                      style: GoogleFonts.acme(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                const SizedBox(height: 10),
                Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  child: Text("Phone : +91 7012940070\nPhone : +91 9539884696",
                      style: GoogleFonts.acme(
                        fontSize: 18,
                      )),
                ),
                const SizedBox(height: 10),
              ])),
    );
  }

  void selectFirstDate(BuildContext context) async {
    DateTime? selected = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2010),
      lastDate: DateTime(2025),
    );

    setState(() {
      _single_date = selected!;
    });
  }
}
