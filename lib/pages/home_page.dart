import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:perplexity_clone/themes/colors.dart';
import 'package:perplexity_clone/widgets/side_nav.dart';

import '../widgets/search_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
          children: [
            SideBar(),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: SearchSection()
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 16),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 12,
                      children: [
                        Padding(padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          "Pro",
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.textGrey
                          ),
                        ),
                        ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Text(
                            "Enterprise",
                            style: TextStyle(
                                fontSize: 14,
                                color: AppColors.textGrey
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Text(
                            "Store",
                            style: TextStyle(
                                fontSize: 14,
                                color: AppColors.textGrey
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Text(
                            "Blog",
                            style: TextStyle(
                                fontSize: 14,
                                color: AppColors.textGrey
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Text(
                            "Careers",
                            style: TextStyle(
                                fontSize: 14,
                                color: AppColors.textGrey
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Text(
                            "English (English)",
                            style: TextStyle(
                                fontSize: 14,
                                color: AppColors.textGrey
                            ),
                          ),
                        ),
                      ],
                    ),
                )


                ],
              ),
            )
          ],
        )
    );
  }
}
