import 'package:flutter/material.dart';

class Experiences extends StatefulWidget {
  const Experiences({super.key});

  @override
  State<Experiences> createState() => _EducationState();
}

class _EducationState extends State<Experiences> {
  MaritalStatus? selectedMaritalStatus;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
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
                  'Experiences',
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
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Company Name',
                  style: TextStyle(fontSize: 18, color: Colors.blue),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'New Enterprise,San Francisco',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  'School/College/Institute',
                  style: TextStyle(fontSize: 18, color: Colors.blue),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Quality Test Engineer',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  'Roles (optional)',
                  style: TextStyle(fontSize: 18, color: Colors.blue),
                ),
                TextFormField(
                  maxLines: 3,
                  decoration: InputDecoration(
                    hintText:
                        'Working With Team Members To Come Up With New Concepts And Product Analysis...',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 25),
                Text(
                  'Employed Status',
                  style: TextStyle(fontSize: 13, color: Colors.black),
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Radio(
                          value: MaritalStatus.currently,
                          groupValue: selectedMaritalStatus,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          onChanged: (value) {
                            selectedMaritalStatus = value;
                            setState(() {});
                            print("value $value");
                          },
                        ),
                        InkWell(
                          onTap: () {
                            selectedMaritalStatus = MaritalStatus.currently;
                            setState(() {});
                          },
                          child: Text(
                            "Previously Employed",
                            style: TextStyle(color: Colors.blue),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          //value: swtich,
                          value: MaritalStatus.previously,
                          groupValue: selectedMaritalStatus,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          onChanged: (value) {
                            selectedMaritalStatus = value;
                            setState(() {});
                            print("value $value");
                          },
                        ),
                        InkWell(
                          onTap: () {
                            selectedMaritalStatus = MaritalStatus.previously;
                            setState(() {});
                          },
                          child: Text(
                            "Currently Employed",
                            style: TextStyle(color: Colors.blue),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Divider(
                  height: 50,
                  color: Colors.grey,
                  thickness: 1,
                ),
                Row(
                  children: [
                    Text(
                      'Date Joined',
                      style: TextStyle(fontSize: 18, color: Colors.black54),
                    ),
                    SizedBox(
                      width: 125,
                    ),
                    Text(
                      'Date Exit',
                      style: TextStyle(fontSize: 18, color: Colors.black54),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: TextField(
                          decoration: InputDecoration(
                              hintText: 'DD/MM/YYYY',
                              hintStyle: TextStyle(color: Colors.grey),
                              contentPadding: EdgeInsets.all(10),
                              border: OutlineInputBorder())),
                    ),
                    SizedBox(width: 90),
                    Flexible(
                      child: TextField(
                          decoration: InputDecoration(
                              hintText: 'DD/MM/YYYY',
                              hintStyle: TextStyle(color: Colors.grey),
                              border: OutlineInputBorder(),
                              contentPadding: EdgeInsets.all(10))),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 130, top: 10),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 15),
                      height: 50,
                      width: 90,
                      color: Colors.blue,
                      child: Text(
                        'Save',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
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

enum MaritalStatus { previously, currently }
