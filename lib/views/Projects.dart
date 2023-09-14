import 'package:flutter/material.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _EducationState();
}

class _EducationState extends State<Projects> {
  bool? c = false;
  bool? cpp = false;
  bool? fu = false;
  bool swtich = false;

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
                  'Projects',
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
                Text('Project Title',style: TextStyle(
                    fontSize: 18,color: Colors.blue
                ),),
                TextField(

                  decoration: InputDecoration(
                    hintText: 'Resume Builder App',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15),
                Text('Technologies',style: TextStyle(
                    fontSize: 18,color: Colors.blue
                ),),

                Row(
                  children: [
                    Checkbox(
                      value: c,
                      onChanged: (value) {
                        c = value;
                        setState(() {});
                      },
                    ),
                    InkWell(
                      onTap: () {
                        // en=en!?false:true;
                        c= !c!;
                        setState(() {});
                      },
                      child: Text("C Programming"),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: cpp,
                      onChanged: (value) {
                        cpp = value;
                        setState(() {});
                      },
                    ),
                    InkWell(
                      onTap: () {
                        // en=en!?false:true;
                        cpp = !cpp!;
                        setState(() {});
                      },
                      child: Text("C++"),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: fu,
                      onChanged: (value) {
                        fu = value;
                        setState(() {});
                      },
                    ),
                    InkWell(
                      onTap: () {
                        // en=en!?false:true;
                        fu = !fu!;
                        setState(() {});
                      },
                      child: Text("Flutter"),
                    ),
                  ],
                ),

                Text('Roles',style: TextStyle(
                    fontSize: 18,color: Colors.blue
                ),),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Organize Team Members,Code Analysis',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15),
                Text('Technologies',style: TextStyle(
                    fontSize: 18,color: Colors.blue
                ),),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: '5 - Programmers',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15),
                Text('Project Description',style: TextStyle(
                    fontSize: 18,color: Colors.blue
                ),),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter Your Project Description',
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
