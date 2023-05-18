import 'package:flutter/material.dart';
import 'package:geeta/models/slok_models.dart';
import 'package:geeta/utils/listslok.dart';

class detailspage extends StatefulWidget {
  const detailspage({Key? key}) : super(key: key);

  @override
  State<detailspage> createState() => _detailspageState();
}

class _detailspageState extends State<detailspage> {

  @override
  void initState() {
      super.initState();
  translation = sloks1[shlokIndex].en;
  }

  @override
  Widget build(BuildContext context) {
    slok1 data1 = ModalRoute.of(context)!.settings.arguments as slok1;

    // translation = data1.en;
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.brown.shade700),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "No. ${data1.verse}",
                  style: TextStyle(fontSize: 20,color: Colors.orange.shade300),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "${data1.san}",
                  style: TextStyle(fontSize: 20,color: Colors.orange.shade300),
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(color: Colors.orange.shade300,),
                Text(
                  "Translation",
                  style: TextStyle(color: Colors.white),
                ),
                Divider(color: Colors.orange.shade300),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(onPressed: (){
                        setState(() {
                          translation = data1.en;
                        });
                      }, child: Center(child: const Text("English")),),
                      ElevatedButton(onPressed: (){
                        setState(() {
                          translation = data1.guj;
                        });
                      }, child: const Text("Gujarati"),),
                      ElevatedButton(onPressed: (){
                        setState(() {
                          translation = data1.hi;
                        });
                      }, child: const Text("Hindi"),),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("$translation",style: TextStyle(fontSize: 20,color: Colors.white),),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.brown.shade700,
    );
  }
}
