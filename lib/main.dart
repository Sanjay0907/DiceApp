import 'package:dice_app/view/diceScreen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const DiceApp());
}

class DiceApp extends StatelessWidget {
  const DiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, _, __) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: DiceScreen(),
        );
      },
    );
  }
}
