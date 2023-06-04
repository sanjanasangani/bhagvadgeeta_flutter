import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../models/slok_models.dart';
import '../../utils/listslok.dart';

class Slokpage extends StatefulWidget {
  const Slokpage({Key? key}) : super(key: key);

  @override
  State<Slokpage> createState() => _SlokpageState();
}

class _SlokpageState extends State<Slokpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${bhagvadgeeta[index]['name']}",
          style: TextStyle(color: Colors.brown.shade700),
        ),
        backgroundColor: Colors.orange.shade50,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 250,
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 5,
                  color: Colors.orange.shade100,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                image: DecorationImage(
                  image: AssetImage(
                    "${bhagvadgeeta[index]['image']}",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      "संक्षेपः",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    Card(
                      color: Colors.orange.shade100,
                      elevation: 3,
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: ListTile(
                          onTap: () {},
                          title: Text(
                            "${sloks[index].chapter_summary_hindi}",
                            style: TextStyle(color: Colors.brown.shade700),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        "श्लोक",
                        style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    (sloks1.isEmpty)
                        ? Container()
                        : ListView.builder(
                            shrinkWrap: true,
                            itemCount: sloks1.length,
                            itemBuilder: (context, i) => Card(
                              shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                              borderOnForeground: false,
                              elevation: 3,
                              child: ListTile(
                                shape: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10), borderSide: BorderSide(color: Colors.transparent)),
                                tileColor: Colors.orange.shade50,
                                onTap: () {
                                  shlokIndex = i;
                                  Navigator.of(context).pushNamed(
                                    'detailspage',
                                    arguments: sloks1[i],
                                  );
                                },
                                leading: Text(
                                  "${sloks1[i].verse}",
                                  style: TextStyle(color: Colors.brown.shade700),
                                ),
                                title: Text(
                                  "${sloks1[i].san}",
                                  style: TextStyle(color: Colors.brown.shade700),
                                ),
                              ),
                            ),
                          ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.brown.shade700,
    );
  }
}
