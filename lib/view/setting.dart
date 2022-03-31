import 'package:appku/view/login.dart';
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
              onPressed:(Logout){

                //Navigator.popUntil(context, ModalRoute.withName('/'));
                Navigator.pop(context,true); // It worked for me instead of above line
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()),);

              },
            ),
          ],
        ),
      ],
    );
  }
  showAlertDialog(BuildContext context) {

    // set up the buttons
    Widget cancelButton = TextButton(
      child: Text("Cancel"),
      onPressed:  () {},
    );
    Widget continueButton = TextButton(
      child: Text("Continue"),
      onPressed:  () {},
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("AlertDialog"),
      content: Text("Would you like to continue learning how to use Flutter alerts?"),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

}


