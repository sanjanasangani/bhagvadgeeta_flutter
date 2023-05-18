import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../models/slok_models.dart';
import '../../providers/Theme_Providers.dart';
import '../../utils/listslok.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  String? data;
  @override
  void initState() {
    super.initState();
    lodeJSON();
  }

  Future<void> lodeJSON() async {
    data = await rootBundle.loadString('assets/json/slok.json');

    setState(() {});
    List decodeList = jsonDecode(data!);
    sloks = decodeList.map((e) => slok.fromMap(data: e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu,
          color: Colors.white,),
          onPressed: () {},
        ),
        title: Text(
          "Bhagwad Gita",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.brown,
        actions: [
          Switch(
          onChanged: (val) {
    Provider.of<ThemeProvider>(context, listen: false).ChangeTheme();
    },
      value: Provider.of<ThemeProvider>(context).themeModel.isDark,
          )
        ],
      ),
      body: ListView.builder(
        itemCount: sloks.length,
        itemBuilder: (context, i) => Card(
          elevation: 3,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              onTap: () {
                index = i;
                Navigator.of(context).pushNamed('slokpage');
                setState(() {});
              },
              leading: Text("${sloks[i].id}"),
              title: Text("${sloks[i].name}"),
            ),
          ),
        ),
      ),
    );
  }
}
