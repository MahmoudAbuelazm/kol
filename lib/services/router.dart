import 'package:go_router/go_router.dart';
import 'package:kol/features/auth/presentation/screens/create_email.dart';
import 'package:kol/features/auth/presentation/screens/login.dart';
import 'package:kol/features/auth/presentation/screens/otp.dart';
import 'package:kol/features/auth/presentation/screens/start.dart';
import 'package:kol/home.dart';

enum AppRoute { home, start, createEmail ,login,otp}

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
            return const Home();
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
      ]);
}
