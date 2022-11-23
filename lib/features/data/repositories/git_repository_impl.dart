import 'package:flutter_gitstore/features/data/remote/data_sources/response_data_source.dart';
import 'package:flutter_gitstore/features/domain/entities/repository_entity.dart';
import 'package:flutter_gitstore/features/domain/repositories/git_repository.dart';

class GitRepositoryImpl extends GitRepository {
  final ResponseDataSource source;

  GitRepositoryImpl({
    required this.source,
  });

  @override
  Future<List<RepositoryEntity>> getEntities({
    required Map<String, String> queryParameters,
  }) async {
    return source.getEntities(queryParameters: queryParameters);
  }
}
