

import 'package:flutter/widgets.dart';

import 'cache_services.dart';
import 'connection_config.dart';

Future<void> preAppConfig() async {
  WidgetsFlutterBinding.ensureInitialized();

  await ConnectionConfig.instance.init();
  await CacheServices.instance.init();
}
