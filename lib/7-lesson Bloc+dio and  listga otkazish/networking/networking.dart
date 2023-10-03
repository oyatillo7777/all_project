import 'package:all_project/7-lesson%20Bloc+dio%20and%20%20listga%20otkazish/model/post.dart';
import 'package:dio/dio.dart';

class Networking {
  Future<dynamic> getPosts() async {
    Dio dio = Dio();
    try {
      var response =
          await dio.get("https://jsonplaceholder.typicode.com/posts");
      return listFromJson(response.data);
    } catch (e) {
      print(e);
    }
  }
}
