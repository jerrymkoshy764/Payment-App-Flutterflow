import '/components/headerwith_pay_early_button_widget.dart';
import '/components/payment_details_list_widget.dart';
import '/components/remaining_payment_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  static String routeName = 'HomePage';
  static String routePath = '/homePage';

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).alternate,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Builder(
                  builder: (context) => wrapWithModel(
                    model: _model.headerwithPayEarlyButtonModel,
                    updateCallback: () => safeSetState(() {}),
                    child: HeaderwithPayEarlyButtonWidget(
                      amount: '\$425.24',
                      dueDate: 'Due Sep 1, 2021',
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.90,
                  child: Divider(
                    thickness: 1.0,
                    color: FlutterFlowTheme.of(context).secondaryText,
                  ),
                ),
                wrapWithModel(
                  model: _model.remainingPaymentModel,
                  updateCallback: () => safeSetState(() {}),
                  child: RemainingPaymentWidget(
                    totalAmount: '\$24.999',
                    paidAmount: '\$14,502',
                  ),
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.90,
                  child: Divider(
                    thickness: 1.0,
                    color: FlutterFlowTheme.of(context).secondaryText,
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'Pending Payment',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                  ),
                ),
                wrapWithModel(
                  model: _model.paymentDetailsListModel1,
                  updateCallback: () => safeSetState(() {}),
                  child: PaymentDetailsListWidget(
                    date: 'Dec 28, 1996',
                    method: 'Payment Pending ',
                    amount: '\$425.24',
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'Past Payment',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                  ),
                ),
                wrapWithModel(
                  model: _model.paymentDetailsListModel2,
                  updateCallback: () => safeSetState(() {}),
                  child: PaymentDetailsListWidget(
                    date: 'Oct 14, 1995',
                    method: 'Past Complete',
                    amount: '\$399.12',
                  ),
                ),
                wrapWithModel(
                  model: _model.paymentDetailsListModel3,
                  updateCallback: () => safeSetState(() {}),
                  child: PaymentDetailsListWidget(
                    date: 'Nov 25, 1998',
                    method: 'Past Complete',
                    amount: '\$301.22',
                  ),
                ),
                wrapWithModel(
                  model: _model.paymentDetailsListModel4,
                  updateCallback: () => safeSetState(() {}),
                  child: PaymentDetailsListWidget(
                    date: 'Mar 30, 1977',
                    method: 'Past Complete',
                    amount: '\$299.87',
                  ),
                ),
              ]
                  .divide(SizedBox(height: 10.0))
                  .addToStart(SizedBox(height: 25.0))
                  .addToEnd(SizedBox(height: 10.0)),
            ),
          ),
        ),
      ),
    );
  }
}
