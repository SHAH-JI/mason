import 'package:mason/mason.dart';

void run(HookContext context) {
  Map<String, dynamic> variables= context.vars;
  num percentage = variables['percentage'];
  String svgColor='0FCF00';
  if(percentage<50){
    svgColor='FF0000';
  }
  else if(percentage<80){
    svgColor='FFCF00';
  }
  variables['badgeColor']=svgColor;
  context.vars=variables;
}