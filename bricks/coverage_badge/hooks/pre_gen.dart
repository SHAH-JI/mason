import 'package:mason/mason.dart';

void run(HookContext context) {
  Map<String, dynamic> variables= context.vars;
  String percentage = variables['percentage'].toString();
  String svgColor='0FCF00';
  if(num.parse(percentage)<50){
    svgColor='FF0000';
  }
  else if(num.parse(percentage)<80){
    svgColor='FFCF00';
  }
  variables['badgeColor']=svgColor;
  context.vars=variables;
}