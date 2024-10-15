import 'package:flutter/material.dart';
import 'package:ontime/reusablewidgets/customappbar.dart';
import 'package:ontime/reusablewidgets/customdrawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
        return const Scaffold(
      appBar: CustomAppBar(
        title: 'Flutter Dark Mode2',
      ),
      drawer: CustomDrawer(), 

      body: Center(
        child: Text('Toggle the theme using the switch in the AppBar'),
      ),
    );
  }
}