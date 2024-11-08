import 'package:flutter/material.dart';

class CustomSwitch extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final Color borderColor; // Border color for the switch
  final Color activeColor; // Color when switch is on
  final Color inactiveColor;// Color when switch is off


  const CustomSwitch({
    Key? key,
    required this.value,
    required this.onChanged,
    this.borderColor = Colors.white, // Set the default border color to white
    this.activeColor = Colors.green, // Default color when switch is on
    this.inactiveColor = Colors.grey, // Default color when switch is off
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged(!value), // Toggle the value on tap
      child: Container(
        width: 45,
        height: 25,
        decoration: BoxDecoration(
          border: Border.all(color: borderColor), // Use the borderColor here
          borderRadius: BorderRadius.circular(20),
          color: value ? activeColor : inactiveColor, // Background color based on value
        ),
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              left: value ? 15 : 0,
              child: Container(
                width: 30,
                height: 23,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green, // Circle color
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
