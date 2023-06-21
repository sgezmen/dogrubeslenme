import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:deneme/models/BlogsModel.dart';
import 'package:deneme/models/ContactModel.dart';

class HttpService {
  String serviceUrl = 'https://blooming-anchorage-42064.herokuapp.com/';

  Future<List<BlogsModel>> getBlogList() async {
    var response = await http.get(
      Uri.parse(serviceUrl + "blogs"),
      headers: {"Content-Type": "application/json"},
    );
    List<BlogsModel> _result = blogsModelFromJson(response.body);
    return _result;
  }

  Future<BlogsModel> getBlog(int id) async {
    var response = await http.get(
      Uri.parse(serviceUrl + "blogs/" + id.toString()),
      headers: {"Content-Type": "application/json"},
    );
    BlogsModel _result = singleblogModelFromJson(response.body);
    return _result;
  }

  Future<ContactModel> setContact(String email, String subject, String messagetext) async {
    var response = await http.post(Uri.parse(serviceUrl + "contacts"),
        headers: {"Content-Type": "application/json"}, body: jsonEncode({"email": email, "subject": subject, "message": messagetext}));
    ContactModel _result = contactModelFromJson(response.body);
    return _result;
  }
}
