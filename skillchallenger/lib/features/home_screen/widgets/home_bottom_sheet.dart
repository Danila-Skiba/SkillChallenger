import 'package:flutter/material.dart';

import '../../../ui/ui.dart';
import '../home.dart';

class HomeBottomSheet extends StatefulWidget {
  const HomeBottomSheet({super.key});

  @override
  State<HomeBottomSheet> createState() => _HomeBottomSheetState();
}

class _HomeBottomSheetState extends State<HomeBottomSheet> {
  RangeValues _currentRangeValues = RangeValues(28, 36);
  String _selectedGender = 'male';
  final List<HobbyCard> hobbies = [
    sportHobbyCard,
    englishHobbyCard,
    photographyHobbyCard,
    gamingHobbyCard,
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BaseTextField(
                  icon: Icon(Icons.search_outlined, color: hintTextColor),
                ),
              ],
            ),
          ),

          SliverToBoxAdapter(
            child: Divider(
              color: theme.dividerColor.withValues(alpha: 0.2),
              indent: 0,
              endIndent: 0,
            ),
          ),

          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  height: 400,
                  color: Colors.transparent,
                  child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    itemBuilder:
                        (context, index) => Row(
                          children: [
                            SearchUserInfo(
                              borderColor: colorIconHobbyCardColorKitchen,
                              user: UserModel(
                                imagePath:
                                    "assets/images/images/AdamSmith_full.png",
                                name: "Adam Smith",
                                location: "Moscow",
                                hobbies: [
                                  chessHobbyCard,
                                  readingHobbyCard,
                                  englishHobbyCard,
                                  musicHobbyCard,
                                ],
                                age: 19,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add_circle_outline_rounded,
                                color: primaryColor,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                    separatorBuilder: (context, index) => SizedBox(height: 21),
                    itemCount: 6,
                  ),
                ),
              ],
            ),
          ),

          SliverToBoxAdapter(
            child: Divider(
              color: theme.dividerColor.withValues(alpha: 0.2),
              indent: 0,
              endIndent: 0,
            ),
          ),

          SliverList(
            delegate: SliverChildListDelegate([
              Text(
                "Filters",
                style: theme.textTheme.titleLarge?.copyWith(
                  color: primaryColorDark,
                ),
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Age",
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: primaryColor,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "${_currentRangeValues.start.round().toString()} - ${_currentRangeValues.end.round().toString()}",
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: primaryColorDark,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),

              _buildRangeSliderAge(),
              SizedBox(height: 10),
              Text(
                "Gender",
                style: theme.textTheme.titleMedium?.copyWith(
                  color: primaryColor,
                  fontSize: 16,
                ),
              ),

              SizedBox(height: 10),
              _buildGenderCheckBox(),
              SizedBox(height: 20),
              Text(
                "Interesting activities",
                style: theme.textTheme.titleMedium?.copyWith(
                  color: primaryColor,
                  fontSize: 16,
                ),
              ),

              SizedBox(height: 10),

              Row(
                children: [BaseTextField(width: 250, hintText: "Activity...")],
              ),
            ]),
          ),
        ],
      ),
    );
  }

  RangeSlider _buildRangeSliderAge() {
    return RangeSlider(
      values: _currentRangeValues,
      min: 18,
      max: 70,
      divisions: 52,

      activeColor: primaryColor,
      inactiveColor: backgroundIconColor,

      onChanged: (RangeValues values) {
        setState(() {
          _currentRangeValues = values;
        });
      },
    );
  }

  Row _buildGenderCheckBox() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          child: CustomCheckBox(
            iconData: Icons.male_rounded,
            selectedGender: _selectedGender,
            checkController: 'male',
            text: 'Men',
          ),
          onTap: () {
            setState(() {
              _selectedGender = 'male';
            });
          },
        ),
        GestureDetector(
          child: CustomCheckBox(
            iconData: Icons.female_rounded,
            selectedGender: _selectedGender,
            checkController: "female",
            text: "Women",
          ),
          onTap: () {
            setState(() {
              _selectedGender = 'female';
            });
          },
        ),
        GestureDetector(
          child: CustomCheckBox(
            iconData: Icons.people_outline_rounded,
            selectedGender: _selectedGender,
            checkController: "any",
            text: "Any",
          ),
          onTap: () {
            setState(() {
              _selectedGender = 'any';
            });
          },
        ),
      ],
    );
  }
}
