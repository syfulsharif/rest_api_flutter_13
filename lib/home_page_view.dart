import 'package:flutter/material.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  int countNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Module 13 REST API Recorded'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Count : ${countNumber.toString()}'),
      ),
      floatingActionButton: Row(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              countNumber += 1;
              setState(() {});
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            width: 18.0,
          ),
          FloatingActionButton(
            onPressed: () {
              countNumber -= 1;
              setState(() {});
            },
            child: const Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}
