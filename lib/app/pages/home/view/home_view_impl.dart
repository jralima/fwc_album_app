import 'package:flutter/widgets.dart';
import 'package:fwc_album_app/app/core/ui/helpers/loader.dart';
import 'package:fwc_album_app/app/core/ui/helpers/messages.dart';
import 'package:fwc_album_app/app/models/user_model.dart';
import 'package:fwc_album_app/app/pages/home/home_page.dart';

import './home_view.dart';

abstract class HomeViewImpl extends State<HomePage>
    with Messages<HomePage>, Loader<HomePage>
    implements HomeView {
  UserModel? user;

  @override
  void initState() {
    widget.presenter.view = this;
    // assim q concluir o build da página, faz um request
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      widget.presenter.getUserdata();
    });

    super.initState();
  }

  @override
  void error(String message) {
    hideLoader();

    showError(message);
  }

  @override
  void logoutSuccess() {
    hideLoader();
    Navigator.of(context)
        .pushNamedAndRemoveUntil('/auth/login', (route) => false);
  }

  @override
  void updateUser(UserModel user) {
    hideLoader();

    setState(() {
      this.user = user;
    });
  }
}
