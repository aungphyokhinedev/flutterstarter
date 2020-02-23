import 'dart:async';
import 'dart:convert';
import 'package:barlarlar/model/serializers/user_model.dart';
import 'package:barlarlar/utils/custom_http.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:mobx/mobx.dart';


part 'auth_model.g.dart';

class AuthModel = AuthModelBase with _$AuthModel;

abstract class AuthModelBase with Store {
  @observable
  bool isLoading = false;

  @observable
  bool isLoggedIn = false;

  @observable
  UserInfo userInfo = new UserInfo();

  @action
  Future<void> logout() async {
    isLoggedIn = false;
    userInfo = null;
    final prefs = await SharedPreferences.getInstance();
    prefs.remove('userInfo');
    prefs.remove('authorization');
  }

  @action
  Future<void> init() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      var _userInfo = prefs.getString('userInfo') ?? null;
      var _authorization = prefs.getString('authorization') ?? null;
      if (_userInfo == null || _authorization == null) {
        isLoggedIn = false;
      } else {
        var parsedJson = json.decode(_userInfo);
        userInfo = UserInfo.fromJson(parsedJson);
        CustomHttp.accessToken = _authorization;
        isLoggedIn = true;
      }
    } catch (e) {
      print(e);
    }
  }

  @action
  Future<void> login(String token, String provider) async {
    try {
      print('try login fetch');
      if (isLoading) {
        return;
      }
      isLoading = true;
      await postLogin(token, provider).then((UserInfo result) async {
        userInfo = result;
        isLoggedIn = true;
        print('login success');
      });
    } finally {
      isLoading = false;
    }
  }

   @action
  Future<void> register( String email, String provider) async {
    try {
      print('try register');
      if (isLoading) {
        return;
      }
      isLoading = true;
      await postRegister(email, provider).then((UserInfo result) async {
        userInfo = result;
        isLoggedIn = true;
        print('register success');
      });
    } finally {
      isLoading = false;
    }
  }

  @action
  Future<void> socialRegister( String token, String provider) async {
    try {
      print('try register');
      if (isLoading) {
        return;
      }
      isLoading = true;
      await postSocialRegister(token, provider).then((UserInfo result) async {
        userInfo = result;
        isLoggedIn = true;
        print('register success');
      });
    } finally {
      isLoading = false;
    }
  }
}

Future<UserInfo> postLogin(String accessToken, String provider) async {
  final response = await CustomHttp.http.post('api/auth/login', body: {
    'token': accessToken,
    'provider': provider,
  });

  if (response.statusCode == 200) {
    // If the call to the server was successful, parse the JSON
    var authorization = response.headers['accesstoken'];
    var parsedJson = json.decode(response.body);

    var userInfo = UserInfo.fromJson(parsedJson);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('userInfo', response.body);
    await prefs.setString('authorization', authorization);
    //setting accesstoken to custom http
    CustomHttp.accessToken = authorization;
    return userInfo;
  } else {
    // If that call was not successful, throw an error.
    throw Exception('Failed to login');
  }
}

Future<UserInfo> postRegister(String email,String provider) async {
  final response = await CustomHttp.http.post('api/auth/register', body: {
    'email': email,
    'provider': provider,
  });

  if (response.statusCode == 200) {
    // If the call to the server was successful, parse the JSON
    var parsedJson = json.decode(response.body);

    var userInfo = UserInfo.fromJson(parsedJson);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('userInfo', response.body);
    return userInfo;
  } else {
    // If that call was not successful, throw an error.
    throw Exception('Failed to register');
  }
}

Future<UserInfo> postSocialRegister(String accessToken, String provider) async {
  final response = await CustomHttp.http.post('api/auth/social/register', body: {
    'token': accessToken,
    'provider': provider,
  });

  if (response.statusCode == 200) {
    // If the call to the server was successful, parse the JSON
    var parsedJson = json.decode(response.body);

    var userInfo = UserInfo.fromJson(parsedJson);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('userInfo', response.body);
    return userInfo;
  } else {
    // If that call was not successful, throw an error.
    throw Exception('Failed to register');
  }
}
