import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get_it/get_it.dart';
import 'package:medical_suit/services/services.dart';
import 'package:supabase/supabase.dart';

import '../repository/repository.dart';
import 'navigation_service.dart';

part 'simple_bloc_delegate.dart';

GetIt locator = GetIt.instance;

class Initialization {
  // check either it's debug or release mode
  static const bool enableLogging = !kDebugMode;

  static init() async {
    WidgetsFlutterBinding.ensureInitialized();

    // To load the .env file contents into dotenv.
    // NOTE: fileName defaults to .env and can be omitted in this case.
    // Ensure that the filename corresponds to the path in step 1 and 2.
    await dotenv.load(fileName: '.env');

    // Initialize EasyLoading
    configLoading();

    // Remove logs in production
    if (kDebugMode) {
      // LoggingService(Configs.enableLogging);
      Bloc.observer = SimpleBlocDelegate();
      // dio.interceptors.add(LogInterceptorService());
    }

    locator.registerLazySingleton<Storage>(() => StorageService());
    locator.registerLazySingleton<RepositoryInterface>(() => UserRepository());

    // // Initialize database
    SupabaseClient client = SupabaseClient(
      dotenv.env['BASE_URL']!.toString(),
      dotenv.env['API_KEY']!.toString(),
    );

    locator.registerSingleton<SupabaseClient>(client);

    return;
  }

  static void configLoading() {
    EasyLoading.instance
      ..loadingStyle = EasyLoadingStyle.custom
      ..indicatorSize = 45.0
      ..radius = 10.0
      ..progressColor = Colors.white
      ..backgroundColor = Colors.black.withOpacity(0.5)
      ..indicatorColor = Colors.white
      ..textColor = Colors.white
      ..maskColor = Colors.red.withOpacity(0.5)
      ..userInteractions = false
      ..dismissOnTap = false
      ..toastPosition = EasyLoadingToastPosition.bottom;
  }
}
