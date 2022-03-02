import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_project_01/constants/assets.dart';
import 'package:responsive_project_01/models/responsive.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding * 1.25,
      ),
      child: Row(
        children: [
          // Dashboard
          Row(
            children: [
              if (!Responsive.isDesktop(context))
                IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(Icons.menu),
                ),
              if (!Responsive.isMobile(context))
                const Text(
                  'Dashboard',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
            ],
          ),

          // Spacing between
          if (!Responsive.isMobile(context))
            Spacer(
              flex: Responsive.isDesktop(context) ? 9 : 6,
            ),

          Expanded(
            flex: 10,
            child: Row(
              children: const [
                // Searching
                Expanded(
                  flex: 1,
                  child: HeaderSearching(),
                ),

                // Name
                Profile(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HeaderSearching extends StatelessWidget {
  const HeaderSearching({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search",
        fillColor: secondaryColor,
        filled: true,
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(
              defaultBorderRadius,
            ),
          ),
        ),
        suffixIcon: InkWell(
          onTap: () {},
          // Để có thể có onTap thì cần Inkwell
          child: Container(
            margin: const EdgeInsets.symmetric(
              horizontal: defaultPadding / 2,
            ),
            padding: const EdgeInsets.all(defaultPadding * 0.7),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                defaultBorderRadius,
              ),
              color: primaryColor,
            ),
            child: SvgPicture.asset(
              searchIcon,
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // Không cần tap được
      margin: const EdgeInsets.only(
        left: defaultPadding,
      ),
      padding: const EdgeInsets.all(
        defaultPadding * 0.7,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          defaultBorderRadius,
        ),
        color: secondaryColor,
        border: Border.all(
          width: 1.5,
          color: Colors.white10,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(
              defaultBorderRadius,
            ),
            child: Image.asset(
              profilePic,
              height: 38,
            ),
          ),
          const SizedBox(
            width: 2 * defaultPadding,
          ),
          const Text(
            'Little Tree',
            softWrap: true,
          ),
          const SizedBox(
            width: defaultPadding,
          ),
          const Icon(Icons.keyboard_arrow_down),
        ],
      ),
    );
  }
}
