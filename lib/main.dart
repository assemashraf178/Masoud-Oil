import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:masoud_oil/routes_manager.dart';
import 'package:permission_handler/permission_handler.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await Permission.location.request();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Masoud Oil',
      theme: ThemeData(
        primarySwatch: const MaterialColor(
          0xFFF2CB62,
          {
            50: Color(0x1AF2CB62),
            100: Color(0x33F2CB62),
            200: Color(0x4DF2CB62),
            300: Color(0x66F2CB62),
            400: Color(0x80F2CB62),
            500: Color(0x99F2CB62),
            600: Color(0xB3F2CB62),
            700: Color(0xCCF2CB62),
            800: Color(0xE6F2CB62),
            900: Color(0xFFF2CB62),
          },
        ),
      ),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ar', ''),
      ],
      onGenerateRoute: RoutesGenerator.generateRoute,
      initialRoute: Routes.splashRoute,
    );
  }
}
