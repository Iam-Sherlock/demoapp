import 'package:demoapp/mainpage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Homepage extends StatefulWidget {
  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final TextEditingController textfldin = TextEditingController();

  final TextEditingController textfldin2 = TextEditingController();
  bool istxtfldfilled = false;
  SharedPreferences? _prefs;

  List<String>? fromShared;

  void initState() {
    if (textfldin.text.isNotEmpty && textfldin2.text.isNotEmpty) {
      setState(() {
        istxtfldfilled = true;
      });
    }
    initPrefs();
  }

  void initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
    getPrefs();
  }

  void getPrefs() {
    fromShared = _prefs?.getStringList("usernames");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Homepage'),
        // backgroundColor: Colors.blue,
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
              'Thaalatum Kadhaigal',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              width: 150,
              child: TextField(
                  controller: textfldin,
                  decoration: const InputDecoration(
                      labelText: "Username or Name",
                      hintText: "Username or Name"),
                  onChanged: (text) => setState(() {
                        istxtfldfilled = textfldin.text.isNotEmpty &&
                            textfldin2.text.isNotEmpty;
                      })),
            ),
            SizedBox(
                width: 150,
                child: TextField(
                  controller: textfldin2,
                  decoration: const InputDecoration(
                    labelText: "Email",
                    hintText: "Email",
                  ),
                  onChanged: (text) => setState(() {
                    istxtfldfilled =
                        textfldin.text.isNotEmpty && textfldin2.text.isNotEmpty;
                  }),
                )),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
              onPressed: istxtfldfilled
                  ? () {
                      print("this is from Shared $fromShared");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Mainpage()),
                      );
                    }
                  : null,
              child: Text("Log In"),
            ),
          ],
        ),
      )),
    );
  }
}
