import 'package:flutter/material.dart';
import 'package:restaurant_saki/utils/button.dart';
import 'package:restaurant_saki/utils/constants.dart';
import 'package:restaurant_saki/utils/widget_functions.dart';

class ProductPage extends StatefulWidget {
  final Map<String, dynamic> productData;

  const ProductPage({Key? key, required this.productData}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(builder: (context, constraints) {
          return SizedBox(
            height: constraints.maxHeight,
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: constraints.maxHeight * 0.40,
                    child: Stack(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/background_landing3.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Center(
                            child: Image.asset(
                              "assets/images/${widget.productData['image']}",
                              width: constraints.maxWidth * 0.50,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 10,
                          left: 10,
                          child: SquareIconButton(
                            icon: Icons.arrow_back_ios_outlined,
                            width: 50,
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            buttonColor: Colors.orange.shade100,
                            iconColor: Colors.orange,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(child: addVerticalSpace(10)),
                SliverToBoxAdapter(
                  child: Container(
                    color: Colors.grey.shade50,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              addVerticalSpace(20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "${widget.productData['name']}",
                                        style: textTheme.headlineSmall,
                                      ),
                                      addVerticalSpace(5),
                                      RichText(
                                        overflow: TextOverflow.ellipsis,
                                        text: TextSpan(
                                          children: [
                                            const WidgetSpan(
                                              child: Icon(Icons.restaurant,
                                                  color: Colors.red, size: 15),
                                            ),
                                            TextSpan(
                                                text:
                                                    "${widget.productData['rest']}",
                                                style: textTheme.titleSmall!
                                                    .apply(color: COLOR_GREY))
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              addVerticalSpace(20),
                              const Divider(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    var item = widget.productData["items"][index];
                    return Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        item["number"].toString(),
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                      addHorizontalSpace(8),
                                      Text(
                                        item["foodname"].toString(),
                                        style: textTheme.titleLarge,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        item["price"].toString(),
                                        style: const TextStyle(
                                          color: Colors.red,
                                        ),
                                      ),
                                      Text(
                                        item["currency"].toString(),
                                        style: const TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Text(item["ingredients"].toString()),
                            ],
                          ),
                          Wrap(
                            spacing: 10,
                            children: ((item["itemsin"] ?? []) as List)
                                .map(
                                  (e) => Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        e["infoodname"].toString(),
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      addHorizontalSpace(30),
                                      Text(
                                        e["pricein"].toString(),
                                        style: const TextStyle(
                                          color: Colors.red,
                                        ),
                                      ),
                                      Text(
                                        e["currencyin"].toString(),
                                        style: const TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      addHorizontalSpace(60),
                                    ],
                                  ),
                                )
                                .toList(),
                          ),
                          addVerticalSpace(6),
                          Text(item["ingredientsin"].toString()),
                          addVerticalSpace(6),
                        ],
                      ),
                    );
                  }, childCount: (widget.productData["items"] ?? []).length),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
