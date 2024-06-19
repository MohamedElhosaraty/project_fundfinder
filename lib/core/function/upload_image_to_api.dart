import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';

Future upLoadImageToAPI (XFile image) async {
  return MultipartFile.fromString(image.path,filename: image.path.split('/').last);//.fromFile(image.path,filename :image.path.split('/').last);
}