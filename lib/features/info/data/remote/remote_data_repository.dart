import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../data/repository/api_repository.dart';
import '../abstract_data_repository.dart';

class RemoteDataRepository implements DataRepository {
  RemoteDataRepository(this.ref);

  final Ref ref;

  @override
  /// Returns the contents of a file from a Github repository, specified by user, repo, tag, and file.
  ///
  /// [user] is the Github user or organization name.
  ///
  /// [repo] is the Github repository name.
  ///
  /// [tag] is the Github tag name.
  ///
  /// [file] is the path to the file.
  ///
  /// Returns a string containing the contents of the file.
  ///
  /// Throws an [Exception] on any error.
  Future<String> serveFileFromGithub(
      String user, String repo, String tag, String file) async {
    try {
      // Get the ApiRepository object from the dependency injection system
      final Response<String> response = await ref
          .read(apiControllerProvider.notifier)
          .get<String>('gh/$user/$repo/$tag/$file');

      // Check if the response data is null
      if (response.data == null) {
        throw Exception('Response data from Github API is null');
      }

      // Return the response data
      return response.data!;
    } on DioException catch (e) {
      // Catch any DioException and throw an Exception with a message that includes the original exception
      throw Exception('Error fetching file from Github: $e');
    }
  }
}
