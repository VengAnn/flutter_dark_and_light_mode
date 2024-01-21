import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_dark_mode_ligth_mode/controller/theme_controller.dart';

// ignore: must_be_immutable
class MyMainPage extends StatelessWidget {
  const MyMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Ligth and Dark Mode"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.amber,
              child: const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //
            GetBuilder<ThemsController>(
              builder: (themeController) {
                return CupertinoSwitch(
                  // This bool value toggles the switch.
                  value: themeController.isDarkMode,
                  activeColor: CupertinoColors.activeBlue,
                  onChanged: (bool value) {
                    themeController.toggleTheme();
                    print(themeController.isDarkMode);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
