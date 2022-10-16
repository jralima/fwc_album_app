import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class RegisterStickerViewModel {
  final String name;
  final String stickerCode;
  final String stickerNumber;

  RegisterStickerViewModel({
    required this.name,
    required this.stickerCode,
    required this.stickerNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'sticker_code': stickerCode,
      'sticker_number': stickerNumber,
    };
  }

  factory RegisterStickerViewModel.fromMap(Map<String, dynamic> map) {
    return RegisterStickerViewModel(
      name: map['name'] ?? '',
      stickerCode: map['sticker_code'] ?? '',
      stickerNumber: map['sticker_number'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory RegisterStickerViewModel.fromJson(String source) =>
      RegisterStickerViewModel.fromMap(
          json.decode(source) as Map<String, dynamic>);
}
