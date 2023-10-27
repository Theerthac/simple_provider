import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<int> numbers = [1, 2, 3];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          int last = numbers.last;
          setState(() {
            numbers.add(last+1);
          });
        },
        child: Icon(Icons.add),
      ),
      body: Container(
        child: Column(
          children: [
            Text(
              numbers.last.toString(),
              style: TextStyle(fontSize: 20),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: numbers.length,
                itemBuilder: (context, index) {
                  return Text(
                    numbers[index].toString(),
                    style: const TextStyle(fontSize: 20),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
