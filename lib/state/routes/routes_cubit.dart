import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'routes_state.dart';

class RoutesCubit extends Cubit<RoutesState> {
  RoutesCubit() : super(RoutesSplashPage());
  Stream<RoutesState> mapEventToState(RoutesState state) async* {
    if (state is RoutesSplashPage) {
      emit(RoutesSplashPage());
    } else if (state is RoutesOnboardingPage) {
      emit(RoutesOnboardingPage());
    } else if (state is RoutesLoginPage) {
      emit(RoutesLoginPage());
    } else if (state is RoutesParticipantPage) {
      emit(RoutesParticipantPage());
    } else if (state is RoutesDashboardPage) {
      emit(RoutesDashboardPage());
    } else if (state is RoutesScanPage) {
      emit(RoutesScanPage());
    } else {
      emit(RoutesSplashPage());
    }
  }
}
