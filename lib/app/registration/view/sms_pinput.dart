import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_bloc_practice/helpers/i18n/strings.g.dart';

import 'package:pinput/pinput.dart';

class SmsCode extends StatefulWidget {
  const SmsCode({super.key});

  @override
  State<SmsCode> createState() => SmsCodePinInput();
}

class SmsCodePinInput extends State<SmsCode> {
  final pinInputController = TextEditingController();
  final focusNode = FocusNode();
  bool activeTimer = true;
  int counter = 10;

  @override
  void initState() {
    super.initState();
    sendSmsCodeTimer();
  }

  @override
  void dispose() {
    pinInputController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  void sendSmsCodeTimer() {
    activeTimer = true;
    pinInputController.text = '';
    Timer.periodic(Duration(seconds: 1), (timer) {
      debugPrint(timer.tick.toString());
      setState(() {
        counter--;
      });
      if (timer.tick == 10) {
        activeTimer = false;
        counter = 10;
        debugPrint("Over");
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final pinTheme = PinTheme(
      width: 56,
      height: 56,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(19),
          border: Border.all(color: Colors.black)),
      textStyle: TextStyle(
        fontSize: 22,
        color: Color.fromRGBO(30, 60, 87, 1),
      ),
    );

    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Directionality(
            textDirection: TextDirection.ltr,
            child: Pinput(
              keyboardType: TextInputType.number,
              closeKeyboardWhenCompleted: true,
              controller: pinInputController,
              autofocus: true,
              focusNode: focusNode,
              defaultPinTheme: pinTheme,
              onChanged: (value) {
                debugPrint('onChanged: $value');
              },
              validator: (value) {
                return value == '1288' ? null : t.sms_pinput.pin_is_incorrect;
              },
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(t.sms_pinput.no_sms_code),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: activeTimer ? null : sendSmsCodeTimer,
                child: Text(t.sms_pinput.send_again),
              ),
              activeTimer ? Text("${t.sms_pinput.in_} ${counter}") : SizedBox(),
            ],
          ),
        ],
      ),
    );
  }
}

@RoutePage()
class SmsCodeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: SmsCode()),
    );
  }
}
