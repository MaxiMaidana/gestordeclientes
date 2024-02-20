import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TabletHomeView extends StatefulWidget {
  const TabletHomeView({super.key});

  @override
  State<TabletHomeView> createState() => _TabletHomeViewState();
}

class _TabletHomeViewState extends State<TabletHomeView> {
  double widthMenu = 20.w;
  bool isOpen = true;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 0.5.w),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            width: isOpen ? 20.w : 5.w,
            decoration: BoxDecoration(
                color: Colors.grey[50],
                borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(12),
                    topRight: Radius.circular(12)),
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0.5, 0),
                      color: Colors.grey,
                      blurRadius: 4,
                      spreadRadius: 0.5,
                      blurStyle: BlurStyle.normal)
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    if (isOpen) {
                      widthMenu = 5.w;
                    } else {
                      widthMenu = 20.w;
                    }
                    isOpen = !isOpen;
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
        ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: isOpen ? 79.5.w : 94.5.w,
          color: Colors.grey[100],
        ),
      ],
    );
  }
}
