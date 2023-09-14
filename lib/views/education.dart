import 'package:flutter/material.dart';

class Education extends StatefulWidget {
  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
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
                  'Education',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:70,left: 5),
                child: InkWell(
                    onTap:(){ Navigator.pop(context, 'Hello from Second Screen!');},
                    child: Icon(Icons.arrow_back_ios_new_sharp,color: Colors.white,)),
              )
            ],
          ),

          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Cource/Degree',style: TextStyle(
                    fontSize: 18,color: Colors.blue
                ),),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'B.Tech Information Technology',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15),
                Text('School/College/Institute',style: TextStyle(
                    fontSize: 18,color: Colors.blue
                ),),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Saurashtra University',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15),
                Text('School/College/Institute',style: TextStyle(
                    fontSize: 18,color: Colors.blue
                ),),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: '70% (or) 7.0 CGPA',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15),
                Text('Year Of Pass',style: TextStyle(
                    fontSize: 18,color: Colors.blue
                ),),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: '2003',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15),

                Padding(
                  padding: const EdgeInsets.only(left: 130,top: 10),

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
