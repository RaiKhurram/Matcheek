import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:matchcheek/ui/add_another_phone_2.dart';
import 'package:matchcheek/ui/add_number.dart';
import 'package:matchcheek/ui/add_number2.dart';
import 'package:matchcheek/ui/confirm_phone_num2.dart';
import 'package:matchcheek/ui/define_username.dart';
import 'package:matchcheek/ui/inbox.dart';
import 'package:matchcheek/ui/tmpRouteVisi2.dart';
import 'package:matchcheek/ui/tmpRouteVisi3.dart';
import 'package:matchcheek/ui/tmpRouteVisi4.dart';
import 'package:matchcheek/ui/tmpRouteVisi5.dart';
import 'package:matchcheek/ui/verification_code_new_three.dart';
import './ui/chat.dart';
import './ui/auth_with_octbook.dart';
import './ui/home.dart';
import './ui/confirm_phone_num.dart';
import './ui/verification_code.dart';
import './ui/update_number.dart';
import './ui/power_of_match.dart';
import './ui/power_of_ping.dart';
import './ui/power_of_time.dart';
import './ui/like_or_home.dart';
import './ui/like_my_contacts.dart';
import './ui/liked_by.dart';
import './ui/liked_by_ping.dart';
import './ui/activate_pom.dart';
import './ui/activate_pop.dart';
import './ui/no_likes.dart';
import './ui/my_contacts.dart';
import './ui/add_contact.dart';
import './ui/notification_settings.dart';
import './ui/notification_in_app.dart';
import './ui/notification_in_mobile.dart';
import './ui/notification_in_email.dart';
import './ui/notifications.dart';
import './ui/match.dart';
import './ui/no_match.dart';
import './ui/delete_account.dart';
import './ui/uninstal.dart';
import './ui/profile.dart';
import './ui/profile_settings.dart';
import './ui/golden_power.dart';
import 'ui/add_another_phone.dart';
import 'ui/tmpRouteVisi.dart';
import 'ui/verification_code_new.dart';
import 'ui/verification_code_new_two.dart';
import 'ui/temp_liked_route.dart';
import 'ui/not_liked.dart';
import 'ui/temp_likes_route.dart';
import 'ui/start_page.dart';

void main() async {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _HomePageState createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<MyApp> {


  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Router router = Router();
    router.define('/', handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
//          return AddNumPage2();
      return StartPage();
    }));

    router.define('/inbox', handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return InboxPage();
    }));router.define('/chat', handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return ChatPage();
    }));router.define('/notLiked', handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return NotLikedPage();
    }));router.define('/tempMatch', handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return NotLikedPage();
    }));router.define('/notLikes', handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return TempLikesRoute();
    }));router.define('/tempLiked', handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return TempLikedRoute();
    }));
    router.define('/powerOfGolden', handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return GoldenPowerPage();
    }));
    router.define('/likeOrHome', handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return LikeOrHomePage();
    }));
    router.define('/profilesettings', handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return ProfileSettingsPage();
    }));
    router.define('/profile', handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return ProfilePage();
    }));
    router.define('/uninstall', handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return UninstallPage();
    }));

    router.define('/delete', handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return DeletePage();
    }));

    router.define('/noMatch', handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return NoMatchPage();
    }));

    router.define('/match', handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return MatchProfile();
    }));

    router.define('/notification', handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return NotificationsPage();
    }));

    router.define('/notificationsettings', handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return NotificationSettingsPage();
    }));

    router.define('/NotificationINEmail', handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return NotificationINEmailPage();
    }));

    router.define('/notificationInMobile', handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return NotificationInMobilePage();
    }));

    router.define('/notificationInApp', handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return NotificationINMatcheekPage();
    }));

    router.define('/notificationby', handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return NotificationSettingsPage();
    }));

    router.define('/addcontact', handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return AddContactPage();
    }));

    router.define('/mycontact', handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return MyContactsPage();
    }));

    router.define('/nolike', handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return NoLikeSPage();
    }));

    router.define('/activatepop', handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return SelectedPOPPage();
    }));
    router.define('/msg', handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
          return InboxPage();
        }));

    router.define('/activatepom', handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return ActivatePOMPage();
    }));

    router.define('/likebyping', handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return LikedByPingPage();
    }));

    router.define('/likedbymatch', handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return LikedByPage();
    }));

    router.define('/likemycontacts', handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return LikeMyContactsPage();
    }));

    router.define('/powerofping', handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return PowerOfPingPage();
    }));

    router.define('/poweroftimer', handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return PowerOfTimePage();
    }));
    router.define('/accalreadyexsist', handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
          return TempRoute();
        }));


    router.define('/powerofmatch', handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return PowerOfMatchPage();
    }));

    router.define('/update', handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return UpdateNumPage();
    }));

    router.define('/verify', handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return VerifyNumPage();
    }));
    router.define('/verifyNew', handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
          return VerifyNumberNewPage();
        }));
    router.define('/verifyNewTwo', handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
          return VerifyNumNewTwoPage();
        }));

    router.define('/defineUsername', handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return DefineUsernamePage();
    }));

    router.define('/addNum', handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return AddNumPage();
    }));

    router.define('/addAnotherNum2', handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return AddAnotherNumTwoPage();
    }));

    router.define('/addAnotherNum', handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return AddNumPage();
    }));
    router.define('/addNum2', handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
          return AddNumPage2();
        }));

    router.define('/confirmPhone', handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return ConfirmPhoneNumPage();
    }));
    router.define('/confirmPhone2', handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
          return ConfirmPhoneNumPage2();
        }));

    router.define('/home', handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return HomePage();
    }));
    router.define('/authWithOct', handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return AuthWithOctbookPage();
    }));
    router.define('/tmp', handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
          return TempRoute();
        }));
    router.define('/tmp2', handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
          return TempRoute2();
        }));
    router.define('/tmp3', handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
          return TempRoute3();
        }));
    router.define('/tmp4', handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
          return TempRoute4();
        }));
    router.define('/tmp5', handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
          return TempRoute5();
        }));
    router.define('/verifyNewThree', handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
          return VerifyNumNewThreePage();
        }));

    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Color.fromRGBO(78, 170, 167, 1.0),
          iconTheme: IconThemeData(color: Colors.black),
          accentColor: Colors.black,
          hintColor: Colors.grey,
          fontFamily: 'Calibri',
          textTheme:
              TextTheme(body1: TextStyle(fontSize: 14.0, color: Colors.black)),
        ),
        onGenerateRoute: router.generator);
  }
}
