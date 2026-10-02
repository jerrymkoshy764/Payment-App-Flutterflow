import '/components/headerwith_pay_early_button_widget.dart';
import '/components/payment_details_list_widget.dart';
import '/components/remaining_payment_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for HeaderwithPayEarlyButton component.
  late HeaderwithPayEarlyButtonModel headerwithPayEarlyButtonModel;
  // Model for RemainingPayment component.
  late RemainingPaymentModel remainingPaymentModel;
  // Model for PaymentDetailsList component.
  late PaymentDetailsListModel paymentDetailsListModel1;
  // Model for PaymentDetailsList component.
  late PaymentDetailsListModel paymentDetailsListModel2;
  // Model for PaymentDetailsList component.
  late PaymentDetailsListModel paymentDetailsListModel3;
  // Model for PaymentDetailsList component.
  late PaymentDetailsListModel paymentDetailsListModel4;

  @override
  void initState(BuildContext context) {
    headerwithPayEarlyButtonModel =
        createModel(context, () => HeaderwithPayEarlyButtonModel());
    remainingPaymentModel = createModel(context, () => RemainingPaymentModel());
    paymentDetailsListModel1 =
        createModel(context, () => PaymentDetailsListModel());
    paymentDetailsListModel2 =
        createModel(context, () => PaymentDetailsListModel());
    paymentDetailsListModel3 =
        createModel(context, () => PaymentDetailsListModel());
    paymentDetailsListModel4 =
        createModel(context, () => PaymentDetailsListModel());
  }

  @override
  void dispose() {
    headerwithPayEarlyButtonModel.dispose();
    remainingPaymentModel.dispose();
    paymentDetailsListModel1.dispose();
    paymentDetailsListModel2.dispose();
    paymentDetailsListModel3.dispose();
    paymentDetailsListModel4.dispose();
  }
}
