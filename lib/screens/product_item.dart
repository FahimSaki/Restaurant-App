import 'package:flutter/material.dart';
import 'package:restaurant_saki/utils/constants.dart';
import 'package:restaurant_saki/utils/responsive_components.dart';

class ProductItem extends StatelessWidget {
  final double width;
  final double height;
  final dynamic productData;

  const ProductItem(
      {Key? key,
      required this.width,
      required this.productData,
      required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final itemheight = ResponsiveComponents.responsiveItemHeight(height);
    final itemwidth = ResponsiveComponents.responsiveItemWidth(width);

    return Container(
      margin: const EdgeInsets.only(right: 20),
      width: itemwidth,
      height: itemheight,
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black87,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                    color: Color.lerp(Colors.white, COLOR_GREENYELLOW, 0.6),
                    boxShadow: const [
                      BoxShadow(
                          offset: Offset(20, 10),
                          blurRadius: 10,
                          color: Colors.black26)
                    ],
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Center(
                          child: Image.asset(
                            "assets/images/${productData['image']}",
                            width: itemwidth,
                          ),
                        ),
                      ),
                      Text(
                        "${productData['headname']}",
                        style: textTheme.titleLarge,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                      RichText(
                        overflow: TextOverflow.ellipsis,
                        text: TextSpan(
                          children: [
                            const WidgetSpan(
                              child: Icon(Icons.restaurant,
                                  color: Colors.red, size: 15),
                            ),
                            TextSpan(
                                text: "${productData['rest']}",
                                style: textTheme.bodySmall)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
