import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpForm extends StatefulWidget {
  const OtpForm({
    super.key,
    required this.callBack,
  });
  final Function(String) callBack;
  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  final TextEditingController _num1 = TextEditingController();
  final TextEditingController _num2 = TextEditingController();
  final TextEditingController _num3 = TextEditingController();
  final TextEditingController _num4 = TextEditingController();
  final TextEditingController _num5 = TextEditingController();
  final TextEditingController _num6 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: RawKeyboardListener(
        autofocus: false,
        focusNode: FocusNode(canRequestFocus: false),
        onKey: (event) {
          if (event.isKeyPressed(LogicalKeyboardKey.backspace)) {
            FocusScope.of(context).previousFocus();
          }
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 20,
              width: 20,
              child: TextFormField(
                autofocus: true,
                controller: _num1,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(//
                      RegExp(r'[0-9]')),
                ],
                onSaved: (pin1) {},
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                  }
                },
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 20,
              width: 20,
              child: TextFormField(
                autofocus: true,
                controller: _num2,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(//
                      RegExp(r'[0-9]')),
                ],
                onSaved: (pin2) {},
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                  }
                },
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 20,
              width: 20,
              child: TextFormField(
                autofocus: true,
                controller: _num3,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(//
                      RegExp(r'[0-9]')),
                ],
                onSaved: (pin3) {},
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                  }
                },
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 20,
              width: 20,
              child: TextFormField(
                autofocus: true,
                controller: _num4,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(//
                      RegExp(r'[0-9]')),
                ],
                onSaved: (pin4) {},
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                  }
                },
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 20,
              width: 20,
              child: TextFormField(
                autofocus: true,
                controller: _num5,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(//
                      RegExp(r'[0-9]')),
                ],
                onSaved: (pin5) {},
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                  }
                },
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 20,
              width: 20,
              child: TextFormField(
                autofocus: true,
                controller: _num6,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(//
                      RegExp(r'[0-9]')),
                ],
                onSaved: (pin6) {},
                onChanged: (value) {
                  if (value.length == 1) {
                    widget.callBack(_num1.text +
                        _num2.text +
                        _num3.text +
                        _num4.text +
                        _num5.text +
                        _num6.text);
                  }
                },
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: const InputDecoration(
                  counterText: "",
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
