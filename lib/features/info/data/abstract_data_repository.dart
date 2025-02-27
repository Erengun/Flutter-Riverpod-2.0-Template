import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'remote/remote_data_repository.dart';

part 'abstract_data_repository.g.dart';

abstract class DataRepository {
  Future<String> serveFileFromGithub(String user, String repo, String tag, String file);
}

@riverpod
DataRepository remoteDataRepository(Ref ref) {
  return RemoteDataRepository(ref);
}
