import 'package:flutter/material.dart';

class Topherobutton extends StatelessWidget {
  final String name;
  final VoidCallback btncall;
  const Topherobutton({super.key, required this.name, required this.btncall});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            overlayColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.hovered)) {
                  return Colors.black;
                }
                return null;
              },
            ),
            backgroundColor: MaterialStateProperty.all(Colors.blueGrey)),
        onPressed: btncall,
        child: Text(
          name,
          style: const TextStyle(color: Colors.white),
        ));
  }
}
