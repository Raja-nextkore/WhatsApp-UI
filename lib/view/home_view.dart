import 'package:flutter/material.dart';
import 'package:whatsapp_ui/view/calls_view.dart';
import 'package:whatsapp_ui/view/camera_view.dart';
import 'package:whatsapp_ui/view/status_view.dart';

import '../utils/constant.dart';
import 'chats_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with SingleTickerProviderStateMixin {
  String selectedMenu = '';
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        // backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          title: const Text(
            'WhatsApp',
            style: TextStyle(
                color: Colors.white,
                fontSize: 22.0,
                fontWeight: FontWeight.w600),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: PopupMenuButton(
                child: const Icon(Icons.more_vert),
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    value: 1,
                    child: Text('New group'),
                  ),
                  const PopupMenuItem(
                    value: 1,
                    child: Text('New broadcast'),
                  ),
                  const PopupMenuItem(
                    value: 1,
                    child: Text('Linked devices'),
                  ),
                  const PopupMenuItem(
                    value: 1,
                    child: Text('Starred messages'),
                  ),
                  const PopupMenuItem(
                    value: 1,
                    child: Text('Payments'),
                  ),
                  const PopupMenuItem(
                    value: 1,
                    child: Text('Settings'),
                  ),
                ],
              ),
            )
          ],
          bottom: TabBar(
            controller: _tabController,
            indicatorColor: kWhiteColor,
            tabs: const [
              Tab(
                child: Icon(Icons.camera_alt_outlined),
              ),
              Tab(
                child: Text('CHATS'),
              ),
              Tab(
                child: Text('STATUS'),
              ),
              Tab(
                child: Text('CALLS'),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          children: const [
            CameraView(),
            ChatsView(),
            StatusView(),
            CallsView(),
          ],
        ),
      ),
    );
  }
}
