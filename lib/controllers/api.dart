import "package:http/http.dart" as http;
import "dart:convert";

class CallApi {
  final String _url = 'http://127.0.0.1:8000/api/';
  //final String _url = 'http://10.0.2.2:8000/api/';

  postData(data, apiUrl) async {
    var fullUrl = _url + apiUrl;
    return http.post(
      Uri.parse(fullUrl),
      body: jsonEncode(data),
      headers: _setHeaders(),
    );
  }

  _setHeaders() => {
        'Content-type': 'application/json',
        'Accept': 'application/json',
        //"Authorization": "Some token",
      };

  postLogout(token, apiUrl) async {
    var fullUrl = _url + apiUrl;
    return http.post(
      Uri.parse(fullUrl),
      headers: _setHeaderLogouts(token),
    );
  }

  postWithToken(token, apiUrl) async {
    var fullUrl = _url + apiUrl;
    return http.post(
      Uri.parse(fullUrl),
      headers: _setHeaderLogouts(token),
    );
  }

  _setHeaderLogouts(token) => {
        'Content-type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      };
}
