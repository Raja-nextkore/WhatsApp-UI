import 'package:flutter/material.dart';
import 'package:whatsapp_ui/utils/constant.dart';

class CallsView extends StatelessWidget {
  const CallsView({Key? key}) : super(key: key);

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
                    index.isEven
                        ? Icons.call_received_outlined
                        : Icons.call_made_outlined,
                    color: kPrimaryColor,
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Text(data.sendTime),
                ],
              ),
              trailing: Icon(
                index.isEven ? Icons.call : Icons.videocam_rounded,
                color: kPrimaryColor,
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        onPressed: () {},
        child: const Icon(
          Icons.add_ic_call,
          color: Colors.white,
        ),
      ),
    );
  }
}
