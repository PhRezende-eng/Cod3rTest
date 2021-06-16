import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final String label;
  final String hint;
  final Color colorlabel;
  final Color coloricon;

  const Input({
    required this.label,
    required this.hint,
    required this.coloricon,
    required this.colorlabel,
  });
  // const Input(                             ----> é uma outra forma de se fazer
  // {required this.label,
  // required this.hint,
  // required this.coloricon,
  // required this.colorlabel,
  // Key? key})
  // : super(key: key);

  // const Input( posicional    ->     this.paramenter,{ nominal   ->  required this.paramenter || this.paramenter Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 300,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        // boxShadow: BoxShadow,
      ),
      padding: EdgeInsets.only(left: 20, right: 60),
      margin: EdgeInsets.only(top: 10, bottom: 10),
      child: TextFormField(
        cursorColor: Colors.black,
        cursorRadius: Radius.circular(10),
        style: TextStyle(
          fontSize: 20,
        ),
        decoration: InputDecoration(
          icon: Icon(
            Icons.ac_unit_outlined,
            color: coloricon,
          ),
          hintText: label,
          hintStyle: TextStyle(
            fontSize: 20,
            textBaseline: TextBaseline.ideographic,
          ),
          labelText: label,
          labelStyle: TextStyle(
            fontSize: 18,
            textBaseline: TextBaseline.ideographic,
            color: colorlabel,
          ),
          border: InputBorder.none,
        ),
        validator: (String? value) {
          return (value != null && value.contains('@')) ? ' NÃO USE @ ' : null;
        },
      ),
    );
  }
}
