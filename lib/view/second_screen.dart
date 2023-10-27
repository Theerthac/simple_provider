import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  final List<int> numbers;

  const SecondScreen({super.key, required this.numbers});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          int last = widget.numbers.last;
          setState(() {
          widget.numbers.add(last + 1);
          });
        },
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: [
          Text(
            widget.numbers.last.toString(),
            style: const TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 200,
            width: double.maxFinite,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.numbers.length,
              itemBuilder: (context, index) {
                return Text(
                  widget.numbers[index].toString(),
                  style: const TextStyle(fontSize: 20),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
