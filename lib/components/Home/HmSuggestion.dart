import 'package:flutter/material.dart';

class HmSuggestion extends StatefulWidget {
  HmSuggestion({Key? key}) : super(key: key);

  @override
  _HmSuggestionState createState() => _HmSuggestionState();
}

class _HmSuggestionState extends State<HmSuggestion> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
    child: Container(
       height: 300, 
       color: Colors.amber,
       alignment: Alignment.center,
       child: Text("推荐", style: TextStyle(fontSize: 20, color: Colors.black))
    ));
  }
}