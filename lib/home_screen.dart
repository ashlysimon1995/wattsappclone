import 'package:flutter/material.dart';
import 'package:wattsappclone/Chats.dart';

class Home_screen extends StatelessWidget {
  const Home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: Text('Whatsapp'),
            actions: [
              Icon(Icons.search),
              Icon(Icons.settings),
            ],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(AppBar().preferredSize.height),
              child: Container(
                child: TabBar(
                    isScrollable: true,
                    labelPadding: EdgeInsets.symmetric(horizontal: 50),
                    tabs: [
                      Tab(
                        text: 'Chats',
                      ),
                      Tab(
                        text: 'Status',
                      ),
                      Tab(
                        text: 'calls',
                      )
                    ]),
              ),
            ),
          ),
          body: TabBarView(children: [Chats()]),
          bottomNavigationBar: BottomNavigationBar(items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.arrow_back), label: 'back'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search')
          ]),
        ));
  }
}
