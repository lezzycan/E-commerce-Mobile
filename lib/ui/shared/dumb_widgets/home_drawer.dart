import 'package:e_commerce_mobile/core/constants/ecm_color.dart';
import 'package:e_commerce_mobile/ui/shared/dumb_widgets/text.dart';
import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName:  Text('Lezzycan',
            style: TextStyle(color: EcmColors.lightBackgroundColor),), 
            accountEmail: const Text('waheedolalekan23@gmail.com'),
            currentAccountPicture: GestureDetector(
              child:  CircleAvatar(
                backgroundColor: EcmColors.grey,
                child: Icon(Icons.person,
                color: EcmColors.applicatioNBackgroundColor,
                ),
              ),
            ),
            decoration: const BoxDecoration(color: Color.fromARGB(255, 104, 100, 101)),
            ),
               InkWell(
            onTap: () {},
            child:  ListTile(
              iconColor: EcmColors.red,
              textColor: EcmColors.grey,
              leading: const Icon(Icons.home),
              title: Text('Home Page',style: textTheme.bodySmall,),
            ),
          ),
          InkWell(
            onTap: () {},
            child:  ListTile(
              iconColor: EcmColors.red,
              textColor: EcmColors.grey,
              leading: const Icon(Icons.person),
              title: Text('My Account', style: textTheme.bodySmall,),
            ),
          ),
          InkWell(
            onTap: () {},
            child:  ListTile(
              iconColor: EcmColors.red,
              textColor: EcmColors.grey,
              leading: const Icon(Icons.shopping_basket),
              title: Text('My orders',style: textTheme.bodySmall,),
            ),
          ),
          InkWell(
            onTap: () {},
            child:  ListTile(
              iconColor: EcmColors.red,
              textColor: EcmColors.grey,
              leading: const Icon(Icons.dashboard),
              title: Text('Categories', style: textTheme.bodySmall,),
            ),
          ),
          InkWell(
            onTap: () {},
            child:  ListTile(
              iconColor: EcmColors.red,
              textColor: EcmColors.grey,
              leading: const Icon(Icons.favorite),
              title: Text('Favorites', style: textTheme.bodySmall,),
            ),
          ),
          const Divider(),
          InkWell(
            onTap: () {},
            child:  ListTile(
              iconColor: EcmColors.red,
              textColor: EcmColors.grey,
              leading: const Icon(Icons.settings),
              title: TextInput(text: 'Settings', style: textTheme.bodySmall,),
            ),
          ),
          InkWell(
            onTap: () {},
            child:  ListTile(
              iconColor: Colors.blue,
              textColor: EcmColors.grey,
              leading: const Icon(Icons.help),
              title: Text('About', style: textTheme.bodySmall,),
            ),
          ),
        ],
      ),
    );
  }
}