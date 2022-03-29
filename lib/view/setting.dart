import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class Setting extends StatefulWidget{
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting>{
  @override
  Widget build(BuildContext context){
    return SettingsList(
      sections: [
        SettingsSection(
          title: Text('Setting'),
          tiles: <SettingsTile>[
            SettingsTile.navigation(
              leading: Icon(Icons.language),
              title: Text('Language'),
              value: Text('English'),
            ),
            SettingsTile.switchTile(
              onToggle: (value) {},
              initialValue: true,
              leading: Icon(Icons.format_paint),
              title: Text('Enable custom theme'),
            ),
            SettingsTile.navigation(
              leading: Icon(Icons.abc),
              title: Text('Replace Name'),
            ),
            SettingsTile.navigation(
              leading: Icon(Icons.password),
              title: Text('Replace Password'),
            ),
            SettingsTile.navigation(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
            ),
          ],
        ),
      ],
    );
  }
}