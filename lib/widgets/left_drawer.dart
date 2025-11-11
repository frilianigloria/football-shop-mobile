import 'package:flutter/material.dart';
import 'package:gearup_store/screens/menu.dart';
import 'package:gearup_store/screens/productlist_form.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: Column(
              children: [
                Text(
                  'GearUp Store',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text("The best football gears.",
                      textAlign: TextAlign.center, 
                      style: TextStyle( 
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      )
                )
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Home'),
            selected: true,
            selectedColor: Theme.of(context).colorScheme.primary,
            selectedTileColor: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
            onTap: () {
              Navigator.pushReplacement(
                context, 
                MaterialPageRoute(
                  builder: (context) => MyHomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.add),
            title: const Text('Add Product'),
            onTap: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ProductFormPage()));
            },
          ),
        ],
      ),
    );
  }
}