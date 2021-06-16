import 'package:flutter/material.dart';
import 'package:flutter_application_1/const/app_configs.dart';
import 'package:flutter_application_1/utils/fox_selected_text.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MaterialSelectableTextPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MaterialSelectableTextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home'
        ),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: FoxSelectedText(
            text: AppConfigs.text,
            selectable: true,
            highlight: true,
            onWordTapped: (word, index) {
              ///TODO - Handle when tap on word
            },
            style: TextStyle(
              color: Colors.black,
              decoration: TextDecoration.none,
              fontSize: 35,
            ),
          ),
        ),
      ),
    );
  }
}


