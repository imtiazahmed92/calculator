import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  final String tittle;
  final Color color;
  final VoidCallback onPress;
  
  const MyButton({Key? key,
    required this.tittle,
    this.color = const Color(0xffa5a5a5),
    required this.onPress
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: InkWell(
          onTap: onPress,
          child: Container(
            height: 75,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
            child: Center(
              child: Text(tittle,style: TextStyle(fontSize: 20,color: Colors.white),),
            ),
          ),
        ),
      ),
    );
  }
}
