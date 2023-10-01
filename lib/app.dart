import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'core/router/app_router.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      onGenerateRoute: (settings) => AppRouter.generateRoute(settings),
      home: Scaffold(
        body: Center(
          child: Text(
            'hello'.tr(),
          ),
        ),
      ),
    );
  }
}
