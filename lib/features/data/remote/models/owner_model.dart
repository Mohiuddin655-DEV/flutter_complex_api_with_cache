import 'package:flutter_gitstore/features/domain/entities/owner_entity.dart';

class OwnerModel extends OwnerEntity {
  OwnerModel({
    final String? login,
    final int? id,
    final String? nodeId,
    final String? avatarUrl,
    final String? gravatarId,
    final String? url,
    final String? htmlUrl,
    final String? followersUrl,
    final String? followingUrl,
    final String? gistsUrl,
    final String? starredUrl,
    final String? subscriptionsUrl,
    final String? organizationsUrl,
    final String? reposUrl,
    final String? eventsUrl,
    final String? receivedEventsUrl,
    final String? type,
    final bool? siteAdmin,
  }) : super(
          login: login,
          id: id,
          nodeId: nodeId,
          avatarUrl: avatarUrl,
          gravatarId: gravatarId,
          url: url,
          htmlUrl: htmlUrl,
          followersUrl: followersUrl,
          followingUrl: followingUrl,
          gistsUrl: gistsUrl,
          starredUrl: starredUrl,
          subscriptionsUrl: subscriptionsUrl,
          organizationsUrl: organizationsUrl,
          reposUrl: reposUrl,
          eventsUrl: eventsUrl,
          receivedEventsUrl: receivedEventsUrl,
          type: type,
          siteAdmin: siteAdmin,
        );

  factory OwnerModel.fromJson(Map<String, dynamic> json) {
    final String? login = json['login'];
    final int? id = json['id'];
    final String? nodeId = json['node_id'];
    final String? avatarUrl = json['avatar_url'];
    final String? gravatarId = json['gravatar_id'];
    final String? url = json['url'];
    final String? htmlUrl = json['html_url'];
    final String? followersUrl = json['followers_url'];
    final String? followingUrl = json['following_url'];
    final String? gistsUrl = json['gists_url'];
    final String? starredUrl = json['starred_url'];
    final String? subscriptionsUrl = json['subscriptions_url'];
    final String? organizationsUrl = json['organizations_url'];
    final String? reposUrl = json['repos_url'];
    final String? eventsUrl = json['events_url'];
    final String? receivedEventsUrl = json['received_events_url'];
    final String? type = json['type'];
    final bool? siteAdmin = json['site_admin'];
    return OwnerModel(
      login: login,
      id: id,
      nodeId: nodeId,
      avatarUrl: avatarUrl,
      gravatarId: gravatarId,
      url: url,
      htmlUrl: htmlUrl,
      followersUrl: followersUrl,
      followingUrl: followingUrl,
      gistsUrl: gistsUrl,
      starredUrl: starredUrl,
      subscriptionsUrl: subscriptionsUrl,
      organizationsUrl: organizationsUrl,
      reposUrl: reposUrl,
      eventsUrl: eventsUrl,
      receivedEventsUrl: receivedEventsUrl,
      type: type,
      siteAdmin: siteAdmin,
    );
  }
}
