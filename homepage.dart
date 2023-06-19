import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
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
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).error,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0, -1),
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Container(
                    width: 511,
                    height: 920,
                    decoration: BoxDecoration(
                      color: Color(0xFF8F1919),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0, 0.64),
                          child: Text(
                            '*Atención: su número de teléfono quedará registrado. Las llamadas falsas son punibles por el articulo 197 bis del Código Penal.',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context).alternate,
                                  fontSize: 13,
                                ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Stack(
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0, -1),
                                child: Container(
                                  width: double.infinity,
                                  height: 293,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: Image.asset(
                                        'assets/images/272209671_472329144237960_842650616169985148_n.jpg',
                                      ).image,
                                    ),
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0xFF1E2429),
                                        Color(0x001E2429)
                                      ],
                                      stops: [0, 1],
                                      begin: AlignmentDirectional(0, 1),
                                      end: AlignmentDirectional(0, -1),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0.5),
                  child: FFButtonWidget(
                    onPressed: () async {
                      // llamada
                      await launchUrl(Uri(
                        scheme: 'tel',
                        path: '113',
                      ));
                    },
                    text: 'Llamar',
                    icon: Icon(
                      Icons.local_fire_department_sharp,
                      size: 15,
                    ),
                    options: FFButtonOptions(
                      height: 50,
                      padding: EdgeInsetsDirectional.fromSTEB(100, 0, 100, 0),
                      iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      color: Color(0xFFEF3940),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: Colors.white,
                                fontSize: 19,
                              ),
                      elevation: 3,
                      borderSide: BorderSide(
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(70),
                      hoverColor: FlutterFlowTheme.of(context).error,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, -0.2),
                  child: Text(
                    'Bomberos voluntarios de YYY',
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Outfit',
                          color: FlutterFlowTheme.of(context).primaryBackground,
                        ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0.09),
                  child: Text(
                    'Por favor, ante una emergéncia, mantenga la calma y recuerde informar al operador:\n\n- ¿Que ve?.\n- Ubicación del siniestro.\n- Puntos de referéncia para llegar al siniestro.\n- Posibles victimas y heridos.',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                          fontFamily: 'Readex Pro',
                          color: FlutterFlowTheme.of(context).primaryBackground,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
