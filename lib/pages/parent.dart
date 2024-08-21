import 'package:flutter/material.dart';
import 'package:login/models/dummydata.dart';


import 'kids_profile.dart';

class ParentDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('P A R E N T  D A S H B O A R D'),
      ),
      body: ListView.builder(
        itemCount: kidsList.length,
        itemBuilder: (ctx, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(kidsList[index].profileImage),
            ),
            title: Text(kidsList[index].name),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => KidProfile(kid: kidsList[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
