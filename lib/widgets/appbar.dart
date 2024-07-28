import 'package:flutter/material.dart';
import 'package:fruit_shop_app/core/constants/common.dart';
import 'package:fruit_shop_app/core/constants/const.dart';

class HomeAppBar extends StatefulWidget {
  final bool isthereback;
  final VoidCallback? onBackTap; // Define the callback function
  final bool isVisible;
  const HomeAppBar({
    super.key,
    this.isthereback = true,
    this.onBackTap,
    this.isVisible = true,
  });

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenwidth = screenWidth(context);

    final paddingw20 = screenwidth * 20 / FigmaConstants.figmaDeviceWidth;

    return Visibility(
      visible: widget.isVisible,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 5,
          right: 5,
          bottom: 5,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            widget.isthereback
                ? Visibility(
                    visible: widget.isthereback,
                    child: Material(
                      color: Colors
                          .transparent, // Ensure the Material is invisible
                      child: Container(
                          padding: EdgeInsets.only(
                            left: paddingw20,
                            right: paddingw20,
                            top: 10,
                            bottom: 10,
                          ),
                          child: IconButton(
                              onPressed: widget.onBackTap,
                              icon: const Icon(Icons.arrow_back_ios))),
                    ),
                  )
                : Material(
                    color:
                        Colors.transparent, // Ensure the Material is invisible
                    child: Container(
                        padding: EdgeInsets.only(
                          left: paddingw20,
                          right: paddingw20,
                          top: 10,
                          bottom: 10,
                        ),
                        child: IconButton(
                            onPressed: widget.onBackTap,
                            icon: const Icon(
                              Icons.menu,
                              size: 34,
                            ))),
                  ),
            const Spacer(),
            Container(
              constraints: const BoxConstraints(
                maxHeight: 70, // Set maximum height
                maxWidth: 160, // Set maximum width
              ),
              child: Image.asset(
                'assets/vegan.png',
                width: 190,
                height: 33,
                fit: BoxFit
                    .contain, // Maintain aspect ratio while fitting the image within the box
                color: Colors.green,
              ),
            ),
            const Spacer(),
            const SizedBox(width: 35)
          ],
        ),
      ),
    );
  }
}
