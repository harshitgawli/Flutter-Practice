import 'package:flutter/material.dart';
import 'package:currency_converter/pages/currency_converter_home_page.dart';

void main(List<String> args) {
  // runApp(Text("hello ,world", textDirection: TextDirection.ltr));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return  const MaterialApp(
      home: CurrencyConverterHomePage(),
    );
  }

}
