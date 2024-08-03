

import 'package:flutter/widgets.dart';

import 'cache_services.dart';
import 'connection_config.dart';

/// Configuration that needs to be done before the Flutter app starts goes here.
///
/// To minimize the app loading time keep this setup fast and simple.
Future<void> preAppConfig() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  await ConnectionConfig.instance.init();
  await CacheServices.instance.init();
}
