import 'package:flutter/material.dart';
import 'package:msitest/view/presenter/data_process.dart';
import 'package:msitest/view/screen_b.dart';
import 'package:provider/provider.dart';

class ScreenA extends StatefulWidget {
  const ScreenA({Key? key}) : super(key: key);

  @override
  State<ScreenA> createState() => _ScreenAState();
}

class _ScreenAState extends State<ScreenA> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('hasil : ${context.watch<DataProcess>().result}'),
            SizedBox(height: 12),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ScreenB()),
                  );
                },
                child: Text('Go to Screen B')),
          ],
        ),
      ),
    );
  }
}
