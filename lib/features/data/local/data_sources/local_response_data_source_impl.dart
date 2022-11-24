import 'dart:convert';

import 'package:flutter_gitstore/core/constants/constants.dart';
import 'package:flutter_gitstore/core/utils/helpers/preference_helper.dart';
import 'package:flutter_gitstore/features/data/remote/models/repository_model.dart';
import 'package:flutter_gitstore/features/domain/entities/repository_entity.dart';

import 'local_response_data_source.dart';

class LocalResponseDataSourceImpl extends LocalResponseDataSource {
  final PreferenceHelper helper;

  LocalResponseDataSourceImpl({
    required this.helper,
  });

  @override
  Future<bool> setConnectivityStatus({required bool isConnected}) {
    return helper.setBoolean(
      key: Constants.connectivityStatus,
      value: isConnected,
    );
  }

  @override
  Future<List<RepositoryEntity>> getRepositories({required String key}) async {
    try {
      final keyStore = '${key}_value';
      final response = helper.getString(key: keyStore);

      if (response != null) {
        final json = jsonDecode(response) as List;
        final data = json.map((e) => RepositoryModel.fromJson(e)).toList();
        return data;
      } else {
        throw Exception("Failed to load repositories");
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> setRepositories({
    required String key,
    required List<RepositoryEntity> repositories,
  }) async {
    try {
      final k1 = '${key}_time';
      final k2 = '${key}_value';

      final String v1 = DateTime.now().toString();
      final String v2 = jsonEncode(repositories);

      final saveDateTime = await helper.setString(key: k1, value: v1);
      final saveResponse = await helper.setString(key: k2, value: v2);

      return saveDateTime & saveResponse;
    } catch (_) {
      rethrow;
    }
  }
}
