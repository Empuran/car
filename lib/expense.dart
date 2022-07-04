import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpensePage extends StatefulWidget {
  const ExpensePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return ExpenseScreen();
  }
}

class ExpenseScreen extends State<ExpensePage> {
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
                Container(
                  color: Colors.white,
                  child: Text("Expense 💲",
                      style: GoogleFonts.acme(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    Text(_data[_index],
                        style: GoogleFonts.acme(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        )),
                    IconButton(
                        onPressed: () {
                          Get.defaultDialog(
                              title: "Sort Expense",
                              titleStyle: GoogleFonts.acme(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              content: Container(
                                  width:
                                      MediaQuery.of(context).size.width / 0.5,
                                  height:
                                      MediaQuery.of(context).size.height / 3,
                                  child: ListView.builder(
                                    itemCount: _data.length,
                                    itemBuilder: (context, index) {
                                      return TextButton(
                                          onPressed: (() {
                                            setState(() {
                                              _index = index;
                                              _single_date = DateTime.now();
                                              _second_date = DateTime.now();
                                            });
                                            Get.back();
                                          }),
                                          child: Text(_data[index],
                                              style: GoogleFonts.acme(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              )));
                                    },
                                  )));
                        },
                        icon: const Icon(Icons.arrow_drop_down_outlined))
                  ],
                ),
                const SizedBox(height: 10),
                _index == 4
                    ? SizedBox(
                        height: 50,
                        child: MaterialButton(
                            color: Color.fromARGB(255, 171, 97, 255),
                            onPressed: () => selectFirstDate(context),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                                child: Text(
                                    "${_single_date!.day}-${_single_date!.month}-${_single_date!.year}",
                                    style: GoogleFonts.abel(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)))))
                    : _index == 5
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                  height: 50,
                                  child: MaterialButton(
                                      color: Color.fromARGB(255, 171, 97, 255),
                                      onPressed: () => selectFirstDate(context),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                          child: Text(
                                              "${_single_date!.day}-${_single_date!.month}-${_single_date!.year}",
                                              style: GoogleFonts.abel(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontWeight:
                                                      FontWeight.bold))))),
                              SizedBox(
                                  height: 50,
                                  child: MaterialButton(
                                      color: Color.fromARGB(255, 171, 97, 255),
                                      onPressed: () =>
                                          selectSecondDate(context),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                          child: Text(
                                              "${_second_date!.day}-${_second_date!.month}-${_second_date!.year}",
                                              style: GoogleFonts.abel(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontWeight:
                                                      FontWeight.bold)))))
                            ],
                          )
                        : Container(),
                Expanded(
                  child: ListView.separated(
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 2);
                      },
                      itemCount: _expense.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          tileColor: _expense[index]['type'] == "PAID"
                              ? Color.fromARGB(255, 65, 221, 70)
                              : Colors.orange,
                          title: Text("${_expense[index]['name']}"),
                          leading: Text("${_expense[index]['expense']}"),
                          trailing: Text("${_expense[index]['type']}"),
                        );
                      }),
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

  void selectSecondDate(BuildContext context) async {
    DateTime? selected = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2010),
      lastDate: DateTime(2025),
    );

    setState(() {
      _second_date = selected!;
    });
  }

  final List<String> _data = [
    "Today",
    "Yesterday",
    "This Week",
    "This Month",
    "Single Date",
    "Between Dates"
  ];

  List _expense = [
    {"id": 1, "name": "Rhynoodle", "expense": "19613.57", "type": "UN PAID"},
    {"id": 2, "name": "Yombu", "expense": "33251.70", "type": "PAID"},
    {"id": 3, "name": "Viva", "expense": "85615.96", "type": "PAID"},
    {"id": 4, "name": "Divanoodle", "expense": "7240.09", "type": "PAID"},
    {"id": 5, "name": "Jabbertype", "expense": "8535.67", "type": "PAID"},
    {"id": 6, "name": "Tambee", "expense": "82561.56", "type": "PAID"},
    {"id": 7, "name": "Brainlounge", "expense": "27853.62", "type": "UN PAID"},
    {"id": 8, "name": "Linkbridge", "expense": "95020.93", "type": "PAID"},
    {"id": 9, "name": "Wordpedia", "expense": "83083.83", "type": "UN PAID"},
    {"id": 10, "name": "Realbridge", "expense": "17408.77", "type": "PAID"},
    {"id": 11, "name": "Realcube", "expense": "31301.27", "type": "UN PAID"},
    {"id": 12, "name": "Lazz", "expense": "10167.07", "type": "PAID"},
    {"id": 13, "name": "Voonte", "expense": "95189.03", "type": "PAID"},
    {"id": 14, "name": "Kimia", "expense": "41220.94", "type": "PAID"}
  ];
}
