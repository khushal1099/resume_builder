import 'package:flutter/material.dart';

class Refrences extends StatefulWidget {
  const Refrences({super.key});

  @override
  State<Refrences> createState() => _EducationState();
}

class _EducationState extends State<Refrences> {
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
                  'References',
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
                  'Reference Name',
                  style: TextStyle(fontSize: 18, color: Colors.blue),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Suresh Shah',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  'Designation',
                  style: TextStyle(fontSize: 18, color: Colors.blue),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Marketing Manager,Id-325336',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  'Organization/Institute',
                  style: TextStyle(fontSize: 18, color: Colors.blue),
                ),
                TextFormField(

                  decoration: InputDecoration(
                    hintText: 'Green Energy Pvt.Ltd',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 25),
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
          )
        ],
      ),
    );
  }
}
