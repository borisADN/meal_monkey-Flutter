import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/common_widget/round_button.dart';
import 'package:otp_pin_field/otp_pin_field.dart';

class OtpView extends StatefulWidget {
  const OtpView({super.key});

  @override
  State<OtpView> createState() => _OtpViewState();
}

class _OtpViewState extends State<OtpView> {
  final _otpPinFieldController = GlobalKey<OtpPinFieldState>();
  @override
  Widget build(BuildContext context) {
    // var media = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 64),
              Text(
                textAlign: TextAlign.center,
                'Verification OTP',
                style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 20),
              Text(
                textAlign: TextAlign.center,
                'Nous avons envoyé un code de verification sur votre numéro +22893******86.\nVeuillez le saisir ci-dessous.',
                style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 50),

              SizedBox(
                height: 60,
                child: OtpPinField(
                  key: _otpPinFieldController,

                  ///in case you want to enable autoFill
                  autoFillEnable: true,

                  ///for Ios it is not needed as the SMS autofill is provided by default, but not for Android, that's where this key is useful.
                  textInputAction: TextInputAction.done,

                  ///in case you want to change the action of keyboard
                  /// to clear the Otp pin Controller
                  onSubmit: (text) {
                    debugPrint('Entered pin is $text');

                    /// return the entered pin
                  },
                  onChange: (text) {
                    debugPrint('Enter on change pin is $text');

                    /// return the entered pin
                  },
                  onCodeChanged: (code) {
                    debugPrint('onCodeChanged  is $code');
                  },

                  /// to decorate your Otp_Pin_Field
                  otpPinFieldStyle: OtpPinFieldStyle(
                    /// bool to show hints in pin field or not
                    showHintText: true,

                    /// to set the color of hints in pin field or not
                    // hintTextColor: Colors.red,

                    /// to set the text  of hints in pin field
                    // hintText: '1',

                    /// border color for inactive/unfocused Otp_Pin_Field
                    defaultFieldBorderColor: Colors.transparent,

                    /// border color for active/focused Otp_Pin_Field
                    activeFieldBorderColor: Colors.transparent,

                    /// Background Color for inactive/unfocused Otp_Pin_Field
                    defaultFieldBackgroundColor: TColor.textfield,

                    /// Background Color for active/focused Otp_Pin_Field
                    activeFieldBackgroundColor: TColor.textfield,

                    /// Background Color for filled field pin box
                    // filledFieldBackgroundColor: Colors.green,

                    /// border Color for filled field pin box
                    // filledFieldBorderColor: Colors.green,
                    //
                    /// gradient border Color for field pin box
                    // activeFieldBorderGradient: LinearGradient(
                    //   colors: [Colors.black, Colors.redAccent],
                    // ),
                    // filledFieldBorderGradient: LinearGradient(
                    //   colors: [Colors.green, Colors.tealAccent],
                    // ),
                    // defaultFieldBorderGradient: LinearGradient(
                    //   colors: [Colors.orange, Colors.brown],
                    // ),
                    fieldBorderWidth: 2,
                  ),
                  maxLength: 4,

                  /// no of pin field
                  showCursor: false,

                  /// bool to show cursor in pin field or not
                  // cursorColor: Colors.indigo,

                  /// to choose cursor color
                  upperChild: const Column(
                    children: [
                      SizedBox(height: 30),
                      Icon(Icons.flutter_dash_outlined, size: 150),
                      SizedBox(height: 20),
                    ],
                  ),
                  // 123456

                  ///bool which manage to show custom keyboard
                  showCustomKeyboard: false,

                  /// Widget which help you to show your own custom keyboard in place if default custom keyboard
                  // customKeyboard: Container(),
                  ///bool which manage to show default OS keyboard
                  // showDefaultKeyboard: true,

                  /// to select cursor width
                  cursorWidth: 3,

                  /// place otp pin field according to yourself
                  mainAxisAlignment: MainAxisAlignment.center,

                  /// predefine decorate of pinField use  OtpPinFieldDecoration.defaultPinBoxDecoration||OtpPinFieldDecoration.underlinedPinBoxDecoration||OtpPinFieldDecoration.roundedPinBoxDecoration
                  ///use OtpPinFieldDecoration.custom  (by using this you can make Otp_Pin_Field according to yourself like you can give fieldBorderRadius,fieldBorderWidth and etc things)
                  otpPinFieldDecoration:
                      OtpPinFieldDecoration.defaultPinBoxDecoration,
                ),
              ),
              SizedBox(height: 25),

              RoundButton(title: 'Envoyer', onPressed: () {}),
              SizedBox(height: 25),
              TextButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const LoginView()),
                  // );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Vous l\'avez pas reçu? ',
                      style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    Text(
                      'Renvoyer',
                      style: TextStyle(
                        color: TColor.primary,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
