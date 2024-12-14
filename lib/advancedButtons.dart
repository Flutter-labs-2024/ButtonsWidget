import 'package:flutter/material.dart';

class AdvancedButtons extends StatefulWidget {
  const AdvancedButtons({super.key});

  @override
  State<AdvancedButtons> createState() => _AdvancedButtonsState();
}

class _AdvancedButtonsState extends State<AdvancedButtons> {
  @override
  String selectedValue='somalia';
  List<bool> _isSelected = [false, false, false];

  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text('Advanced Button', style: TextStyle(color: Colors.white),)   ,

      backgroundColor: Colors.blue,
      actions: [PopupMenuButton(itemBuilder: (BuildContext context) {
        return [
          PopupMenuItem(child: Text('profile')) ,
          PopupMenuItem(child: Text('Settings')) ,
          PopupMenuItem(child: Text('Logout'))
        ]   ;
      },
      )],
    ),
      body: Center(
        child: OverflowBar(
                     alignment:MainAxisAlignment.center,
            spacing: 100,
          children: [
            DropdownButton(
                value: selectedValue ,
                items: [
              DropdownMenuItem(child: Text("somalia"),value: "somalia"),
              DropdownMenuItem(child: Text("Canada"),value: "Canada"),
              DropdownMenuItem(child: Text("USA"),value: "USA"),
              DropdownMenuItem(child: Text("England"),value: "England"),
            ], onChanged: (String? value){
                   setState(() {
                     selectedValue=value!;
                   });
            }),
        ToggleButtons(
          isSelected: _isSelected,
          children: [
            Icon(Icons.format_bold),
            Icon(Icons.format_italic),
            Icon(Icons.format_underlined),
          ]
          ,
            onPressed:(int index){
            setState(() {
              _isSelected[index]=!_isSelected[index];
            });
            }
        )]),

      ));
  }
}
