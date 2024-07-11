import 'package:flutter/material.dart';
import 'package:fruit_shop_app/core/constants/common.dart';
import 'package:fruit_shop_app/core/constants/const.dart';
import 'package:svg_flutter/svg.dart';

class HomeAppBar extends StatefulWidget {
  final bool isthereQr;
  final bool isthereback;
  final VoidCallback? onBackTap; // Define the callback function
  final bool isVisible;
  const HomeAppBar({
    super.key,
    this.isthereQr = true,
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
    final paddingw10 = screenwidth * 10 / FigmaConstants.figmaDeviceWidth;
    final paddingw20 = screenwidth * 20 / FigmaConstants.figmaDeviceWidth;

    return Visibility(
      visible: widget.isVisible,
      child: Padding(
        padding: EdgeInsets.only(
          left: paddingw10,
          right: paddingw10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            widget.isthereback
                ? Visibility(
                    visible: widget.isthereback,
                    child: InkWell(
                      radius: 233,
                      borderRadius: const BorderRadius.all(Radius.circular(23)),
                      onTap: widget.onBackTap,
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
                          child: Image.asset(
                            "assets/app_bar/hamberger.png",
                            color: Colors.black,
                            width: 25,
                          ),
                        ),
                      ),
                    ),
                  )
                : InkWell(
                    radius: 233,
                    borderRadius: const BorderRadius.all(Radius.circular(23)),
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
                        child: const SizedBox(width: 9),
                      ),
                    ),
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
                color: Colors.red,
              ),
            ),
            const Spacer(),
            InkWell(
              radius: 233,
              borderRadius: const BorderRadius.all(Radius.circular(23)),
              onTap: () async {},
              child: Material(
                color: Colors.transparent, // Ensure the Material is invisible
                child: Container(
                  padding: EdgeInsets.only(
                    left: paddingw20,
                    right: paddingw20,
                    top: 10,
                    bottom: 10,
                  ),
                  child: Visibility(
                    visible: widget.isthereQr,
                    child: SvgPicture.asset(
                      'assets/qr_code.svg',
                      fit: BoxFit
                          .contain, // Ensure the SVG fits within the 10x10 area
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
