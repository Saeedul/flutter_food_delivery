import 'package:flutter/material.dart';
import 'package:flutter_food_delivery/utils/colors.dart';
import 'package:flutter_food_delivery/utils/dimensions.dart';
import 'package:flutter_food_delivery/widgets/app_icon.dart';
import 'package:flutter_food_delivery/widgets/big_text.dart';
import 'package:flutter_food_delivery/widgets/expandable_text_widget.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(slivers: [
        SliverAppBar(
          toolbarHeight: 70,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppIcon(icon: Icons.clear),
              AppIcon(icon: Icons.shopping_cart_outlined)
            ],
          ),
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(
                    child:
                        BigText(size: Dimensions.font26, text: "Chinese Side")),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimensions.radius20),
                        topRight: Radius.circular(Dimensions.radius20))),
              )),
          pinned: true,
          backgroundColor: AppColors.yellowColor,
          expandedHeight: 300,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
              "assets/image/food0.png",
              width: double.maxFinite,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              Container(
                child: ExpandableTextWidget(
                    text:
                        "Savoring the delectable world of Chinese cuisine, one dish that stands out with its irresistible flavors and rich history is Peking Duck. With origins dating back to the imperial courts of the Ming Dynasty over 600 years ago, Peking Duck has evolved into a symbol of Chinese culinary excellence and a global gastronomic delight. The magic of Peking Duck begins with the meticulous preparation of the duck itself. Specially bred ducks are seasoned and air-dried, a process that can take hours, to achieve that sought-after crispy skin. Once dried, the duck is roasted to perfection in a closed oven using fruitwood, infusing it with a delightful smokiness. The result is a stunning contrast of textures and flavors: the skin crackles with each bite, providing a satisfying crunch, while the meat inside remains tender and flavorful. The presentation of Peking Duck is an art form in itself. A skilled chef traditionally carves the duck tableside, deftly slicing the crispy skin into thin, delicate pieces. These slices are then served with an array of accompaniments, including thin pancakes, spring onions, cucumber, and hoisin sauce. The dining experience is interactive and immersive, as diners create their own savory parcels by wrapping a slice of crispy duck skin, a dollop of hoisin sauce, and a few julienned cucumber and spring onion strips in a pancake. The symphony of flavors in Peking Duck is what makes it truly exceptional. The crispy skin provides a satisfying crunch, while the succulent duck meat bursts with rich, savory notes. The hoisin sauce adds a hint of sweetness and depth, perfectly complementing the duck's savory profile. The fresh cucumber and spring onions contribute a refreshing crunch and a touch of sharpness, balancing the dish's flavors. The thin pancakes serve as a neutral backdrop that ties everything together, allowing for a harmonious blend of tastes and textures. Peking Duck goes beyond being a culinary masterpiece; it holds deep cultural significance in China. Often featured in grand celebrations and family gatherings, it symbolizes joy and unity. The careful preparation and carving of the duck reflect traditional Chinese values of precision and craftsmanship. Moreover, Peking Duck serves as an ambassador of Chinese culinary heritage globally, introducing people worldwide to the depth and richness of Chinese cuisine. In conclusion, Peking Duck is more than just a dish; it's a journey through time and a celebration of culinary artistry. Its timeless appeal, unforgettable flavors, and cultural importance make it a quintessential part of Chinese cuisine. Whether enjoyed in a traditional Beijing restaurant or savored elsewhere in the world, Peking Duck is an experience that tantalizes the senses and leaves an indelible mark on the palate."),
                margin: EdgeInsets.only(
                    left: Dimensions.width20, right: Dimensions.width20),
              )
            ],
          ),
        )
      ]),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
                left: Dimensions.width20 * 2.5,
                right: Dimensions.width20 * 2.5,
                top: Dimensions.height10,
                bottom: Dimensions.height10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.remove),
                BigText(
                  text: "\$12.88 " + " X " + " 0 ",
                  color: AppColors.mainBlackColor,
                  size: Dimensions.font26,
                ),
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.add)
              ],
            ),
          ),
          Container(
            height: Dimensions.bottomHeightBar,
            padding: EdgeInsets.only(
                top: Dimensions.height30,
                bottom: Dimensions.height30,
                left: Dimensions.width20,
                right: Dimensions.width20),
            decoration: BoxDecoration(
                color: AppColors.buttonBackgroundColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20 * 2),
                    topRight: Radius.circular(Dimensions.radius20 * 2))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height20,
                      bottom: Dimensions.height20,
                      left: Dimensions.width20,
                      right: Dimensions.width20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: Colors.white),
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height20,
                      bottom: Dimensions.height20,
                      left: Dimensions.width20,
                      right: Dimensions.width20),
                  child: BigText(
                    text: "\$10 | Add to cart",
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: AppColors.mainColor),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
