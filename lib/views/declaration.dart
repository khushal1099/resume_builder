import 'package:flutter/material.dart';

class Declaration extends StatefulWidget {
  const Declaration({super.key});

  @override
  State<Declaration> createState() => _EducationState();
}

class _EducationState extends State<Declaration> {
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
                  'Declaration',
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
            margin: EdgeInsets.all(12),
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(blurRadius: 10, spreadRadius: 0.5)]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Declaration',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Switch(
                      value: swtich,
                      onChanged: (value) {
                        swtich = value;
                        setState(() {});
                        print(value);
                      },
                    ),
                  ],
                ),
                if (swtich)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.camera_outlined,
                        size: 30,
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      Divider(
                        height: 50,
                        color: Colors.grey,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Date Joined',
                            style:
                                TextStyle(fontSize: 18, color: Colors.black54),
                          ),
                          SizedBox(
                            width: 115,
                          ),
                          Text(
                            'Place(Interview \n venue/city)',
                            style:
                                TextStyle(fontSize: 18, color: Colors.black54),
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
                                    hintText: 'Eg.surat',
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: OutlineInputBorder(),
                                    contentPadding: EdgeInsets.all(10))),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 130, top: 10),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            padding:
                                EdgeInsets.only(left: 20, right: 20, top: 15),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
