

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_project/controller/list_provider.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ListProvider>(builder: (context, value, child) {
      return Scaffold(
        appBar: AppBar(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            value.add();
          },
          child: const Icon(Icons.add),
        ),
        body: Column(
          children: [
            Text(
              value.numbers.last.toString(),
              style: const TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 200,
              width: double.maxFinite,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: value.numbers.length,
                itemBuilder: (context, index) {
                  return Text(
                    value.numbers[index].toString(),
                    style: const TextStyle(fontSize: 20),
                  );
                },
              ),
            ),
          ],
        ),
      );
    });
  }
}
