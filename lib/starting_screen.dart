import 'package:easy_localization/easy_localization.dart';
import 'package:evently/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';
import 'package:toggle_switch/toggle_switch.dart';

import 'provider.dart';

class StartingScreen extends StatelessWidget {
  StartingScreen({super.key});
  var provider;
  static const String route = "startingScreen";

  @override
  Widget build(BuildContext context) {
    provider = Provider.of<MyProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/images/evently_logo.png",
          width: 159,
          height: 50,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 28.0),
                child: Image.asset(
                  "assets/images/being-creative.png",
                  width: double.infinity,
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                context.tr('title'),
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Theme.of(context).primaryColor,
                    ),
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                'description'.tr(),
              ),
              SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    context.tr('language'),
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Theme.of(context).primaryColor,
                          fontSize: 20,
                        ),
                  ),
                  ToggleSwitch(
                    minWidth: 70.0,
                    minHeight: 30,
                    initialLabelIndex:
                        context.locale.toString() == 'en' ? 0 : 1,
                    cornerRadius: 20.0,
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey,
                    inactiveFgColor: Colors.white,
                    totalSwitches: 2,
                    icons: [
                      FontAwesomeIcons.flagUsa,
                      MdiIcons.abjadArabic,
                    ],
                    activeBgColors: [
                      [Colors.blue],
                      [Colors.pink]
                    ],
                    onToggle: (index) {
                      index == 1
                          ? context.setLocale(Locale('ar'))
                          : context.setLocale(Locale('en'));
                      print('switched to: $index');
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "theme".tr(),
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Theme.of(context).primaryColor,
                          fontSize: 20,
                        ),
                  ),
                  ToggleSwitch(
                    minWidth: 70.0,
                    minHeight: 30,
                    initialLabelIndex:
                        provider.themeMode == ThemeMode.light ? 0 : 1,
                    cornerRadius: 20.0,
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey,
                    inactiveFgColor: Colors.white,
                    totalSwitches: 2,
                    icons: [
                      MdiIcons.whiteBalanceSunny,
                      MdiIcons.weatherNight,
                    ],
                    activeBgColors: [
                      [Colors.blue],
                      [Colors.pink]
                    ],
                    onToggle: (index) {
                      provider.changeTheme();
                      print('switched to: $index');
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 32,
              ),
              ElevatedButton(
                style: Theme.of(context).elevatedButtonTheme.style,
                onPressed: () {
                  Navigator.pushNamed(context, LoginScreen.route);
                },
                child: Text('start'.tr()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
