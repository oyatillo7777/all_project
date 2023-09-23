import 'package:flutter/material.dart';

class Password_TextFiled extends StatefulWidget {
  String? hintText;
  TextEditingController? controller;

  Password_TextFiled({this.hintText, this.controller});

  @override
  State<Password_TextFiled> createState() => _Password_TextFiledState();
}

class _Password_TextFiledState extends State<Password_TextFiled> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.hintText.toString()),
          Container(
            height: 56,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black, width: 2)),
            child: TextField(
              maxLength: 4,
              obscureText: isObscure,
              controller: widget.controller,
              decoration: InputDecoration(
                  counterText: '',
                  border: InputBorder.none,
                  suffixIcon: InkWell(
                    onTap: () {
                      setState(() {
                        isObscure = !isObscure;
                      });
                    },
                    child: Icon(isObscure == true
                        ? Icons.visibility_off
                        : Icons.panorama_fish_eye),
                  )),
              onChanged: (value) {
                setState(() {});
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Text("${widget.controller!.value.text.length}/4")],
          )
        ],
      ),
    );
  }
}
