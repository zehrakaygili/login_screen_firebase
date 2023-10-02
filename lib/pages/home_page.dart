import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Stream Tutorial',
        ),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('persons').snapshots(),
        builder: (context, snapshot) {
          final data = snapshot.data?.docs;

          final names = (data ?? []).map((e) => e.data()['age']).toList();
          return Column(
            children: names.map((e) => Text(e)).toList(),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }
}

// EX 1 - Local Stream
class LocalStreamBuilder extends StatelessWidget {
  LocalStreamBuilder({
    super.key,
  });
  var _counter = 0;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int>(
      stream: Stream.periodic(const Duration(seconds: 1), (computationCount) {
        _counter += 1;
        return _counter;
      }),
      builder: (context, snapshot) {
        final value = snapshot.data ?? 0;
        return SingleChildScrollView(
          child: Column(
            children: List.generate(
              value,
              (index) => Text('$index'),
            ),
          ),
        );
      },
    );
  }
}
