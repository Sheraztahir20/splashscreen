// ignore_for_file: non_constant_identifier_names, constant_identifier_names

import 'package:flutter/material.dart';

import 'drawer_header.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade700,
        title: const Text("Nav_Drawer"),
      ),
      body: Container(),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
                MyDrawerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget MyDrawerList() {
  var currentPage = DrawerSection.dashboard;
  return Container(
    padding: const EdgeInsets.only(top: 15.0),
    child: Column(
      children: [
        menuitems(1, "Dashboard", Icons.dashboard_outlined,
            currentPage == DrawerSection.dashboard ? true : false),
        menuitems(2, "File Queue", Icons.queue,
            currentPage == DrawerSection.file_queue ? true : false),
        menuitems(3, "Doc Queue", Icons.document_scanner,
            currentPage == DrawerSection.doc_queue ? true : false),
        menuitems(4, "Register", Icons.app_registration,
            currentPage == DrawerSection.register ? true : false),
        menuitems(5, "Account", Icons.account_box,
            currentPage == DrawerSection.account ? true : false),
        menuitems(6, "Logout", Icons.logout,
            currentPage == DrawerSection.logout ? true : false),
      ],
    ),
  );
}

Widget menuitems(int id, String title, IconData icon, bool selected) {
  return Material(
    color: selected ? Colors.grey.shade300 : Colors.transparent,
    child: InkWell(
      onTap: () {
        // Implement the onTap behavior if needed
      },
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Expanded(
              child: Icon(
                icon,
                size: 20,
                color: Colors.black,
              ),
            ),
            Expanded(
              flex: 3,
              child: Text(
                title,
                style: const TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

enum DrawerSection {
  dashboard,
  file_queue,
  doc_queue,
  register,
  account,
  logout,
}
