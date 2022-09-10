import 'package:flutter/material.dart';

import '../utils/constant.dart';

class ChatsView extends StatefulWidget {
  const ChatsView({Key? key}) : super(key: key);

  @override
  State<ChatsView> createState() => _ChatsViewState();
}

class _ChatsViewState extends State<ChatsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: dummyData.length,
          itemBuilder: (context, index) {
            var data = dummyData[index];
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(data.profile),
              ),
              title: Text(data.name),
              subtitle: Row(
                children: [
                  Icon(
                    Icons.check,
                    color: index > 4 ? Colors.grey : Colors.green,
                  ),
                  Text(data.lastMessage),
                ],
              ),
              trailing: Text(
                data.sendTime,
                style: const TextStyle(color: Colors.grey),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        onPressed: () {},
        child: const Icon(
          Icons.message,
          color: Colors.white,
        ),
      ),
    );
  }
}
