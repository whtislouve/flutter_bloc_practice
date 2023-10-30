import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc_practice/helpers/dismiss_keyboard.dart';
import 'package:flutter_bloc_practice/navigation/app_router.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:pinput/pinput.dart';
import 'package:flutter_bloc_practice/i18n/strings.g.dart';

@RoutePage()
class ConfirmRegistrationScreen extends StatefulWidget {
  @override
  ConfirmRegistrationScreenState createState() =>
      ConfirmRegistrationScreenState();
}

class ConfirmRegistrationScreenState extends State<ConfirmRegistrationScreen> {
  PhoneMask phoneMask = PhoneMask(
    formatter: MaskTextInputFormatter(mask: "+# (###) ###-##-##"),
    hint: "+1 (234) 567 89 01",
    textInputType: TextInputType.phone,
  );
  bool isActiveSendButton = false;

  @override
  void initState() {
    FlutterNativeSplash.remove();
    setState(() {
      phoneMask.textEditingController.text;
    });
    debugPrint(phoneMask.textEditingController.text.length.toString());
    super.initState();
  }

  @override
  void dispose() {
    phoneMask.textEditingController.dispose();
    super.dispose();
  }

  void getPhoneMaskValue(phoneMaskText) {
    if (phoneMaskText.length == 18) {
      debugPrint(phoneMask.getUnmaskedText());
      setState(() {
        isActiveSendButton = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Image.asset(
            './assets/images/mailbox.jpg',
            scale: 1.8,
          ),
          SizedBox(
            height: 40,
          ),
          Text(t.confirm_registration_screen.confirm_phone_number),
          SizedBox(
            height: 20,
          ),
          Text(
            t.confirm_registration_screen.you_will_recive_Sms_code,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 35,
          ),
          Padding(
              padding: EdgeInsets.only(
                left: 40,
                right: 40,
              ),
              child: DismissKeyBoard(
                child: TextFormField(
                  autofocus: true,
                  controller: phoneMask.textEditingController,
                  onChanged: (value) => getPhoneMaskValue(value),
                  inputFormatters: [phoneMask.formatter],
                  keyboardType: phoneMask.textInputType,
                  autocorrect: false,
                  validator: phoneMask.validator,
                  decoration: InputDecoration(
                    hintText: phoneMask.hint,
                    hintStyle: TextStyle(color: Colors.grey),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              )),
          SizedBox(
            height: 35,
          ),
          SizedBox(
            width: 300,
            height: 40,
            child: FilledButton(
              onPressed: isActiveSendButton
                  ? () => context.router.push(SmsCodeRoute())
                  : null,
              child: Text(t.confirm_registration_screen.send),
            ),
          ),
        ],
      ),
    ));
  }
}

class PhoneMask extends MaskTextInputFormatter {
  final textEditingController = TextEditingController();
  final MaskTextInputFormatter formatter;
  final FormFieldValidator? validator;
  final String hint;
  final TextInputType textInputType;

  PhoneMask({
    required this.formatter,
    this.validator,
    required this.hint,
    required this.textInputType,
  });
}
