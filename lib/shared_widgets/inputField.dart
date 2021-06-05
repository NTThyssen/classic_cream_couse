import 'package:flutter/material.dart';
import '../theme.dart';

class InputField extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;
  final String initialValue;
  InputField({this.controller, this.labelText, this.initialValue});

  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {

  textListener(){
    print(widget.controller.text);
  }

  @override
  void initState() {
    widget.controller.addListener(() {textListener();});
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.15,
      color: appTheme.backgroundColor,
      child: TextFormField(
        controller: widget.controller,
        autofocus: true,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: appTheme.primaryColor, width: 2)),
            enabled: true,
            border: OutlineInputBorder(),
            labelText: widget.labelText,
            labelStyle: bodyTextStyle.copyWith(fontSize: 18)
        ),
      ),
    );
  }
}
