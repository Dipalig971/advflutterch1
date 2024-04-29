import 'package:advflutterch1/screen/change_theme_using_provider/provider/change_theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChangeThemeScreen extends StatelessWidget {
  const ChangeThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios_new),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.add_circle_outline),
          ),
        ],
      ),
      body: Column(
        children: [
          const Align(
            alignment: Alignment.center,
          ),
          const CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage('assets/image/1.png'),
            backgroundColor: Color(0xff003A54),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Testing User',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: ListTile(
              leading: Provider.of<ThemeProvider>(context, listen: true).isDark
                  ? const Icon(Icons.dark_mode)
                  : const Icon(Icons.light_mode),
              title: Provider.of<ThemeProvider>(context, listen: true).isDark
                  ? const Text(
                      'Dark mode',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  : const Text(
                      'Light mode',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
              trailing: Switch(
                value: Provider.of<ThemeProvider>(context, listen: true).isDark,
                onChanged: (value) {
                  Provider.of<ThemeProvider>(context, listen: false)
                      .Changetheme(value);
                },
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: ListTile(
              leading: Icon(Icons.grid_on),
              title: Text('Story',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings and Privacy',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: ListTile(
              leading: Icon(Icons.message),
              title: Text('Help Center',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notification',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
          )
        ],
      ),
    );
  }
}
