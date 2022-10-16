// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fwc_album_app/app/models/sticker_model.dart';
import 'package:fwc_album_app/app/repository/stickers/stickers_repository.dart';
import 'package:fwc_album_app/app/viewModels/register_sticker_view_model.dart';

import './find_sticker_service.dart';

class FindStickerServiceImpl implements FindStickerService {
  final StickersRepository stickersRepository;

  FindStickerServiceImpl({
    required this.stickersRepository,
  });

  @override
  Future<StickerModel> execute(String countryCode, String stickerNumber) async {
    var sticker =
        await stickersRepository.findStyckerByCode(countryCode, stickerNumber);

    if (sticker == null) {
      final registerSticker = RegisterStickerViewModel(
        name: '',
        stickerCode: countryCode,
        stickerNumber: stickerNumber,
      );

      sticker = await stickersRepository.create(registerSticker);
    }

    return sticker;
  }
}
