import 'dart:async';

import 'package:flutter/material.dart';
import 'package:login_animated/win.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 String gif='images/home.gif';
 Color border=Colors.white;
 String txt='';
 TextEditingController pass=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(top: 50),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
          Container(
            width: 150,
          height: 150,
          decoration: BoxDecoration(
            border: Border.all(color: border,width: 2),
            borderRadius: BorderRadius.circular(100),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10

              ),
            ],
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(gif),
            )
          ),
          // child: Image.asset(gif,width: 150,height: 150,fit: BoxFit.cover,),
    ),
              SizedBox(height: 10,),
              Text(txt,style: TextStyle(fontSize: 20,color: Colors.green),),
              SizedBox(height: 50,),
              Container(
                width: 300,
                child: TextField(
                  controller: pass,
                  obscureText: true,
                  onChanged:(value){
               setState(() {
                 border=Colors.white;

               });
                    if(value.isEmpty){
                    setState(() {
                      gif='images/home.gif';
                    });
                  }else{
                    setState(() {
                      gif='images/enter.gif';
                    });
                  }
                  },
                  decoration: InputDecoration(
                    labelText: 'password'
                  ),
                ),
              ),
              SizedBox(height: 30,),

              Container(
                child: TextButton(

                  onPressed: () {
                    Alerts.loading(context, "Login...");
if(pass.text=="123456"){
  setState(() {
    gif='images/true.gif';
    border=Colors.green;
    txt='Welcome Back Nasr Al-Rahbi';
  });
}else{
  setState(() {
    gif='images/wrong.gif';
    border=Colors.red;
  });


}
                    Timer(const Duration(seconds: 3), () {
                      Navigator.pop(context);
                    });
                  },
                  child: Text("Login",style: TextStyle(fontSize: 20),),),
              )

            ],
          ),
        ),
      ),
    );
}
}
