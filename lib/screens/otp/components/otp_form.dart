import 'package:flutter/material.dart';
import 'package:flutter_way/components/default_button.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class OtpForm extends StatefulWidget {
  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  FocusNode pin2FocusNode;
  FocusNode pin3FocusNode;
  FocusNode pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
    super.dispose();
  }

  void nextField({String value, FocusNode focusNode}) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  autofocus: true,
                  onChanged: (value) {
                    nextField(value: value, focusNode: pin2FocusNode);
                  },
                  obscureText: true,
                  style: TextStyle(fontSize: 24),
                  decoration: otpInputDecoration,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin2FocusNode,
                  onChanged: (value) {
                    nextField(value: value, focusNode: pin3FocusNode);
                  },
                  obscureText: true,
                  style: TextStyle(fontSize: 24),
                  decoration: otpInputDecoration,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin3FocusNode,
                  onChanged: (value) {
                    nextField(value: value, focusNode: pin4FocusNode);
                  },
                  obscureText: true,
                  style: TextStyle(fontSize: 24),
                  decoration: otpInputDecoration,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin4FocusNode,
                  onChanged: (value) {
                    pin4FocusNode.unfocus();
                  },
                  obscureText: true,
                  style: TextStyle(fontSize: 24),
                  decoration: otpInputDecoration,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.15),
          DefaultButton(
            text: "Continue",
            press: () {},
          ),
        ],
      ),
    );
  }
}
