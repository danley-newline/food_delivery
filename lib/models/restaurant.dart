import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/models/cart_item.dart';
import 'package:food_delivery/models/food.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {
  //list of food menu
  //Burger
  final List<Food> _menu = [
    Food(
      name: "Classic Cheeseburger",
      description: "A juicy beef burger with melted cheddar cheese.",
      imagePath: "lib/images/burger/burger1.png",
      price: 4.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Grilled onions", price: 0.79),
      ],
    ),

    Food(
      name: "Double Burger",
      description: "Two juicy beef patties with cheese and secret sauce.",
      imagePath: "lib/images/burger/burger2.png",
      price: 7.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra beef patty", price: 2.99),
        Addon(name: "Caramelized onions", price: 0.99),
        Addon(name: "Fried egg", price: 1.49),
      ],
    ),
    Food(
      name: "Vegan Burger",
      description: "Plant-based patty with fresh veggies and vegan mayo.",
      imagePath: "lib/images/burger/burger3.png",
      price: 6.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Vegan cheese", price: 1.29),
        Addon(name: "Smashed avocado", price: 1.49),
        Addon(name: "Pickled cucumbers", price: 0.79),
      ],
    ),
    Food(
      name: "BBQ Burger",
      description: "Beef patty with BBQ sauce, crispy bacon, and cheddar.",
      imagePath: "lib/images/burger/burger4.png",
      price: 6.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Onion rings", price: 1.49),
        Addon(name: "Extra BBQ sauce", price: 0.49),
        Addon(name: "Smoked gouda", price: 1.79),
      ],
    ),
    Food(
      name: "Mushroom Swiss Burger",
      description: "Savory mushrooms, Swiss cheese, and garlic aioli.",
      imagePath: "lib/images/burger/burger5.png",
      price: 6.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra mushrooms", price: 1.49),
        Addon(name: "Truffle oil drizzle", price: 1.99),
        Addon(name: "Grilled peppers", price: 1.29),
      ],
    ),

//Dessert

    Food(
      name: "Cake Cacao",
      description: "Un délicieux gâteau au cacao moelleux.",
      imagePath: "lib/images/dessert/dessert1.png",
      price: 6.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Chantilly", price: 0.99),
        Addon(name: "Sauce caramel", price: 1.49),
        Addon(name: "Noix concassées", price: 1.29),
      ],
    ),

    Food(
      name: "Tarte aux Fraises",
      description: "Tarte fraîche garnie de fraises et crème pâtissière.",
      imagePath: "lib/images/dessert/dessert2.png",
      price: 5.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Sauce chocolat", price: 0.99),
        Addon(name: "Amandes effilées", price: 1.29),
        Addon(name: "Glace vanille", price: 1.99),
      ],
    ),

    Food(
      name: "Crème Brûlée",
      description: "Un classique avec une croûte de sucre caramélisée.",
      imagePath: "lib/images/dessert/dessert3.png",
      price: 4.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Zestes d'orange", price: 0.99),
        Addon(name: "Fruits rouges", price: 1.49),
        Addon(name: "Caramel salé", price: 1.29),
      ],
    ),

    Food(
      name: "Brownie au Chocolat",
      description: "Fondant au chocolat avec des éclats de noix.",
      imagePath: "lib/images/dessert/dessert4.png",
      price: 4.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Glace chocolat", price: 1.99),
        Addon(name: "Pépites de chocolat", price: 0.79),
        Addon(name: "Sirop d'érable", price: 1.29),
      ],
    ),

//salade

    Food(
      name: "Salade César",
      description: "Salade verte avec poulet grillé, croutons et sauce César.",
      imagePath: "lib/images/salade/salade1.png",
      price: 7.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Parmesan râpé", price: 0.99),
        Addon(name: "Œuf poché", price: 1.49),
        Addon(name: "Avocat", price: 1.99),
      ],
    ),

    Food(
      name: "Salade Niçoise",
      description: "Mélange de thon, olives, œufs durs et légumes frais.",
      imagePath: "lib/images/salade/salade2.png",
      price: 8.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Filets d'anchois", price: 1.29),
        Addon(name: "Poivrons grillés", price: 0.99),
        Addon(name: "Fromage feta", price: 1.49),
      ],
    ),

    Food(
      name: "Salade Grecque",
      description: "Tomates, concombres, oignons rouges, olives et feta.",
      imagePath: "lib/images/salade/salade3.png",
      price: 6.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Menthe fraîche", price: 0.49),
        Addon(name: "Pignons de pin", price: 1.29),
        Addon(name: "Poulet grillé", price: 2.49),
      ],
    ),

    Food(
      name: "Salade de Quinoa",
      description:
          "Quinoa, légumes croquants, avocat et vinaigrette citronnée.",
      imagePath: "lib/images/salade/salade4.png",
      price: 9.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Graines de tournesol", price: 0.99),
        Addon(name: "Saumon fumé", price: 2.99),
        Addon(name: "Œuf dur", price: 1.49),
        Addon(name: "Attieke", price: 1.49),
        Addon(name: "Pain dur", price: 1.49),
      ],
    ),
  ];

  /*
    G E T T E R S
  */
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  /*
    O P E R A T I O N S
  */

// user cart
  final List<CartItem> _cart = [];

  // Add To Cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    // see if there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food items are the same
      bool isSameFood = item.food == food;

      // check if the list of selected addons are the same
      bool isSameAddon =
          ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddon;
    });

    // if items already existe increase it's quantity
    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(
        CartItem(food: food, selectedAddons: selectedAddons),
      );
    }
    notifyListeners();
  }

  // Remove from Cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }

    notifyListeners();
  }

  //get Total Price
  double getTotalPrice() {
    double total = 0.0;
    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }

    return total;
  }

  // get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

/*
  H E L P E R S

*/

// generate a receipt
String displayCartReceipt() {
  final receipt = StringBuffer();
  receipt.writeln("Here is your receipt.");
  receipt.writeln();

  // format the date to include up seconds only
  String formatedDate = DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
  receipt.writeln(formatedDate);
  receipt.writeln();
  receipt.writeln("--------------");

  for (final cartItem in _cart) {
    receipt.writeln("${cartItem.quantity} x ${cartItem.food.name} - ${cartItem.food.price}");

    if (cartItem.selectedAddons.isNotEmpty) {
      receipt.writeln(" Add-ons : ${_formatAddons(cartItem.selectedAddons)}  ");
    }
    receipt.writeln();
  }

  receipt.writeln("-----------");
  receipt.writeln();
  receipt.writeln("Total items: ${getTotalItemCount()}  " );
  receipt.writeln("Total price: ${_formatPrice(getTotalPrice())}  " );

  return receipt.toString();
}

// format double value into money
  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

// format list of addons into a string  summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
}
