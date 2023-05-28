import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/service/order_service/order_service.dart';

class OrderController extends State<OrderView> implements MvcController {
  static late OrderController instance;
  late OrderView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  setStatusToPaid({
    required String docId,
    required String tableNumber,
  }) async {
    showLoading();
    await OrderService().setStatusToPaid(
      orderId: docId,
      tableNumber: tableNumber,
    );
    hideLoading();
  }

  String status = "Pending";
  updateStatus(newStatus) {
    status = newStatus;
    setState(() {});
  }
}
