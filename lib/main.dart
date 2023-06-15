import 'package:flutter/material.dart';
import 'package:flutter_line_sdk/flutter_line_sdk.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk_auth.dart';
import 'package:social_login_demo/presentation/auth/auth_screen.dart';

const Map<String, dynamic> customData = {
  'customMemo': 67020,
  'customMessage': 67020,
  'channelId': '_ZeUTxl',
  'calendarEventId': '63996425afcec577cce94f0b',
};

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  LineSDK.instance.setup('1620019587').then((_) {
    print('LineSDK Prepared');
  });
  // urlConfig();

  KakaoSdk.init(
    nativeAppKey: '030ba7c59137629e86e8721eb1a22fd6',
    javaScriptAppKey: 'fa2d8e9f47b88445000592c9a293bbe2',
    loggingEnabled: true,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AuthScreen(),
    );
  }
}
