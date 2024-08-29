import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:kol/services/Local/app_localizations.dart';
import 'services/Local/local_cubit.dart';
import 'services/pre_app_config.dart';
import 'services/router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  await preAppConfig();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LocalCubit()..getSavedLanguage(),
      child: BlocBuilder<LocalCubit, LocalState>(
        builder: (context, state) {
          return ScreenUtilInit(
              designSize: const Size(375, 812),
              minTextAdapt: true,
              splitScreenMode: true,
              builder: (_, child) {
                return SafeArea(
                  child: MaterialApp.router(
                      theme: ThemeData().copyWith(
                        scaffoldBackgroundColor: Colors.white,
                      ),
                      localizationsDelegates: const [
                        AppLocalizations.delegate,
                        GlobalMaterialLocalizations.delegate,
                        GlobalWidgetsLocalizations.delegate,
                        GlobalCupertinoLocalizations.delegate
                      ],
                      supportedLocales: const [Locale('en'), Locale('ar')],
                      debugShowCheckedModeBanner: false,
                      locale: state is ChangeLocaleState
                          ? state.local
                          : const Locale('ar'),
                      routerConfig: AppRouter.goRouter),
                );
              });
        },
      ),
    );
  }
}
