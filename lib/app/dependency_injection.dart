import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import '../core/connection/network_info.dart';

final instance = GetIt.instance;

Future<void> initDependency() async {
  registerDataSources(instance);
  registerProvider(instance);
  registerUseCases(instance);
  registerRepository(instance);
  registerCore(instance);
  registerExternal(instance);
}

void registerUseCases(GetIt instance) {}
void registerRepository(GetIt instance) {}
void registerDataSources(GetIt instance) {}
void registerProvider(GetIt instance) {}
void registerExternal(GetIt instance) async {
  instance.registerLazySingleton<InternetConnectionChecker>(
      () => InternetConnectionChecker());
}

void registerCore(GetIt instance) {
  instance.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(internetConnectionChecker: instance()));
}
