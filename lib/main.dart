import 'package:flutter/material.dart';
import 'package:news/myThemData.dart';
import 'package:news/my_provider.dart';
import 'package:news/ui/Home/homeScreen.dart';
import 'package:news/ui/SplashScreen/splash_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


void main() {
  runApp(ChangeNotifierProvider(
      create: (context) {
        return providerApp();
      },
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<providerApp>(context);
    return MaterialApp(
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          Locale('en'), // English, no country code
          Locale('ar'), // Spanish, no country code
        ],
        locale: Locale(provider.AppLanguage),
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        theme: myThemData.lightThem,
        initialRoute: SplashScreen.routeName,
        routes: {
          SplashScreen.routeName: (context) => SplashScreen(),
          HomeScreen.routeName: (context) => HomeScreen(),
        });
  }
}
