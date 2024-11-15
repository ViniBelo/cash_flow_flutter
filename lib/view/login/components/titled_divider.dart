import 'package:flutter/material.dart';

class TitledDivider extends StatelessWidget {
  const TitledDivider({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32, bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(
            child: Divider(
              thickness: 2,
              color: Colors.black,
              endIndent: 5,
            ),
          ),
          Text(title),
          const Expanded(
            child: Divider(
              thickness: 2,
              color: Colors.black,
              indent: 5,
            ),
          ),
        ],
      ),
    );
  }
}
