import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruit_shop_app/core/model/order/order.dart';
import 'package:fruit_shop_app/core/service/order/order_service.dart';

part 'view_orders_event.dart';
part 'view_orders_state.dart';
part 'view_orders_bloc.freezed.dart';



class ViewOrdersBloc extends Bloc<ViewOrdersEvent, ViewOrdersState> {
  final OrderService orderService;
  ViewOrdersBloc(this.orderService) : super(_Initial()) {
    on<_Vieworder>((event, emit) async {
      emit(const ViewOrdersState.loading());

      try {
        final result = await orderService.fetchOrders();

        await result.fold((failure) async {
          emit(const ViewOrdersState.error(error: false));
        }, (success) async {
          emit(ViewOrdersState.dataLoaded(orderList: success));
        });
      } catch (e) {
        emit(const ViewOrdersState.error(error: false));
      }
    });
  }
}
