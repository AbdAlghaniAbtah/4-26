import 'dart:ffi';

void main() {
  List<Map<String, dynamic>> orders = [
    {"number": 1, "status": "ready", "item": "burger"},
    {"number": 2, "status": "canceled", "item": "pizza"},
    {"number": 3, "status": "vip", "item": "nuggets"},
    {"number": 4, "status": "ready", "item": "fries"},
  ];
  for (var i in orders) {
    if (i["status"] == "canceled") {
      continue;
    } else if (i["status"] == "vip") {
      print("Please prepare the application now");
      break;
    }
    switch (i["item"]) {
      case "burger":
        print("Preparing the burger");
        break;
      case "pizza":
        print("Preparing the pizza");
        break;
      case "nuggets":
        print("Preparing the nuggets");
        break;
      case "fries":
        print("Preparing the fries");
        break;
      default:
        print("Unknown element");
        break;
    }
    if (i["number"] == 4) {
      print("The order will be very delayed.");
    }
    print(".....");
  }
}
