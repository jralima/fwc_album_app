// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UserStickerModel {
  final int id;
  final int idUser;
  final int idSticker;
  final int duplicate;
  final String stickerCode;
  final String stickerNumber;

  UserStickerModel(
    this.id,
    this.idUser,
    this.idSticker,
    this.duplicate,
    this.stickerCode,
    this.stickerNumber,
  );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'id_user': idUser,
      'id_sticker': idSticker,
      'duplicate_stickers': duplicate,
      'sticker_code': stickerCode,
      'sticker_number': stickerNumber,
    };
  }

  factory UserStickerModel.fromMap(Map<String, dynamic> map) {
    return UserStickerModel(
      map['id']?.toInt() ?? 0,
      map['id_user']?.toInt() ?? 0,
      map['id_sticker']?.toInt() ?? 0,
      map['duplicate_stickers']?.toInt() ?? 0,
      map['sticker_code'] ?? '',
      map['sticker_number'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserStickerModel.fromJson(String source) =>
      UserStickerModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
