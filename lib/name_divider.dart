import 'package:flutter/material.dart';
import 'package:flutter_application_1/gradient_container.dart';
import 'package:flutter_application_1/group_divide.dart';

class NameDivider extends StatefulWidget {
  const NameDivider({Key? key}) : super(key: key);

  @override
  State<NameDivider> createState() => _NameDividerState();
}

class _NameDividerState extends State<NameDivider> {
  TextEditingController nameController = TextEditingController();
  List<String> addedNames = [];

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('Name Divider'),
      ),
      body: Stack(
        children: [
          const GradientContainer(colors: [Color.fromARGB(255, 113, 159, 59), Color.fromARGB(255, 0, 116, 104)]),
          Column(
            children: [
              if (addedNames.isNotEmpty)
                Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  color: const Color.fromARGB(255, 129, 195, 248),
                  child: Text(
                    'Added Names: ${addedNames.join(" , ")}',
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
                const SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.all(15),
                child: TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name',
                    hintText: 'Enter Your Name',
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                child: const Text('ADD'),
                onPressed: () {
                  setState(() {
                    addedNames.add(nameController.text);
                    nameController.text = '';
                  });
                },
              ),
              const SizedBox(height: 20),

              ElevatedButton(
                child: const Text('Divide into Group'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GroupDivider(groupMemberList: addedNames),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
