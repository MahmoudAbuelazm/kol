import 'package:go_router/go_router.dart';
import 'package:kol/features/auth/presentation/screens/create_email.dart';
import 'package:kol/features/auth/presentation/screens/login.dart';
import 'package:kol/features/auth/presentation/screens/otp.dart';
import 'package:kol/features/auth/presentation/screens/start.dart';
import 'package:kol/features/filter/presentation/screen/filter_screen.dart';
import 'package:kol/features/home/presentation/screen/home_screen.dart';
import 'package:kol/features/payment/presentation/screen/payment_screen.dart';
import 'package:kol/features/request/presentation/screen/request_screen.dart';

import '../common/main_screen.dart';

enum AppRoute {
  home,
  start,
  createEmail,
  login,
  otp,
  request,
  filTer,
  mainscreen,
  payment,
}

class AppRouter {
  static final GoRouter goRouter = GoRouter(
      initialLocation: '/start'
      // CacheServices.instance.getUserModel() == null ? '/login' : '/more'
      ,
      routes: [
        GoRoute(
          path: '/home',
          name: AppRoute.home.name,
          builder: (context, state) {
            return const HomeScreen();
          },
        ),
        GoRoute(
          path: '/start',
          name: AppRoute.start.name,
          builder: (context, state) {
            return const Start();
          },
        ),
        GoRoute(
          path: '/createEmail',
          name: AppRoute.createEmail.name,
          builder: (context, state) {
            return const CreateEmail();
          },
        ),
        GoRoute(
          path: '/login',
          name: AppRoute.login.name,
          builder: (context, state) {
            return const Login();
          },
        ),
        GoRoute(
          path: '/otp',
          name: AppRoute.otp.name,
          builder: (context, state) {
            return const Otp();
          },
        ),
        GoRoute(
          path: '/request',
          name: AppRoute.request.name,
          builder: (context, state) {
            final Map<String, dynamic> map =
                state.extra as Map<String, dynamic>;
            return RequestScreen(
              bloggersModel: map['bloggersModel'],
            );
          },
        ),
        GoRoute(
          path: '/filter',
          name: AppRoute.filTer.name,
          builder: (context, state) {
            return const FilterScreen();
          },
        ),
        GoRoute(
          path: '/maiN',
          name: AppRoute.mainscreen.name,
          builder: (context, state) {
            return const MainScreen();
          },
        ),
        GoRoute(
          path: '/paYMent',
          name: AppRoute.payment.name,
          builder: (context, state) {
            return const PaymentScreen();
          },
        ),
      ]);
}
