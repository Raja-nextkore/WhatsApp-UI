import 'package:flutter/material.dart';
import 'package:whatsapp_ui/utils/constant.dart';

class StatusView extends StatelessWidget {
  const StatusView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: dummyData.length,
        itemBuilder: (context, index) {
          var data = dummyData[index];
          if (index == 0) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(data.profile),
                  ),
                  title: const Text('My Status'),
                  subtitle: const Text('Tap to add status update'),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Text(
                    'Recent Updates',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            );
          } else if (index == 1) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 3.0,
                        color: Colors.green,
                      ),
                    ),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(data.profile),
                    ),
                  ),
                  title: Text(data.name),
                  subtitle: const Text('8 minutes ago'),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Text(
                    'Viewed Updates',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            );
          } else {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(data.profile),
              ),
              title: Text(data.name),
              subtitle: Text(data.sendTime),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        onPressed: () {},
        child: const Icon(
          Icons.camera_alt_outlined,
          color: Colors.white,
        ),
      ),
    );
  }
}
