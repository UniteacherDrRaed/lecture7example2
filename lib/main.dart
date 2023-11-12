import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("favorite Color"),
        titleTextStyle: const TextStyle(color:Colors.red),
        backgroundColor: Colors.orangeAccent,
        centerTitle: true,
      ),
      body: OutlinedButton.icon(onPressed: (){
          showDialog(context: context,
              barrierColor: Colors.red.shade50,
              barrierDismissible: false,
              builder: (context){
               return  SimpleDialog(
                 title: const Text("favorite Color"),
                 titleTextStyle:const TextStyle(color: Colors.white),
                 titlePadding:const EdgeInsets.all(26),
                 elevation: 14,
                 backgroundColor: Colors.lightBlueAccent,
                 shadowColor: Colors.orangeAccent,
                 contentPadding:const EdgeInsets.all(24),
                 alignment: Alignment.topCenter,
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(29)
                 ),
                 children: [
                   SimpleDialogOption(
                     onPressed: ()
                     {
                       print("Red");
                       Navigator.of(context).pop();
                     },
                     child: const Text("Red",style: TextStyle(color:Colors.white,
                         backgroundColor: Colors.red),),
                   ),
                   SimpleDialogOption(
                     onPressed: ()
                     {
                       print("Green");
                       Navigator.of(context).pop();
                     },
                     child: const Text("Green",style: TextStyle(color:Colors.white,
                     backgroundColor: Colors.green),),
                   )
                 ],
               );
              });
      },
          icon:const Icon(Icons.update),
          label: const Text("favorite color")),
    );
  }
}

