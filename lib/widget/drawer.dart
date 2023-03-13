import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/widget/drawer_item_widgets.dart';

class HomeDrawer extends StatelessWidget {
  final imageURL = "https://pbs.twimg.com/profile_images/1290632432048365569/jJXn2m1o_400x400.jpg";

  const HomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.deepPurple),
                accountName: Text(
                  "Muhammad Nasir",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                accountEmail: Text(
                  "nproarchitect.inc@gmail.com",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageURL),
                ),
              ),
            ),
            DrawerItems(
              title: "Dashboard",
              drawerIcon: (Icons.dashboard),
            ),
            DrawerItems(
              title: "Models",
              drawerIcon: (Icons.model_training_sharp),
            ),
            DrawerItems(
              title: "Bookmarks",
              drawerIcon: (Icons.bookmarks_sharp),
            ),
            DrawerItems(
              title: "Milestones",
              drawerIcon: (Icons.flag),
            ),
            DrawerItems(
              title: "Labels",
              drawerIcon: (Icons.label_important_outline),
            ),
            DrawerItems(
              title: "Issues",
              drawerIcon: (Icons.bookmark_add_outlined),
            ),
            DrawerItems(
              title: "Documents",
              drawerIcon: (CupertinoIcons.doc),
            ),
            DrawerItems(
              title: "Library",
              drawerIcon: (Icons.library_books),
            ),
            DrawerItems(
              title: "Members",
              drawerIcon: (Icons.people),
            ),
            DrawerItems(
              title: "Notifications",
              drawerIcon: (Icons.notifications_active),
            ),
            DrawerItems(
              title: "Settings",
              drawerIcon: (Icons.settings),
            ),
            DrawerItems(
              title: "Recent Updates",
              drawerIcon: (Icons.system_update_alt_sharp),
            ),
            ListTile(
              leading: Icon(
                Icons.help,
                color: Colors.white,
              ),
              trailing: Icon(Icons.navigate_next_outlined),
              title: Text(
                "Help",
                style: TextStyle(fontSize: 17, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
