import 'package:flutter/material.dart';
import 'package:restaurant_saki/screens/product_item.dart';
import 'package:restaurant_saki/screens/product_page.dart';
import 'package:restaurant_saki/utils/constants.dart';
import 'package:restaurant_saki/utils/responsive_components.dart';
import 'package:restaurant_saki/utils/widget_functions.dart';
import 'package:restaurant_saki/utils/product_data.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  final FocusNode _focusNode = FocusNode();

  @override
  void dispose() {
    super.dispose();
    _focusNode.unfocus();
  }

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: ResponsiveComponents.responsiveTopBarHeight(
                          screenHeight: constraints.maxHeight,
                          screenWidth: constraints.maxWidth),
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Container(
                            width: 1280,
                            height: 720,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/back.png'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                addVerticalSpace(20),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    addHorizontalSpace(20),
                                    Container(
                                        width: 100,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          color: Colors.white,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image.asset(
                                              "assets/images/main_logo_2.png"),
                                        )),
                                    addHorizontalSpace(20),
                                    Expanded(
                                      flex: 7,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Welcome to Redford Indian Tandoori Restaurant",
                                            style: textTheme.headlineMedium!
                                                .apply(color: Colors.white),
                                          ),
                                          Text(
                                            "Bäckgatan 17 Växjö",
                                            style: textTheme.titleMedium!
                                                .apply(color: Colors.white),
                                          ),
                                          Text(
                                            "– 0470 777702",
                                            style: textTheme.titleMedium!
                                                .apply(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                addVerticalSpace(10),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 12,
                      color: COLOR_DESERTSAND.withOpacity(1),
                    ),
                    Expanded(
                      child: Container(
                        width: constraints.maxWidth,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/images/background_landing6.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 10.0, bottom: 10.0),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Column(
                                children: [
                                  addVerticalSpace(40),
                                  Row(
                                    children: [
                                      addHorizontalSpace(10),
                                      Text(
                                        "Popular Foods",
                                        style: textTheme.headlineMedium,
                                      ),
                                      addHorizontalSpace(10),
                                      Text(
                                        "(SCROLL DOWN)",
                                        style: textTheme.headlineSmall,
                                      ),
                                      const Expanded(
                                        child: Center(),
                                      ),
                                    ],
                                  ),
                                  addVerticalSpace(15),
                                  Text(
                                    "(klicka här nere ⬇)",
                                    style: textTheme.headlineSmall,
                                  ),
                                  addVerticalSpace(15),
                                  SizedBox(
                                    height: ResponsiveComponents
                                        .responsiveItemHeight(
                                            constraints.maxHeight),
                                    child: GridView.builder(
                                      gridDelegate:
                                          const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        mainAxisSpacing: 10,
                                      ),
                                      itemBuilder: (context, index) {
                                        final data = PRODUCT_DATA[index];
                                        //addHorizontalSpace(10);
                                        return SizedBox(
                                          width: ResponsiveComponents
                                              .responsiveItemWidth(
                                                  constraints.maxWidth),
                                          child: InkWell(
                                            onTap: () {
                                              _focusNode.unfocus();
                                              Navigator.of(context).push(
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      ProductPage(
                                                          productData: data),
                                                ),
                                              );
                                            },
                                            child: ProductItem(
                                              width: constraints.maxWidth,
                                              height: constraints.maxHeight,
                                              productData: data,
                                            ),
                                          ),
                                        );
                                      },
                                      itemCount: PRODUCT_DATA.length,
                                    ),
                                  ),
                                  addVerticalSpace(20),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                    right: 10,
                    top: ResponsiveComponents.responsiveTopBarHeight(
                            screenHeight: constraints.maxHeight,
                            screenWidth: constraints.maxWidth) -
                        90,
                    child: Transform.rotate(
                      angle: 0.08,
                      child: Container(
                        height: ResponsiveComponents.responsiveMenuBarHeight(
                            constraints.maxHeight),
                        width: ResponsiveComponents.responsiveMenuBarWidth(
                            constraints.maxWidth),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade400.withOpacity(0.6),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            border: Border.all(
                              color: COLOR_SEALBROWN.withOpacity(1),
                              width: 3,
                            )),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              addVerticalSpace(10),
                              const Text(
                                "Öppettider",
                                style: TextStyle(
                                    color: COLOR_BROWNRED,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 18),
                              ),
                              addVerticalSpace(2),
                              const Center(
                                child: SizedBox(
                                  height: 2,
                                  width: 80,
                                  child: DecoratedBox(
                                      decoration: BoxDecoration(
                                          color: COLOR_BLACKPURPLE)),
                                ),
                              ),
                              addVerticalSpace(4),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                child: Column(
                                  children: [
                                    Text(
                                      "Måndag    -    Torsdag 16.00-21.00",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 10),
                                    ),
                                    Text(
                                      "Fredag                11.30-21.30",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 10),
                                    ),
                                    Text(
                                      "Lördag                12.00-21.30",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 10),
                                    ),
                                    Text(
                                      "Söndag                13.00-20.00",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 10),
                                    ),
                                    Text(
                                      "Lunch                  11.30-13.30",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 10),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ))
              ],
            );
          },
        ),
      ),
    );
  }
}
