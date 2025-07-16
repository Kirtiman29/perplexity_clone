import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:perplexity_clone/themes/colors.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  bool isCollapsed = true;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      width: isCollapsed ? 64 : 150,
      color: AppColors.sideNav,
      child: Column(
        children: [
          const SizedBox(height: 16),
          Icon(
            Icons.auto_awesome_mosaic,
            color: AppColors.whiteColor,
            size: isCollapsed ? 30 : 60,
          ),

          Expanded(
            child: Column(
              crossAxisAlignment: isCollapsed
                  ? CrossAxisAlignment.center
                  : CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: isCollapsed
                      ? MainAxisAlignment.center
                      : MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 14, horizontal: 10),
                      child: Icon(Icons.add, color: AppColors.iconGrey, size: 22),
                    ),
                    isCollapsed
                        ? const SizedBox()
                        : Text(
                            "Home",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                  ],
                ),
                Row(
                  mainAxisAlignment: isCollapsed
                      ? MainAxisAlignment.center
                      : MainAxisAlignment.start,
            
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 14, horizontal: 10),
                      child: Icon(Icons.search, color: AppColors.iconGrey, size: 22),
                    ),
                    isCollapsed
                        ? const SizedBox()
                        : Text(
                            "Search",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                  ],
                ),
                Row(
                  mainAxisAlignment: isCollapsed
                      ? MainAxisAlignment.center
                      : MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 14, horizontal: 10),
                      child: Icon(
                        Icons.language,
                        color: AppColors.iconGrey,
                        size: 22,
                      ),
                    ),
                    isCollapsed
                        ? const SizedBox()
                        : Text(
                            "Spaces",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                  ],
                ),
                Row(
                  mainAxisAlignment: isCollapsed
                      ? MainAxisAlignment.center
                      : MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 14, horizontal: 10),
                      child: Icon(
                        Icons.auto_awesome,
                        color: AppColors.iconGrey,
                        size: 22,
                      ),
                    ),
                    isCollapsed ?  const SizedBox() : Text("Discover" ,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: isCollapsed
                      ? MainAxisAlignment.center
                      : MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 14, horizontal: 10),
                      child: Icon(
                        Icons.cloud_outlined,
                        color: AppColors.iconGrey,
                        size: 22,
                      ),
                    ),
                    isCollapsed ?  const SizedBox() : Text("Library" ,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),

              ],
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              setState(() {
                isCollapsed = !isCollapsed;
              });
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 14),
              child: Icon(
                isCollapsed
                    ? Icons.keyboard_arrow_right
                    : Icons.keyboard_arrow_left,
                color: AppColors.iconGrey,
                size: 22,
              ),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
