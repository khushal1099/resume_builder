import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class PersionalDetail extends StatefulWidget {
  const PersionalDetail({super.key});

  @override
  State<PersionalDetail> createState() => _PersionalDetailState();
}

class _PersionalDetailState extends State<PersionalDetail> {
  MaritalStatus? selectedMaritalStatus;
  bool? en = false;
  bool? hi = false;
  bool? gu = false;
  bool swtich = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                alignment: Alignment.center,
                height: 160,
                width: double.infinity,
                color: Colors.blue,
                child: Text(
                  'Persional Details',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70, left: 5),
                child: InkWell(
                    onTap: () {
                      Navigator.pop(context, 'Hello from Second Screen!');
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new_sharp,
                      color: Colors.white,
                    )),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.all(50),
            margin: EdgeInsets.all(30),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(blurRadius: 10, spreadRadius: 0.5)]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    "DOB",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'DD/MM/YYYY',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(),
                  ),
                ),
                Text("Marital Status",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    Radio(
                      value: MaritalStatus.single,
                      groupValue: selectedMaritalStatus,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      onChanged: (value) {
                        selectedMaritalStatus = value;
                        setState(() {});
                        print("value $value");
                      },
                    ),
                    InkWell(
                      onTap: () {
                        selectedMaritalStatus = MaritalStatus.single;
                        setState(() {});
                      },
                      child: Text("Single"),
                    )
                  ],
                ),
                Row(
                  children: [
                    Radio(
                      value: MaritalStatus.married,
                      groupValue: selectedMaritalStatus,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      onChanged: (value) {
                        selectedMaritalStatus = value;
                        setState(() {});
                        print("value $value");
                      },
                    ),
                    InkWell(
                      onTap: () {
                        selectedMaritalStatus = MaritalStatus.married;
                        setState(() {});
                      },
                      child: Text("Married"),
                    )
                  ],
                ),
                Text("Language Known",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    Checkbox(
                      value: en,
                      onChanged: (value) {
                        en = value;
                        setState(() {});
                      },
                    ),
                    InkWell(
                      onTap: () {
                        // en=en!?false:true;
                        en = !en!;
                        setState(() {});
                      },
                      child: Text("English"),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: hi,
                      onChanged: (value) {
                        hi = value;
                        setState(() {});
                      },
                    ),
                    InkWell(
                      onTap: () {
                        // en=en!?false:true;
                        hi = !hi!;
                        setState(() {});
                      },
                      child: Text("Hindi"),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: gu,
                      onChanged: (value) {
                        gu = value;
                        setState(() {});
                      },
                    ),
                    InkWell(
                      onTap: () {
                        // en=en!?false:true;
                        gu = !gu!;
                        setState(() {});
                      },
                      child: Text("Gujrati"),
                    ),
                  ],
                ),
                Text("Nationality",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Indian',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 80,top: 10),

                  child: InkWell(
                    onTap: () {

                    },
                    child: Container(
                      padding: EdgeInsets.only(left: 20,right: 20,top: 15),
                      height: 50,
                      width: 90,
                      color: Colors.blue,
                      child: Text('Save',style:TextStyle(
                        fontSize: 20,color: Colors.white,
                      ),),
                    ),
                  ),

                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

enum MaritalStatus { single, married }
