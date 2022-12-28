import 'dart:convert';
List<MealPlan> mealPlan = [];

class MealPlan {
  MealPlan({
    required this.meal,
    required this.calories,
    required this.meals,
  });

  final String meal;
  final int calories;
  final List<Meal> meals;

  factory MealPlan.fromRawJson(String str) => MealPlan.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MealPlan.fromJson(Map<String, dynamic> json) => MealPlan(
    meal: json["meal"],
    calories: json["calories"],
    meals: List<Meal>.from(json["meals"].map((x) => Meal.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "meal": meal,
    "calories": calories,
    "meals": List<dynamic>.from(meals.map((x) => x.toJson())),
  };
}

class Meal {
  Meal({
    required this.name,
    required this.time,
  });

  final String name;
  final String time;

  factory Meal.fromRawJson(String str) => Meal.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Meal.fromJson(Map<String, dynamic> json) => Meal(
    name: json["name"],
    time: json["time"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "time": time,
  };
}
