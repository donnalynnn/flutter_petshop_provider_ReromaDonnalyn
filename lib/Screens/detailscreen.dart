import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import '../Models/animal.dart';
import '../Providers/cart_provider.dart';
import '/size_config.dart';
import '/app_styles.dart';
import 'package:icon_checkbox/icon_checkbox.dart';

class PetDetails extends StatelessWidget {
  const PetDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CartProvider cartProvider = Provider.of<CartProvider>(context);
    SizeConfig().init(context);
    final item = ModalRoute.of(context)!.settings.arguments as Animal;
    
    return Scaffold(
      backgroundColor: kWhite,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 50,
              child: Stack(
                children: [
                  Image.asset(
                    'assets/${item.animalPicture}',
                    height: SizeConfig.blockSizeVertical! * 60,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(42),
                          topRight: Radius.circular(42),
                        ),
                        color: kWhite,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: SizeConfig.blockSizeVertical! * 8,
                        left: SizeConfig.blockSizeHorizontal! * 8,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          debugPrint('Tapped');
                        },
                        child: SvgPicture.asset(
                          'assets/arrow_left_icon.svg',
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: kPaddingHorizontal,
              ),
              transform: Matrix4.translationValues(0, -12, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      
                      Text(
                        item.animalName,
                        style: kSourceSansProBold.copyWith(
                          fontSize: SizeConfig.blockSizeHorizontal! * 6,
                          color: kBlack,
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/pin_point_icon.svg',
                          ),
                          
                          Text(
                            'Canada · 8m',
                            style: kSourceSansProregular.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 4,
                              color: kLighterGrey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  IconCheckbox(
                    checkedIcon: Icons.shopping_cart,
                    uncheckedIcon: Icons.shopping_cart_checkout_outlined,
                    value: cartProvider.items.contains(item),
                    iconSize: 30,
                    checkColor: kAmber,
                    unCheckColor: kAmber,
                    onChanged: (value) {
                      if (value == true) {
                        cartProvider.add(item);
                      } else {
                        cartProvider.remove(item);
                      }
                    }
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
              child: Text(
                'About ${item.animalName}',
                style: kSourceSansProregular.copyWith(
                  color: kLighterGrey,
                  fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                ),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            const SizedBox(
              height: kPaddingHorizontal,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: kPaddingHorizontal,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color.fromRGBO(232, 245, 233, 0.3),
                    ),
                    width: SizeConfig.blockSizeHorizontal! * 25,
                    child: Column(
                      children: [
                        Text(
                          'Weight',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: kSourceSansProLight.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 4,
                            color: kBlack,
                          ),
                        ),
                        Text(
                          item.animalWeight,
                          style: kSourceSansProBold.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 4,
                            color: const Color(0xffe8be13),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color.fromRGBO(232, 245, 233, 0.3),
                    ),
                    width: SizeConfig.blockSizeHorizontal! * 25,
                    child: Column(
                      children: [
                        Text(
                          'Height',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: kSourceSansProLight.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 4,
                            color: kBlack,
                          ),
                        ),
                        Text(
                          item.animalHeight,
                          style: kSourceSansProBold.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 4,
                            color: const Color(0xffe8be13),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color.fromRGBO(232, 245, 233, 0.3),
                    ),
                    width: SizeConfig.blockSizeHorizontal! * 25,
                    child: Column(
                      children: [
                        Text(
                          'Color',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: kSourceSansProLight.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 4,
                            color: kBlack,
                          ),
                        ),
                        Text(
                          item.animalColor,
                          style: kSourceSansProBold.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 4,
                            color: const Color(0xffe8be13),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: kPaddingHorizontal,
            ),
            
            const SizedBox(
              height: 6,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
              child: Text(
                item.animalDescription,
                style: kSourceSansProLight.copyWith(
                  color: kGrey,
                  fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                ),
              ),
            ),
            const SizedBox(
              height: kPaddingHorizontal,
            ),
            const SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}
