import 'package:fwc_album_app/app/core/mvp/fwc_presenter.dart';
import 'package:fwc_album_app/app/pages/home/view/home_view.dart';

abstract class HomePresenter extends FwcPresenter<HomeView> {
  Future<void> getUserdata();
  Future<void> logout();
}
