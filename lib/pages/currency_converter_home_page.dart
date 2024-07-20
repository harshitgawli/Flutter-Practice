import 'package:flutter/material.dart';


class CurrencyConverterHomePage extends StatefulWidget {
  const CurrencyConverterHomePage({super.key});

  @override
  State<CurrencyConverterHomePage> createState() {
    return _CurrencyConverterPageState();
  }
}

class _CurrencyConverterPageState extends State<CurrencyConverterHomePage> {
  final TextEditingController textEditingController = TextEditingController();
  double res = 0;
  String val = "Welcome Buddy";
  @override
  Widget build(BuildContext context) {

    // this build context tells the location of widget in a widget tree
    //currently it tells the location of CurrencyConverterHomePage widget
    // it is associated with each widget extended by stateless or statefulWidget


    const border = OutlineInputBorder(
        borderSide: BorderSide(
          width: 3,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(50)));
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: const Text("Currency Converter"),
        backgroundColor: const Color.fromRGBO(22, 2, 56, 1),
        foregroundColor: Colors.white,
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(

            val,
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child:  TextField(
                  controller: textEditingController,
                  style:const TextStyle(
                    color: Colors.white60,
                  ),
                  decoration: const InputDecoration(
                    hintText: "Enter amount in USD",
                    hintStyle: TextStyle(
                      color: Colors.white54,
                    ),
                    suffixIcon: Icon(Icons.monetization_on_outlined),
                    suffixIconColor: Colors.green,
                    filled: true,
                    fillColor: Colors.black45,
                    focusedBorder: border,
                    enabledBorder: border,
                  ),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.all(10),
              //   child: TextButton(
              //     onPressed: () {
              //       if (kDebugMode) {
              //         print("button clicked");
              //       }
              //     },
              //     style: const ButtonStyle(
              //         backgroundColor: WidgetStatePropertyAll(Colors.green),
              //         foregroundColor: WidgetStatePropertyAll(Colors.white),
              //         minimumSize:
              //             WidgetStatePropertyAll(Size(double.infinity, 50))),
              //     child: const Text("Convert"),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      res = double.parse(textEditingController.text)*83.52;
                      val = res.toStringAsFixed(3)+" INR";
                    });
                  },
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.green),
                    foregroundColor: WidgetStatePropertyAll(Colors.white),
                    elevation: WidgetStatePropertyAll(15),
                    shadowColor: WidgetStatePropertyAll(Colors.black),
                    minimumSize:
                    WidgetStatePropertyAll(Size(double.infinity, 50)),
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25)))),
                    side: WidgetStatePropertyAll(BorderSide(color: Colors.black ,width: 2)),
                  ),
                  child: const Text("Convert"),
                ),
              ),
              Padding(padding: const EdgeInsets.all(10),
                child: ElevatedButton(onPressed: (){
                  setState(() {
                    res = res / 83.52 ;
                    val = res.toStringAsFixed(3)+" \$";
                  });
                },
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.redAccent,
                      shadowColor: Colors.black,
                      minimumSize: const Size(double.infinity, 50),
                      side: const BorderSide(color: Colors.black ,width: 2)

                  ),
                  child: const Text("Back to USD"),),)
            ],
          )),
    );
  }
}
