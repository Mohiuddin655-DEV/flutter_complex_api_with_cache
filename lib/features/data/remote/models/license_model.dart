import 'package:flutter_gitstore/features/domain/entities/license_entity.dart';

class LicenseModel extends LicenseEntity {
  LicenseModel({
    final String? key,
    final String? name,
    final String? spdxId,
    final String? url,
    final String? nodeId,
  }) : super(
          key: key,
          name: name,
          spdxId: spdxId,
          url: url,
          nodeId: nodeId,
        );

  factory LicenseModel.fromJson(Map<String, dynamic> json) {
    final String? key = json['key'];
    final String? name = json['name'];
    final String? spdxId = json['spdx_id'];
    final String? url = json['url'];
    final String? nodeId = json['node_id'];
    return LicenseModel(
      key: key,
      name: name,
      spdxId: spdxId,
      url: url,
      nodeId: nodeId,
    );
  }
}
