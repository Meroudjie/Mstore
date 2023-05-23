// ignore: file_names
import 'package:flutter/material.dart';
import 'package:store/class/Product.dart';

import '../class/LoginForm.dart';
import '../screen/Login.dart';
import '../screen/ProductList.dart';
import 'LogoutButton.dart';

class CustomDrawer extends StatelessWidget {
  final bool isLoggedIn; // Flag to determine if the user is logged in or not

  const CustomDrawer({
    super.key,
    required this.isLoggedIn,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          ListTile(
            title: const Text('Product List'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProductListPage(),
                ),
              );
            },
          ),
          isLoggedIn
              ? LogoutButton()
              : ListTile(
                  title: const Text('Login'),
                  onTap: () {
                    Navigator.pop(context); // Close the drawer
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                ),
        ],
      ),
    ));
  }
}
