import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_quantity_selector.dart';
import 'package:food_delivery/models/cart_item.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;
  const MyCartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
        builder: (context, restaurant, child) => Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(8),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //food image
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            cartItem.food.imagePath,
                            height: 100,
                            width: 100,
                          ),
                        ),

                        //name and price
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(cartItem.food.name),
                            Text("\$${cartItem.food.price.toString()}"),
                          ],
                        ),

                        const Spacer(),

                        MyQuantitySelector(
                            quantity: cartItem.quantity,
                            food: cartItem.food,
                            onDecrement: () {
                              restaurant.removeFromCart(cartItem);
                            },
                            onIncrement: () {
                              restaurant.addToCart(
                                  cartItem.food, cartItem.selectedAddons);
                            })

                        //increment or decrement quantity
                      ],
                    ),
                  ),

                  //Addons
                  SizedBox(

                    height: cartItem.selectedAddons.isEmpty ? 0 : 60,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      children: cartItem.selectedAddons
                      .map(
                        (addon) => FilterChip(
                          label: Row(
                            children: [
                              Text(addon.name),

                              // addon price
                              Text(' (\$${addon.price.toString()}) ',  style: TextStyle(color: Theme.of(context).colorScheme.primary),),

                            ],
                          ),
                          shape: StadiumBorder(
                            side: BorderSide(
                              color: Theme.of(context).colorScheme.primary
                            ),
                          ),
                          onSelected: (value) {},
                        ),
                      )
                      .toList(),
                    ),
                  ),
                ],
              ),
            ));
  }
}
