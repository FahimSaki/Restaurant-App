import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:restaurant_saki/screens/landing_screen.dart';
import 'package:restaurant_saki/utils/constants.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
  //Future.delayed(const Duration(seconds: 3)).then((value) {
  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: COLOR_GREEN));
    return LayoutBuilder(builder: (context, constraints) {
      return MaterialApp(
        scrollBehavior: const MaterialScrollBehavior().copyWith(
            dragDevices: {PointerDeviceKind.mouse, PointerDeviceKind.touch}),
        debugShowCheckedModeBanner: false,
        title: 'Redford Restaurant',
        theme: ThemeData(textTheme: defaultText),
        home: const LandingScreen(),
      );
    });
  }
}
