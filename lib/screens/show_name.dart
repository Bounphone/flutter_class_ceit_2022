import 'package:flutter/material.dart';

class ShowNameScreen extends StatefulWidget {
  const ShowNameScreen({Key? key}) : super(key: key);

  @override
  State<ShowNameScreen> createState() => _ShowNameScreenState();
}

class _ShowNameScreenState extends State<ShowNameScreen> {
  String name = "**********";
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About us"),
      ),
      body: Container(
          child: Center(
            child: Column(
              children: [
                TextFormField(controller: controller,),
                SizedBox(height: 20,),
                Text("My name is: ${controller.text.isEmpty ? '***' : controller.text}"),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        name = controller.text;
                      });
                    },
                    child: const Text("Show my name"))
              ],
            ),
          )),
    );
  }
}
