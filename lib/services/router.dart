import 'package:go_router/go_router.dart';
import 'package:kol/home.dart';

enum AppRoute { home }

class AppRouter {
  static final GoRouter goRouter = GoRouter(
      initialLocation: '/login'
      // CacheServices.instance.getUserModel() == null ? '/login' : '/more'
      ,
      routes: [
        GoRoute(
          path: '/home',
          name: AppRoute.home.name,
          builder: (context, state) {
            return const Home();
          },
        )
      ]);
}
