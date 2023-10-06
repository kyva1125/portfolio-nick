import 'package:flutter/material.dart';
import 'package:flutter_meedu/ui.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'presentation/routes/app_routes.dart';
import 'presentation/routes/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveApp(
      preferDesktop: true,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        key: router.appKey,
        title: "Portafolio Nick",
        navigatorKey: router.navigatorKey,
        navigatorObservers: [
          router.observer,
        ],
        routes: appRoutes,
        initialRoute: Routes.HOME,
        theme: ThemeData(
          useMaterial3: true,
          primarySwatch: const MaterialColor(
            0xFF20232F,
            <int, Color>{
              50: Color(0xFFECEFF1),
              100: Color(0xFFCFD8DC),
              200: Color(0xFFB0BEC5),
              300: Color(0xFF90A4AE),
              400: Color(0xFF78909C),
              500: Color(0xFF607D8B),
              600: Color(0xFF546E7A),
              700: Color(0xFF455A64),
              800: Color(0xFF37474F),
              900: Color(0xFF263238),
            },
          )
        ),
      ),
    );
  }
}
  