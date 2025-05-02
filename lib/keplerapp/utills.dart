import 'dart:ui';

class ColorTheme {
  static Color primaryColor = HexColor("#EF8219");
  static Color secondaryColor = HexColor("#8D261F");
  static Color buttonColor = HexColor("#FED23E");
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

class Globels {
  static var activityMap = [
    {
      "id": 1,
      "path": "assets/keplerassets/Icon 1.png",
    },
    {
      "id": 2,
      "path": "assets/keplerassets/Icon 2.png",
    },
    {
      "id": 3,
      "path": "assets/keplerassets/Icon 3.png",
    },
    {
      "id": 4,
      "path": "assets/keplerassets/Icon 4.png",
    },
    {
      "id": 5,
      "path": "assets/keplerassets/Icon 5.png",
    },
    {
      "id": 6,
      "path": "assets/keplerassets/Icon 6.png",
    },
  ];
  static String name = "Your Name";
  static String email = "yoemail@email.com";
  static String password = "*****";

  static dynamic questionsMap = [
    {
      "id": 1,
      "question":
          "Which of the following is NOT a major domain of child development?",
      "Answer": "Financial development",
      "options": [
        "Physical development",
        "Cognitive development",
        "Financial development",
        "Social and emotional development"
      ]
    },
    {
      "id": 2,
      "question": "What is the primary function of the brain?",
      "Answer": "To control the body's functions",
      "options": [
        "To control the body's functions",
        "To control the body's emotions",
        "To control the body's senses",
        "To control the body's movement"
      ]
    },
    {
      "id": 3,
      "question": "At what age do most children start walking independently?",
      "Answer": "12 months",
      "options": ["6 months", "12 months", "18 months", "24 months"]
    },
    {
      "id": 4,
      "question":
          "Which factor has the most significant impact on a child's growth and development?",
      "Answer": "All of the above",
      "options": ["Genetics", "Nutrition", "Environment", "All of the above"]
    },
    {
      "id": 5,
      "question":
          "What is the term used to describe a child's ability to understand and use language?",
      "Answer": "To control the body's functions",
      "options": [
        "Motor skills",
        "Linguistic intelligence",
        "Cognitive development",
        "Language acquisition"
      ]
    },
  ];
}
