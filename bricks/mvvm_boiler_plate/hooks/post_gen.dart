import 'dart:io';
import 'package:mason/mason.dart';

void run(HookContext context) async{
  Map<String,dynamic> variables = context.vars;
  final progress = context.logger.progress('Installing packages ...');
  await Process.run('flutter', ['pub','add',variables['state_manager']]);
  await Process.run('flutter', ['pub','add','very_good_analysis']);
  await Process.run('flutter', ['pub','add','freezed_annotation']);
  await Process.run('flutter', ['pub','add','json_annotation']);
  await Process.run('flutter', ['pub','add','google_fonts']);
  await Process.run('flutter', ['pub','add','dio']);
  await Process.run('flutter', ['pub','add','http']);
  await Process.run('flutter', ['pub','add','rive']);
  await Process.run('flutter', ['pub','add','build_runner','--dev']);
  await Process.run('flutter', ['pub','add','freezed','--dev']);
  await Process.run('flutter', ['pub','add','json_serializable','--dev']);
  progress.complete();
}
