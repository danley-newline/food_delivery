import 'package:food_delivery/models/food.dart';

class Restaurant {
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
      name: "Double Beef Burger",
      description: "Two juicy beef patties with cheese and secret sauce.",
      imagePath: "lib/images/burger/buger2.png",
      price: 7.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra beef patty", price: 2.99),
        Addon(name: "Caramelized onions", price: 0.99),
        Addon(name: "Fried egg", price: 1.49),
      ],
    ),
    Food(
      name: "Vegan Delight Burger",
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
      name: "BBQ Bacon Burger",
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

    Food(
      name: "Tiramisu Classique",
      description: "Dessert italien à base de mascarpone et café.",
      imagePath: "lib/images/dessert/dessert5.png",
      price: 5.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Poudre de cacao", price: 0.49),
        Addon(name: "Chocolat râpé", price: 0.99),
        Addon(name: "Amaretto", price: 1.99),
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
      ],
    ),
  ];

  /*
    G E T T E R S
  */
  List<Food> get menu => _menu;


  /*
    O P E R A T I O N S
  */

  
}
