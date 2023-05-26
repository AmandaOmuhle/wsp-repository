import 'package:backendless_sdk/backendless_sdk.dart';
import 'package:backendless_todo_starter/routes/routes.dart';
import 'package:backendless_todo_starter/services/user_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class InitApp {
  static final String apiKeyAndroid = 'BB170141-DCC7-4270-B252-80A12E7D3982';
  static final String apiKeyiOS = 'CD80A456-E0BE-40B3-BB5F-93A72E38D611';
  static final String appID = '5DCE9704-68CD-56EF-FFCB-C0116B774400';

  static void initializeApp(BuildContext context) async {
    await Backendless.initApp(
        applicationId: appID,
        iosApiKey: apiKeyiOS,
        androidApiKey: apiKeyAndroid);
    String result = await context.read<UserService>().checkIfUserLoggedIn();
    if (result == 'OK') {
      Navigator.popAndPushNamed(context, RouteManager.todoPage);
    } else {
      Navigator.popAndPushNamed(context, RouteManager.loginPage);
    }
  }
}
