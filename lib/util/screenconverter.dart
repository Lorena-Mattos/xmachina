// ignore_for_file: constant_identifier_names

const double width_figma = 360;
const double height_figma = 640;

double convertHeight(double height, double screenHeight) {
  double percent = ((height * 100) / height_figma) / 100;
  return screenHeight * percent;
  
}

