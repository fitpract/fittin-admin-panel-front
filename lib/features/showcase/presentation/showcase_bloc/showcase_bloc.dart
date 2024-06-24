
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:fittin_admin_panel/features/showcase/data/service/app_banner_client.dart';
import 'package:meta/meta.dart';

import '../../domain/app_banner.dart';

part 'showcase_event.dart';
part 'showcase_state.dart';

class ShowcaseBloc extends Bloc<ShowcaseEvent, ShowcaseState> {
  ShowcaseBloc() : super(ShowcaseState()) {
    on<GetBannersEvent>(_onGetBannerEvent);
  }

  _onGetBannerEvent(event, emit) async{
    emit(state.copyWith(isLoading: true));
    final List<AppBanner> banners = await AppBannerClient(Dio()).getBanners();

    emit(state.copyWith(banners: banners, isLoading: false));

  }

}
