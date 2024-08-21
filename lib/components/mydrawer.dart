import 'package:flutter/material.dart';
import 'package:login/logins/login_page.dart';
import 'package:login/models/book_data.dart';
import 'package:login/pages/book_home.dart';
import 'package:login/pages/parent.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:login/pages/settings_page.dart';
import '../models/kidmodel.dart';
import '../pages/kids_profile.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  final user = FirebaseAuth.instance.currentUser!;

  // Sign user out
  void signUserOut() {
    FirebaseAuth.instance.signOut().then((_) {
      // Navigate to the LoginPage
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage(onTap: null)),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          // Logo
          DrawerHeader(
            child: Image.asset(
              'assets/images/logo1.png',
              width: 100,
              height: 100,
            ),
          ),

          // Home tile
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 25.0),
            child: ListTile(
              title: const Text("H O M E"),
              leading: const Icon(Icons.home),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BooksHome(username: AutofillHints.username,),
                  ),
                );
              },
            ),
          ),

          // Profile
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 25.0),
            child: ListTile(
              title: const Text("P R O F I L E"),
              leading: const Icon(Icons.child_care_rounded),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => KidProfile(
                      kid: Kid(
                        name: 'Alice',
                        profileImage: 'assets/images/profile1.png',
                        recentBooks: allBooks,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          // Parent Dashboard
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 25.0),
            child: ListTile(
              title: const Text("P A R E N T A C C O U N T"),
              leading: const Icon(Icons.home),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ParentDashboard(),
                  ),
                );
              },
            ),
          ),

          // Logout
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 25.0),
            child: ListTile(
              title: const Text("L O G O U T"),
              leading: const Icon(Icons.logout),
              onTap: signUserOut,
            ),
          ),

          // Settings
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 25.0),
            child: ListTile(
              title: const Text("S E T T I N G S"),
              leading: const Icon(Icons.settings),
              onTap: () {
                // Pop drawer
                Navigator.pop(context);

                // Navigate to settings
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingsPage(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
