import 'package:flutter/material.dart';

class Hobbies extends StatefulWidget {
  const Hobbies({super.key});

  @override
  State<Hobbies> createState() => _EducationState();
}

class _EducationState extends State<Hobbies> {
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
                  'Interest/Hobbies',
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
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius:BorderRadius.circular(10),
              color: Colors.white
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hobbies',style: TextStyle(
                    fontSize: 18,color: Colors.blue
                ),),
                SizedBox(height: 10,),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter Your Hobbies & Interest',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15),

                Center(
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
