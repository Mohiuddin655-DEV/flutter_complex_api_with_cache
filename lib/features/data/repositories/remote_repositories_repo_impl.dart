import 'package:flutter_gitstore/features/data/remote/data_sources/remote_response_data_source.dart';
import 'package:flutter_gitstore/features/domain/entities/repository_entity.dart';

import '../../domain/repositories/remote_repositories_repo.dart';

class RemoteRepositoriesRepoImpl extends RemoteRepositoriesRepo {
  final RemoteResponseDataSource source;

  RemoteRepositoriesRepoImpl({
    required this.source,
  });

  @override
  Future<List<RepositoryEntity>> getRepositories({
    required Map<String, String> queryParameters,
  }) async {
    return source.getRepositories(queryParameters: queryParameters);
  }
}
