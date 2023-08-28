import 'package:flutter/material.dart';
import 'package:video_calling/utils/utils.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
import 'dart:math' as math;

final String localUserID = math.Random().nextInt(100000).toString(); 

class VideoPage extends StatelessWidget {
  const VideoPage({super.key, required this.callId});

  final String callId;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: ZegoUIKitPrebuiltCall(appID: Utils.appId, appSign: Utils.appSign, callID: callId, userID: localUserID, userName: 'user_$localUserID', config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()..onOnlySelfInRoom =(context) => (Navigator.pop(context))));
  }
}