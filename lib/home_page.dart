import 'package:flutter/material.dart';
import 'package:flutter_application_1/name_divider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const DecoratedBox(
          decoration: BoxDecoration(color: Colors.amber),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Random Team Generator ...',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 200,
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const NameDivider(),
              ),
            );
          },
          style: TextButton.styleFrom(
            backgroundColor: Colors.green[300],
            foregroundColor: Colors.black,
            textStyle: const TextStyle(
              fontSize: 28,
              fontFamily: 'AutofillHints.birthday',
              fontWeight: FontWeight.w300,
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.all(10),
            child: Text("Let's Team Up"),
          ),
        ),
      ],
    );
  }
}
