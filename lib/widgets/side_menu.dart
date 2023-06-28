import 'package:flutter/material.dart';
import 'package:preferences_app/screens/screens.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const _DrawerHeader(),
          _DrawerItem(
            title: 'Home',
            icon: Icons.pages_rounded,
            ontap: () => Navigator.pushReplacementNamed(context, HomeScreen.routerName),
          ),
          _DrawerItem(
            title: 'People',
            icon: Icons.people,
            ontap: () => Navigator.pushReplacementNamed(context, SettingsScreen.routerName),
          ),
          _DrawerItem(
            title: 'Settings',
            icon: Icons.settings,
            ontap: () => Navigator.pushReplacementNamed(context, SettingsScreen.routerName),
          ),
        ],
      ),
    );
  }
}

class _DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final void Function() ontap;

  const _DrawerItem({
    Key? key,
    required this.title,
    required this.icon,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: () => ontap(),
    );
  }
}

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Container(),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/menu-img.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
