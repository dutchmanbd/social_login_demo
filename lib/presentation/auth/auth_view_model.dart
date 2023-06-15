import 'package:flutter/services.dart';
import 'package:flutter_line_sdk/flutter_line_sdk.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk_auth.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk_user.dart';

class AuthViewModel {
  void lineLogin() async {
    try {
      final result = await LineSDK.instance.login();
      print(result.accessToken.idTokenRaw);
    } on PlatformException catch (e) {
      print(e);
    }
  }

  void kakaoLogin() async {
    try {
      OAuthToken token = await UserApi.instance.loginWithKakaoTalk();
      print('Login succeeds. ${token.accessToken}');
    } catch (e) {
      print('Login fails. $e');
    }
  }
}
