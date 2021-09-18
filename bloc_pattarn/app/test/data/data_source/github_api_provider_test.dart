import 'dart:convert';

import 'package:app/data/data_source/github_api_provider.dart';
import 'package:app/data/deta_source/github_api_provider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';

import 'github_api_provider_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  // モックの作成
  late MockClient mockClient;
  final _baseUrl = "https://api.github.com/search/repositories?sort=stars&q=";
  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    mockClient = MockClient();
  });

  group('fetchRepositoryList', () {
    test('データの取得に成功した場合', () async {
      final Uri mockUrl = Uri.parse(_baseUrl + 'flutter');

      final responsePayload = jsonEncode({
        "total_count": 290215,
        "incomplete_results": false,
        "items": [
          {
            "id": 31792824,
            "node_id": "MDEwOlJlcG9zaXRvcnkzMTc5MjgyNA==",
            "name": "flutter",
            "full_name": "flutter/flutter",
            "private": false,
            "html_url": "https://github.com/flutter/flutter",
            "description":
                "Flutter makes it easy and fast to build beautiful apps for mobile and beyond.",
            "fork": false,
            "url": "https://api.github.com/repos/flutter/flutter",
            "forks_url": "https://api.github.com/repos/flutter/flutter/forks",
            "keys_url":
                "https://api.github.com/repos/flutter/flutter/keys{/key_id}",
            "collaborators_url":
                "https://api.github.com/repos/flutter/flutter/collaborators{/collaborator}",
            "teams_url": "https://api.github.com/repos/flutter/flutter/teams",
            "hooks_url": "https://api.github.com/repos/flutter/flutter/hooks",
            "issue_events_url":
                "https://api.github.com/repos/flutter/flutter/issues/events{/number}",
            "events_url": "https://api.github.com/repos/flutter/flutter/events",
            "assignees_url":
                "https://api.github.com/repos/flutter/flutter/assignees{/user}",
            "branches_url":
                "https://api.github.com/repos/flutter/flutter/branches{/branch}",
            "tags_url": "https://api.github.com/repos/flutter/flutter/tags",
            "blobs_url":
                "https://api.github.com/repos/flutter/flutter/git/blobs{/sha}",
            "git_tags_url":
                "https://api.github.com/repos/flutter/flutter/git/tags{/sha}",
            "git_refs_url":
                "https://api.github.com/repos/flutter/flutter/git/refs{/sha}",
            "trees_url":
                "https://api.github.com/repos/flutter/flutter/git/trees{/sha}",
            "statuses_url":
                "https://api.github.com/repos/flutter/flutter/statuses/{sha}",
            "languages_url":
                "https://api.github.com/repos/flutter/flutter/languages",
            "stargazers_url":
                "https://api.github.com/repos/flutter/flutter/stargazers",
            "contributors_url":
                "https://api.github.com/repos/flutter/flutter/contributors",
            "subscribers_url":
                "https://api.github.com/repos/flutter/flutter/subscribers",
            "subscription_url":
                "https://api.github.com/repos/flutter/flutter/subscription",
            "commits_url":
                "https://api.github.com/repos/flutter/flutter/commits{/sha}",
            "git_commits_url":
                "https://api.github.com/repos/flutter/flutter/git/commits{/sha}",
            "comments_url":
                "https://api.github.com/repos/flutter/flutter/comments{/number}",
            "issue_comment_url":
                "https://api.github.com/repos/flutter/flutter/issues/comments{/number}",
            "contents_url":
                "https://api.github.com/repos/flutter/flutter/contents/{+path}",
            "compare_url":
                "https://api.github.com/repos/flutter/flutter/compare/{base}...{head}",
            "merges_url": "https://api.github.com/repos/flutter/flutter/merges",
            "archive_url":
                "https://api.github.com/repos/flutter/flutter/{archive_format}{/ref}",
            "downloads_url":
                "https://api.github.com/repos/flutter/flutter/downloads",
            "issues_url":
                "https://api.github.com/repos/flutter/flutter/issues{/number}",
            "pulls_url":
                "https://api.github.com/repos/flutter/flutter/pulls{/number}",
            "milestones_url":
                "https://api.github.com/repos/flutter/flutter/milestones{/number}",
            "notifications_url":
                "https://api.github.com/repos/flutter/flutter/notifications{?since,all,participating}",
            "labels_url":
                "https://api.github.com/repos/flutter/flutter/labels{/name}",
            "releases_url":
                "https://api.github.com/repos/flutter/flutter/releases{/id}",
            "deployments_url":
                "https://api.github.com/repos/flutter/flutter/deployments",
            "created_at": "2015-03-06T22:54:58Z",
            "updated_at": "2021-09-18T12:19:43Z",
            "pushed_at": "2021-09-18T06:47:23Z",
            "git_url": "git://github.com/flutter/flutter.git",
            "ssh_url": "git@github.com:flutter/flutter.git",
            "clone_url": "https://github.com/flutter/flutter.git",
            "svn_url": "https://github.com/flutter/flutter",
            "homepage": "https://flutter.dev",
            "size": 167114,
            "stargazers_count": 129928,
            "watchers_count": 129928,
            "language": "Dart",
            "has_issues": true,
            "has_projects": true,
            "has_downloads": true,
            "has_wiki": true,
            "has_pages": false,
            "forks_count": 18704,
            "mirror_url": null,
            "archived": false,
            "disabled": false,
            "open_issues_count": 9645,
            "license": {
              "key": "bsd-3-clause",
              "name": "BSD 3-Clause \"New\" or \"Revised\" License",
              "spdx_id": "BSD-3-Clause",
              "url": "https://api.github.com/licenses/bsd-3-clause",
              "node_id": "MDc6TGljZW5zZTU="
            },
            "allow_forking": true,
            "forks": 18704,
            "open_issues": 9645,
            "watchers": 129928,
            "default_branch": "master",
            "score": 1.0
          },
          {
            "id": 90528830,
            "node_id": "MDEwOlJlcG9zaXRvcnk5MDUyODgzMA==",
            "name": "awesome-flutter",
            "full_name": "Solido/awesome-flutter",
            "private": false,
            "html_url": "https://github.com/Solido/awesome-flutter",
            "description":
                "An awesome list that curates the best Flutter libraries, tools, tutorials, articles and more.",
            "fork": false,
            "url": "https://api.github.com/repos/Solido/awesome-flutter",
            "forks_url":
                "https://api.github.com/repos/Solido/awesome-flutter/forks",
            "keys_url":
                "https://api.github.com/repos/Solido/awesome-flutter/keys{/key_id}",
            "collaborators_url":
                "https://api.github.com/repos/Solido/awesome-flutter/collaborators{/collaborator}",
            "teams_url":
                "https://api.github.com/repos/Solido/awesome-flutter/teams",
            "hooks_url":
                "https://api.github.com/repos/Solido/awesome-flutter/hooks",
            "issue_events_url":
                "https://api.github.com/repos/Solido/awesome-flutter/issues/events{/number}",
            "events_url":
                "https://api.github.com/repos/Solido/awesome-flutter/events",
            "assignees_url":
                "https://api.github.com/repos/Solido/awesome-flutter/assignees{/user}",
            "branches_url":
                "https://api.github.com/repos/Solido/awesome-flutter/branches{/branch}",
            "tags_url":
                "https://api.github.com/repos/Solido/awesome-flutter/tags",
            "blobs_url":
                "https://api.github.com/repos/Solido/awesome-flutter/git/blobs{/sha}",
            "git_tags_url":
                "https://api.github.com/repos/Solido/awesome-flutter/git/tags{/sha}",
            "git_refs_url":
                "https://api.github.com/repos/Solido/awesome-flutter/git/refs{/sha}",
            "trees_url":
                "https://api.github.com/repos/Solido/awesome-flutter/git/trees{/sha}",
            "statuses_url":
                "https://api.github.com/repos/Solido/awesome-flutter/statuses/{sha}",
            "languages_url":
                "https://api.github.com/repos/Solido/awesome-flutter/languages",
            "stargazers_url":
                "https://api.github.com/repos/Solido/awesome-flutter/stargazers",
            "contributors_url":
                "https://api.github.com/repos/Solido/awesome-flutter/contributors",
            "subscribers_url":
                "https://api.github.com/repos/Solido/awesome-flutter/subscribers",
            "subscription_url":
                "https://api.github.com/repos/Solido/awesome-flutter/subscription",
            "commits_url":
                "https://api.github.com/repos/Solido/awesome-flutter/commits{/sha}",
            "git_commits_url":
                "https://api.github.com/repos/Solido/awesome-flutter/git/commits{/sha}",
            "comments_url":
                "https://api.github.com/repos/Solido/awesome-flutter/comments{/number}",
            "issue_comment_url":
                "https://api.github.com/repos/Solido/awesome-flutter/issues/comments{/number}",
            "contents_url":
                "https://api.github.com/repos/Solido/awesome-flutter/contents/{+path}",
            "compare_url":
                "https://api.github.com/repos/Solido/awesome-flutter/compare/{base}...{head}",
            "merges_url":
                "https://api.github.com/repos/Solido/awesome-flutter/merges",
            "archive_url":
                "https://api.github.com/repos/Solido/awesome-flutter/{archive_format}{/ref}",
            "downloads_url":
                "https://api.github.com/repos/Solido/awesome-flutter/downloads",
            "issues_url":
                "https://api.github.com/repos/Solido/awesome-flutter/issues{/number}",
            "pulls_url":
                "https://api.github.com/repos/Solido/awesome-flutter/pulls{/number}",
            "milestones_url":
                "https://api.github.com/repos/Solido/awesome-flutter/milestones{/number}",
            "notifications_url":
                "https://api.github.com/repos/Solido/awesome-flutter/notifications{?since,all,participating}",
            "labels_url":
                "https://api.github.com/repos/Solido/awesome-flutter/labels{/name}",
            "releases_url":
                "https://api.github.com/repos/Solido/awesome-flutter/releases{/id}",
            "deployments_url":
                "https://api.github.com/repos/Solido/awesome-flutter/deployments",
            "created_at": "2017-05-07T11:45:27Z",
            "updated_at": "2021-09-18T11:38:26Z",
            "pushed_at": "2021-09-15T15:03:28Z",
            "git_url": "git://github.com/Solido/awesome-flutter.git",
            "ssh_url": "git@github.com:Solido/awesome-flutter.git",
            "clone_url": "https://github.com/Solido/awesome-flutter.git",
            "svn_url": "https://github.com/Solido/awesome-flutter",
            "homepage": "",
            "size": 3183,
            "stargazers_count": 37484,
            "watchers_count": 37484,
            "language": "Dart",
            "has_issues": false,
            "has_projects": false,
            "has_downloads": true,
            "has_wiki": false,
            "has_pages": true,
            "forks_count": 5453,
            "mirror_url": null,
            "archived": false,
            "disabled": false,
            "open_issues_count": 32,
            "license": null,
            "allow_forking": true,
            "forks": 5453,
            "open_issues": 32,
            "watchers": 37484,
            "default_branch": "master",
            "score": 1.0
          },
        ]
      });

      when(mockClient.get(mockUrl))
          .thenAnswer((_) async => http.Response(responsePayload, 200));
      verifyNever(mockClient.get(mockUrl));

      // final response = await GitHubApiProvider().fetchRepositoryList('flutter');

      // expect(response.length, 2);
      // expect(response[0].fullName, 'flutter/flutter');
      // expect(response[0].stargazersCount, 129928);
      // expect(
      //     response[0].htmlUrl, Uri.parse('https://github.com/flutter/flutter'));

      // expect(response[1].fullName, 'Solido/awesome-flutter');
      // expect(response[1].stargazersCount, 37484);
      // expect(response[1].htmlUrl,
      //     Uri.parse('https://github.com/Solido/awesome-flutter'));
    });

    test('通信に失敗した場合', () async {
      final Uri mockUrl = Uri.parse(_baseUrl + 'not_found_param');

      when(mockClient.get(
        mockUrl,
      )).thenAnswer((_) async => http.Response('not Fount', 400));

      expect(() => GitHubApiProvider().fetchRepositoryList('not_found_param'),
          throwsA(const TypeMatcher<Exception>()));
    });
  });
}
