import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc_practice/app/navigation/app_router.dart';
import 'package:flutter_bloc_practice/helpers/common_widgets/common_button.dart';
import 'package:flutter_bloc_practice/helpers/dismiss_keyboard.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:flutter_bloc_practice/helpers/i18n/strings.g.dart';

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
            height: 120.h,
          ),
          Image.asset(
            './assets/images/mailbox.jpg',
            scale: 1.8,
          ),
          SizedBox(
            height: 40.h,
          ),
          Text(t.confirm_registration_screen.confirm_phone_number),
          SizedBox(
            height: 20.h,
          ),
          Text(
            t.confirm_registration_screen.you_will_recive_Sms_code,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 35.h,
          ),
          Padding(
              padding: EdgeInsets.only(
                left: 40.w,
                right: 40.w,
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
            height: 35.h,
          ),
          // SizedBox(
          //   width: 300,
          //   height: 40,
          //   child: FilledButton(
          //     onPressed: isActiveSendButton
          //         ? () => context.router.push(SmsCodeRoute())
          //         : null,
          //     child: Text(t.confirm_registration_screen.send),
          //   ),
          // ),
          SizedBox(
            width: 300.w,
            height: 40.h,
            child: CommonFilledButton(
              onPressed: isActiveSendButton
                  ? () => context.router.push(SmsCodeRoute())
                  : null,
              buttonTitle: t.confirm_registration_screen.send,
              textColor: MaterialStatePropertyAll(Colors.blueAccent),
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
