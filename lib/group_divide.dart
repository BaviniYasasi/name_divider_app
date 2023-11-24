import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/gradient_container.dart';

class GroupDivider extends StatefulWidget {
  final List<String> groupMemberList;
  const GroupDivider({Key? key, required this.groupMemberList}) : super(key: key);

  @override
  State<GroupDivider> createState() => _GroupDividerState();
}

class _GroupDividerState extends State<GroupDivider> {
  List<List<String>> groups = [];

  @override
  void initState() {
    super.initState();
    divideMembersToGroups();
  }

  void divideMembersToGroups() {
    widget.groupMemberList.shuffle();

    for (int i = 0; i < widget.groupMemberList.length; i += 5) {
      List<String> group = [];

      for (int j = i; j < i + 5 && j < widget.groupMemberList.length; j++) {
        group.add(widget.groupMemberList[j]);
      }

      while (group.length < 4) {
        int randomIndex = Random().nextInt(widget.groupMemberList.length);
        if (!group.contains(widget.groupMemberList[randomIndex])) {
          group.add(widget.groupMemberList[randomIndex]);
        }
      }

      while (group.length > 6) {
        List<String> newGroup = group.sublist(0, 5);
        groups.add(newGroup);
        group = group.sublist(5);
      }

      groups.add(group);
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Divided Groups"),
      ),
      body: Stack(
        children: [
          const GradientContainer(colors: [Color.fromARGB(255, 113, 159, 59), Color.fromARGB(255, 0, 116, 104)]),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                for (int i = 0; i < groups.length; i++)
                  Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          title: Text(
                            "Group ${i + 1}",
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          textColor: Colors.black,
                        ),
                        for (int j = 0; j < groups[i].length; j++)
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              "${j + 1}) ${groups[i][j]}\n",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
