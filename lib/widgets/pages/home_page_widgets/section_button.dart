
import 'package:flutter/material.dart';

class SectionButton extends StatelessWidget {
  final bool buttonVisiblity;
  final VoidCallback? buttonOnPressed;
  const SectionButton({
    super.key,
    required this.buttonVisiblity,
    this.buttonOnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Visibility(
          visible: buttonVisiblity,
          child: OutlinedButton(
            onPressed: buttonOnPressed,
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.white),
              side: MaterialStateProperty.all(
                const BorderSide(
                  color: Colors.white70,
                  width: 3,
                ),
              ),
            ),
            child: const Text(
              "View",
              style: TextStyle(
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
