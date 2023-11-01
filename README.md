# flutter_exmple_state

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


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
return const Placeholder();
}
}

