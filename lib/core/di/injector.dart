import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get_it/get_it.dart';

import '../errors/failures.dart';
import '../network/network_info.dart';
import '../utils/input_converter.dart';

final sl = GetIt.instance;

void init() {
  // Core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));
  sl.registerLazySingleton(() => Connectivity());

  // Utils
  sl.registerLazySingleton(() => InputConverter());

  // Errors
  sl.registerLazySingleton<Failure>(
    () => ServerFailure(),
    instanceName: 'server',
  );
  sl.registerLazySingleton<Failure>(
    () => CacheFailure(),
    instanceName: 'cache',
  );
}
