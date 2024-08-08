import 'package:voltage/components/bottom_nav_bar.dart';
import 'package:voltage/components/drawer.dart';
import 'package:flutter/material.dart';
import 'package:voltage/services/auth/auth_service.dart';
import 'package:provider/provider.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  void signOut() async {
    final authservice = Provider.of<AuthService>(context, listen: false);
    try {
      await authservice.signOut();
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.toString())));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                  padding: const EdgeInsets.only(right: 115.0),
                  /* child: Image.asset(
                  'assets/logo1.png',
                  alignment: Alignment.center,
                ),*/
                  child: Text(
                    "SmartPark",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  )),
              IconButton(
                  onPressed: signOut, icon: const Icon(Icons.logout_rounded)),
            ],
          )
        ],
      ),
      bottomNavigationBar: Mybottomnavbar(),
      drawer: Mydrawer(),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Column(
            children: [],
          )
        ],
      ),
    );
  }
}
