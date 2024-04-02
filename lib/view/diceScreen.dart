import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class DiceScreen extends StatefulWidget {
  const DiceScreen({super.key});

  @override
  State<DiceScreen> createState() => _DiceScreenState();
}

class _DiceScreenState extends State<DiceScreen> {
  String currentDiceImagePath = 'assets/dice_sides_svg_images/default.svg';

  updateDiceImage() {
    Random random = Random();
    int diceNumber = random.nextInt(5) + 1;

    switch (diceNumber) {
      case 1:
        setState(() {
          currentDiceImagePath = 'assets/dice_sides_svg_images/dice1.svg';
        });
        break;
      case 2:
        setState(() {
          currentDiceImagePath = 'assets/dice_sides_svg_images/dice2.svg';
        });
        break;
      case 3:
        setState(() {
          currentDiceImagePath = 'assets/dice_sides_svg_images/dice3.svg';
        });
        break;
      case 4:
        setState(() {
          currentDiceImagePath = 'assets/dice_sides_svg_images/dice4.svg';
        });
        break;
      case 5:
        setState(() {
          currentDiceImagePath = 'assets/dice_sides_svg_images/dice5.svg';
        });
        break;
      case 6:
        setState(() {
          currentDiceImagePath = 'assets/dice_sides_svg_images/dice6.svg';
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Roll Dice',
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                currentDiceImagePath,
                width: 30.w,
                height: 30.h,
              ),
              SizedBox(
                height: 20.h,
              ),
              ElevatedButton(
                onPressed: () {
                  updateDiceImage();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  padding: EdgeInsets.symmetric(
                    horizontal: 3.w,
                    vertical: 1.5.h,
                  ),
                ),
                child: const Text(
                  'Roll Dice',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
