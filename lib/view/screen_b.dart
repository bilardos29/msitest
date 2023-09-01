import 'package:flutter/material.dart';
import 'package:msitest/view/presenter/data_process.dart';
import 'package:provider/provider.dart';

class ScreenB extends StatefulWidget {
  const ScreenB({Key? key}) : super(key: key);

  @override
  State<ScreenB> createState() => _ScreenBState();
}

class _ScreenBState extends State<ScreenB> {
  late TextEditingController text1;
  late TextEditingController text2;
  late DataProcess presenter;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    text1 = TextEditingController();
    text2 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    presenter = Provider.of<DataProcess>(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
                controller: text1,
                decoration: InputDecoration(hintText: 'Input First Text')),
            SizedBox(height: 8),
            TextField(
                controller: text2,
                decoration: InputDecoration(hintText: 'Input Second Text')),
            SizedBox(height: 12),
            ElevatedButton(
                onPressed: () {
                  presenter.submitData(text1.text, text2.text);
                  Navigator.pop(context);
                },
                child: Text("Submit")),
          ],
        ),
      ),
    );
  }
}
