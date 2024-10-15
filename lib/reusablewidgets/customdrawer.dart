import 'package:flutter/material.dart';
import 'package:ontime/global/themeprovider.dart';
import 'package:provider/provider.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // Drawer Header (optional, can be customized)
          const UserAccountsDrawerHeader(
            accountName: Text("John Doe"),
            accountEmail: Text("johndoe@example.com"),
            // currentAccountPicture: CircleAvatar(
            //   backgroundImage: AssetImage('assets/profile_pic.png'), // Placeholder image
            // ),
            currentAccountPicture: CircleAvatar(
              child: Icon(
                Icons.person, // User icon
                size: 40, // Adjust the size as needed
                color: Colors.white,
              ),
              backgroundColor: Colors.blue, // Optional background color
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          // Drawer items
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              // Navigate to the Home page or perform other actions
              Navigator.pop(context); // Close the drawer
              // Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen())); // Example navigation
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              // Navigate to the Settings page
              Navigator.pop(context);
              // Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsScreen()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('About'),
            onTap: () {
              // Navigate to the About page
              Navigator.pop(context);
              // Navigator.push(context, MaterialPageRoute(builder: (context) => AboutScreen()));
            },
          ),
          const Divider(), // Add a divider between sections if needed
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Logout'),
            onTap: () {
              // Perform logout action
              Navigator.pop(context);
              // Handle logout logic
            },
          ),
          Switch(
            value: themeProvider.isDarkMode,
            onChanged: (value) {
              themeProvider.toggleTheme(value);
            },
          ),
        ],
      ),
    );
  }
}
