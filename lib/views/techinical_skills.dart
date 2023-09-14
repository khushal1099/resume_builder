import 'package:flutter/material.dart';

class techinical extends StatefulWidget {
  const techinical({super.key});

  @override
  State<techinical> createState() => _EducationState();

}

class _EducationState extends State<techinical> {
  List<String> skillList = [];
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
                  'Technical skills',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:70,left: 5),
                child: InkWell(
                    onTap:(){ Navigator.pop(context, 'Hello from Second Screen!');},
                    child: Icon(Icons.arrow_back_ios_new_sharp,color: Colors.white,)),
              ),
            ],
          ),

           Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(top: 30,left: 10,right: 10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(blurRadius: 10, spreadRadius: 0.5)]),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(child: Text("Enter you skill")),
                // ...skillList
                //     .map((e) => Row(
                //           children: [
                //             Expanded(child: TextFormField(
                //               onChanged: (value) {
                //                 e = value;
                //               },
                //             )),
                //             IconButton(
                //                 onPressed: () {
                //                   print("Delete $e");
                //                 },
                //                 icon: Icon(Icons.delete))
                //           ],
                //         ))
                //     .toList(),
                for (int i = 0; i < skillList.length; i++)
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          onChanged: (value) {
                            skillList[i] =value;
                          },
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            print("Delete ${skillList[i]}");
                            skillList.removeAt(i);
                            setState(() {});
                          },
                          icon: Icon(Icons.delete))
                    ],
                  ),

                OutlinedButton(
                    onPressed: () {
                      print(skillList);
                      skillList.add("");

                      setState(() {});
                    },
                    child: Icon(Icons.add))
              ],
            ),
          ),

        ],
      ),
    );
  }
}
