import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/teams_list.dart';

String? tokenId = 'https://marlo-neobank.web.app/overview';

Future<UserModel> teamsFunction(Result users) async {
  final response = await http.post(Uri.parse(
      'https://asia-southeast1-marlo-bank-dev.cloudfunctions.net/api_dev/invites'));

  if (response.statusCode == 200) {
    return UserModel.fromJson(jsonDecode(response.body));
  } else {
    throw Exception("wrong");
  }
}
