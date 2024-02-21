import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Md. Sajjad Hossain',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
            accountEmail: Text('md.sajjad.0516@gmail.com',style: TextStyle(fontSize: 15,)),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("images/profile.png",),
            ),
            // decoration: BoxDecoration(
            //   image: DecorationImage(
            //     image: AssetImage("images/Pizzaw.png"),
            //     fit: BoxFit.cover, // Adjust this based on your design
            //   ),
            // ),
          ),
          // DrawerHeader(
          //     padding: EdgeInsets.zero,
          //     child: UserAccountsDrawerHeader(
          //       decoration: BoxDecoration(
          //         color: Colors.cyanAccent,
          //       ),
          //     ),),
          ListTile(
            leading: const Icon(Icons.home,color: Colors.red,),
            title: const Text('Home',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            onTap: () => print('Home'),
          ),
          ListTile(
            leading: const Icon(Icons.account_box,color: Colors.red,),
            title: const Text('My Account',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            onTap: () => print('My Account'),
          ),
          ListTile(
            leading: const Icon(CupertinoIcons.cart,color: Colors.red,),
            title: const Text('MY Orders',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            onTap: () => print('MY Orders'),
          ),
          ListTile(
            leading: const Icon(Icons.favorite,color: Colors.red,),
            title: const Text('My Wish List',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            onTap: () => print('My Wish List'),
          ),
          ListTile(
            leading: const Icon(Icons.settings,color: Colors.red,),
            title: const Text('Settings',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            onTap: () => print('Settings'),
          ),
          ListTile(
            leading: const Icon(Icons.logout,color: Colors.red,),
            title: const Text('Log Out',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            onTap: () => print('Log Out'),
          ),

        ],
      ),
    );
  }
}
