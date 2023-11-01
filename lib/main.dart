import 'package:flutter/material.dart';

void main() {
  runApp(
      const MaterialApp(
          home: HomeWidget()
      )
  );
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateress vs Stateful'),
      ),
      body: ConstraintWidget(),
    );
  }
}

class ConstraintWidget extends StatelessWidget {
  const ConstraintWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExampleStateless(),
        ExampleStateful(),
      ]
    );
  }
}

class ExampleStateless extends StatelessWidget {
  const ExampleStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.red,
      ),
    );
  }
}

class ExampleStateful extends StatefulWidget {
  const ExampleStateful({super.key});

  @override
  State<ExampleStateful> createState() => _ExampleStatefulState();
}

class _ExampleStatefulState extends State<ExampleStateful> {
  late int index;
  late TextEditingController textEditingController;

  @override
  void initState() {
    super.initState(); // 필수로 넣어야 함.
    index = 5;
    textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            if (index == 5) {
              index = 0;
              return;
            }

            index++;
            // print(index);
          });
        },
        child: Container(
          color: Colors.blue.withOpacity(index/5),
          child: Center(
            child: Text('$index'),
          ),
        ),
      ),
    );
  }
}
