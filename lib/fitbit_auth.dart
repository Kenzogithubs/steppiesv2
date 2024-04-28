import 'dart:convert';
import 'package:flutter_web_auth/flutter_web_auth.dart';
import 'package:http/http.dart' as http;

const String clientId = '23RXQS'; // Replace with your actual client ID
const String clientSecret = '20c93429346a0e80d6f440e35308608f'; // Replace with your actual client secret
const String redirectUri = 'https://joemama.flutterflow.app/home'; // Replace with your actual redirect URI

Future<String> authenticateWithFitbit() async {
  final url = Uri.https('www.fitbit.com', '/oauth2/authorize', {
    'response_type': 'code',
    'client_id': clientId,
    'redirect_uri': redirectUri,
    'scope': 'activity nutrition heartrate location nutrition profile settings sleep social weight',
    'expires_in': '604800', // Token expiration, in seconds
  });

  final result = await FlutterWebAuth.authenticate(
    url: url.toString(),
    callbackUrlScheme: "your-scheme" // Replace with your actual callback URL scheme
  );

  final code = Uri.parse(result).queryParameters['code'];

  final response = await http.post(
    Uri.parse('https://api.fitbit.com/oauth2/token'),
    headers: {
      'Authorization': 'Basic ' + base64Encode(utf8.encode('$clientId:$clientSecret')),
      'Content-Type': 'application/x-www-form-urlencoded'
    },
    body: {
      'clientId': clientId,
      'grant_type': 'authorization_code',
      'redirect_uri': redirectUri,
      'code': code,
    },
  );

  final accessToken = json.decode(response.body)['access_token'];
  return accessToken; // Use the access token for further API requests
}