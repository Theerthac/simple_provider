import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_project/controller/list_provider.dart';
import 'package:simple_project/view/second_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
              Expanded(
                child: ListView.builder(
                  itemCount: value.numbers.length,
                  itemBuilder: (context, index) {
                    return Text(
                      value.numbers[index].toString(),
                      style: const TextStyle(fontSize: 20),
                    );
                  },
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SecondScreen(),
                    ));
                  },
                  child: const Text('NextPage'))
            ],
          ));
    });
  }
}
