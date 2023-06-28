import 'package:flutter/material.dart';
import 'package:preferences_app/provider/theme_provider.dart';
import 'package:preferences_app/screens/screens.dart';
import 'package:preferences_app/shared_preferences.dart/preferences.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Preferences.init();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) => Themeprovider(isDarkMode: Preferences.isDarkMode))
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routerName,
      routes: {
        HomeScreen.routerName: (_) => const HomeScreen(),
        SettingsScreen.routerName: (_) => const SettingsScreen(),
      },
      theme: Provider.of<Themeprovider>(context).currentTheme,
    );
  }
}
