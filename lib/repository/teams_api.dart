import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/teams_list.dart';

// Future<TeamsList> teamsFunctionn() async {
//   final response = await http.get(Uri.parse(
//       'https://api.musixmatch.com/ws/1.1/chart.tracks.get?apikey=2d782bc7a52a41ba2fc1ef05b9cf40d7'));
//
//   if (response.statusCode == 200) {
//     // return TeamsList.fromJson(jsonDecode(response.body));
//   } else {
//     throw Exception('Failed to load album');
//   }
// }
