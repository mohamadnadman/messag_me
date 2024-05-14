
import 'package:flutter/material.dart';
import 'package:messagme/src/features/authentication/presentation/login_screen.dart';
import 'package:messagme/widget/myprofile.dart';
class Drawe_bar extends StatelessWidget {
  const Drawe_bar({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(172, 11, 4, 20),
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(200, 11, 4, 20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Image(height: 20,
                  image: AssetImage('assets/images/logo2.png'),
                ),
                SizedBox(height: 10),
                Text('unknown'),
                Text('unknown@hotmail.com'),
                
              ],
            ),
          ),
          SizedBox(height: 20),
          ListTile(
            leading: Icon(Icons.home),
            iconColor: Colors.white,
            title: const Text(
              'My Profile',
              style: TextStyle(fontSize: 17),
            ),
            textColor: Colors.white,
            onTap: () {
               Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyProfile(),),);
            },
          ),
          SizedBox(height: 10),
          ListTile(
            leading: Icon(Icons.group),
            iconColor: Colors.white,
            title: const Text(
              'Groub',
              style: TextStyle(fontSize: 17),
            ),
            textColor: Colors.white,
            onTap: () {
              Navigator.pop(context);
            },
          ),
          SizedBox(height: 10),
          
           ListTile(
            leading: Icon(Icons.favorite),
            iconColor: Colors.white,
            title: const Text(
              'Favorit Barbies',
              style: TextStyle(fontSize: 17),
            ),
            textColor: Colors.white,
            onTap: () {
              Navigator.pop(context);
            },
          ),
          SizedBox(height: 10),
          ListTile(
            leading: Icon(Icons.contact_emergency),
            iconColor: Colors.white,
            title: const Text(
              'Contact ',
              style: TextStyle(fontSize: 17),
            ),
            textColor: Colors.white,
            onTap: () {
              Navigator.pop(context);
            },
          ),
          SizedBox(height: 10),
          ListTile(
            leading: Icon(Icons.settings),
            iconColor: Colors.white,
            title: const Text(
              'Settings',
              style: TextStyle(fontSize: 17),
            ),
            textColor: Colors.white,
            onTap: () {
              Navigator.pop(context);
            },
          ),
          SizedBox(height: 10),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            iconColor: Colors.white,
            title: const Text(
              'Exit',
              style: TextStyle(fontSize: 17),
            ),
            textColor: Colors.white,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
