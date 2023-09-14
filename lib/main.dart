// ignore_for_file: prefer_const_constructors

import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resume_builder/build_op.dart';
import 'package:resume_builder/constant.dart';
import 'package:resume_builder/views/Personal_detail.dart';
import 'package:resume_builder/views/Projects.dart';
import 'package:resume_builder/views/archivment.dart';
import 'package:resume_builder/views/contect.dart';
import 'package:resume_builder/views/declaration.dart';
import 'package:resume_builder/views/education.dart';
import 'package:resume_builder/views/experiences.dart';
import 'package:resume_builder/views/hobbies.dart';
import 'package:resume_builder/views/pdf_screen.dart';
import 'package:resume_builder/views/refrences.dart';
import 'package:resume_builder/views/techinical_skills.dart';

import 'views/Carrierobjective.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // App Orientation
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);


    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const MyHomePage(title: 'Resume Builder'),
       routes: {
         // "/": (context) => MyHomePage(title: 'Resume Builder'),
         // homePage: (context) => MyHomePage(title: 'Resume Builder'),
         // build_op: (context) => Buildop(title: 'Resume Workspace'),
         //  contact: (context) => ContactInfo(),
         //  carrierobjective: (context) => carrier_objective(),
         //  persional_detail: (context) => PersionalDetail(),
         //  education: (context) => Education(),
         // experiences: (context) => Experiences(),
         // Techinical: (context) => techinical(),
         // hobbies: (context) => Hobbies(),
         // projects: (context) => Projects(),
         // archivment: (context) => Archivment(),
         // refrences: (context) => Refrences(),
         // declaration: (context) => Declaration(),
         "/": (context) => PDFScreen()
       },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        elevation: 0,
        bottom: AppBar(
          title: Text("Resumes".toUpperCase()),
          elevation: 0,
          centerTitle: true,
        ),
      ),
      body: Center(
        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: <Widget>[
        //     Image.asset("images/empty_box.png", height: 150, width: 150),
        //     const Text(
        //       'You have pushed the button this many times:',
        //     ),
        //   ],
        // ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, build_op);
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
