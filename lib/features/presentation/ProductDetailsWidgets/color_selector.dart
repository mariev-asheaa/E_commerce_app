import 'package:flutter/material.dart';
import '../../../core/constants.dart';



class ColorSelector extends StatefulWidget {
  const ColorSelector({super.key});

  @override
  State<ColorSelector> createState() => _ColorSelectorState();
}

class _ColorSelectorState extends State<ColorSelector> {
int index=0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              index=0;
            });
          },
          child: CircleAvatar(
            backgroundColor:  index==0 ? ksecondary : const Color(0xFFCCCCCC),
            radius: 17,
            child: const CircleAvatar(
              radius: 15,
              backgroundColor: Color(0xff525252),
            ),
          ),
        ),
        const SizedBox(width: 10),

        // Second color
        GestureDetector(
          onTap: () {

            setState(() {
             index=1;
            });
          },
          child: CircleAvatar(
            backgroundColor:  index==1 ? ksecondary : const Color(0xFFCCCCCC),
            radius: 17,
            child: const CircleAvatar(
              radius: 15,
              backgroundColor: Colors.white,
            ),
          ),
        ),
        const SizedBox(width: 10),

        // Third color
        GestureDetector(
          onTap: () {
            setState(() {
            index=2;
            });
          },

          child: CircleAvatar(
            backgroundColor:  index==2 ? ksecondary : const Color(0xFFCCCCCC),
            radius: 17,
            child: const CircleAvatar(
              radius: 15,
              backgroundColor: Colors.indigo,
            ),
          ),
        ),
      ],
    );
  }
}
