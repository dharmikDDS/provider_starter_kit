import 'package:flutter/material.dart';
import 'package:flutter_provider_starter_kit/providers/demo_provider.dart';
import 'package:flutter_provider_starter_kit/providers/theme_provider.dart';
import 'package:flutter_provider_starter_kit/services/base_api_service.dart';
import 'package:flutter_provider_starter_kit/services/demo_service.dart';
import 'package:flutter_provider_starter_kit/utils/app_themes.dart';
import 'package:flutter_provider_starter_kit/utils/routes/routes.dart';
import 'package:flutter_provider_starter_kit/utils/shared_prefs.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefs().init();
  await BaseRepository.instance.intialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<DemoProvider>(
          create: (_) => DemoProvider(DemoService()),
        ),
        ChangeNotifierProvider<ThemeProvider>(
          create: (_) => ThemeProvider(),
        ),
      ],
      child: buildMyapp(),
    );
  }

  Widget buildMyapp() => ScreenUtilInit(
        ensureScreenSize: true,
        designSize: const Size(390, 844),
        builder: (context, child) =>
            Consumer<ThemeProvider>(builder: (context, provider, _) {
          return MaterialApp.router(
            title: 'Your App Name',
            theme: AppThemes.lightTheme,
            darkTheme: AppThemes.darkTheme,
            routerConfig: AppNavigator.router,
            debugShowCheckedModeBanner: false,
            themeMode: provider.currentThemeMode,
          );
        }),
      );
}
