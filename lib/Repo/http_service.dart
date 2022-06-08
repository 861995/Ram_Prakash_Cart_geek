import 'dart:convert';
import 'package:Ram_prakash_cart_geek/Model/post_model.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';


class HttpService {

  final String postURL = "http://cgprojects.in/flutter/" ;



  Future<List<Post>> dashboardDataAPI(http.Client client) async {
    final response = await client.get(Uri.parse(postURL));
    List list = json.decode(response.body.toString())['packages'];
    print("this is the response in repo"+ list.toString().replaceAll('\n', ""));
    return parsePhotos(list);
  }

  List<Post> parsePhotos(List responseBody) {
   // print("this is the response"+ responseBody.toString().replaceAll("\i", "") );
    final parsed = json.decode(responseBody.toString()).cast<Map<String, dynamic>>();
  //  final parsed = responseBody.toString();
    return parsed.map<Post>((json) => Post.fromJson(json)).toList();
  }
}