import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AdminPanel extends StatefulWidget {
  const AdminPanel({super.key});

  @override
  State<AdminPanel> createState() => _AdminPanelState();
}

class _AdminPanelState extends State<AdminPanel> {
  final TextEditingController firstName = TextEditingController();
  final TextEditingController password = TextEditingController();
  bool istxtfldfilled = false;

  SharedPreferences? _prefs;
  List<String>? usrname;

  @override
  void initState() {
    super.initState();
    _initPrefs();
  }

  void _initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
    _setPrefs();
    _getPrefs();
  }

  void _setPrefs() {
    _prefs?.setStringList("usernames", <String>['Karthi', 'Charu', 'Logan']);
    print("SetPref is Called...");
  }

  void _getPrefs() {
    setState(() {
      usrname = _prefs?.getStringList("usernames");
    });
  }

  void _addPrefs(name){
    _prefs?.setStringList(key, value)
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Admin Panel"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(usrname);
        },
      ),
      body: Center(
          child: Container(
        height: 300,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Theme.of(context).primaryColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Add Users',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              width: 150,
              child: TextField(
                  controller: firstName,
                  decoration: const InputDecoration(
                      labelText: "Username or Name",
                      hintText: "Username or Name"),
                  onChanged: (text) => setState(() {
                        istxtfldfilled = firstName.text.isNotEmpty &&
                            password.text.isNotEmpty;
                      })),
            ),
            SizedBox(
                width: 150,
                child: TextField(
                  controller: password,
                  decoration: const InputDecoration(
                    labelText: "Email",
                    hintText: "Email",
                  ),
                  onChanged: (text) => setState(() {
                    istxtfldfilled =
                        firstName.text.isNotEmpty && password.text.isNotEmpty;
                  }),
                )),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
              onPressed: istxtfldfilled
                  ? () {
                      print("this is from Shared $usrname");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => widget),
                      );
                    }
                  : null,
              child: Text("Add Users"),
            ),
          ],
        ),
      )),
    );
  }
}
