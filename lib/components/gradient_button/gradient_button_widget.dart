import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'gradient_button_model.dart';
export 'gradient_button_model.dart';

class GradientButtonWidget extends StatefulWidget {
  const GradientButtonWidget({
    super.key,
    required this.action,
  });

  final Future Function()? action;

  @override
  State<GradientButtonWidget> createState() => _GradientButtonWidgetState();
}

class _GradientButtonWidgetState extends State<GradientButtonWidget>
    with TickerProviderStateMixin {
  late GradientButtonModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GradientButtonModel());

    animationsMap.addAll({
      'iconOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(1.2, 1.2),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      opaque: false,
      cursor: SystemMouseCursors.click ?? MouseCursor.defer,
      onEnter: ((event) async {
        setState(() => _model.mouseRegionHovered = true);
        if (animationsMap['iconOnActionTriggerAnimation'] != null) {
          animationsMap['iconOnActionTriggerAnimation']!
              .controller
              .forward(from: 0.0);
        }
      }),
      onExit: ((event) async {
        setState(() => _model.mouseRegionHovered = false);
        if (animationsMap['iconOnActionTriggerAnimation'] != null) {
          animationsMap['iconOnActionTriggerAnimation']!.controller.reverse();
        }
      }),
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          await widget.action?.call();
        },
        child: Stack(
          alignment: const AlignmentDirectional(0.0, 0.0),
          children: [
            Container(
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 3.0,
                    color: Color(0x33000000),
                    offset: Offset(
                      0.0,
                      1.0,
                    ),
                  )
                ],
                gradient: LinearGradient(
                  colors: [
                    FlutterFlowTheme.of(context).primary,
                    FlutterFlowTheme.of(context).tertiary
                  ],
                  stops: const [0.0, 1.0],
                  begin: const AlignmentDirectional(1.0, -1.0),
                  end: const AlignmentDirectional(-1.0, 1.0),
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 100),
                  curve: Curves.easeInOut,
                  width: 32.0,
                  height: 32.0,
                  decoration: BoxDecoration(
                    color: valueOrDefault<Color>(
                      _model.mouseRegionHovered
                          ? Colors.transparent
                          : const Color(0xFF25254F),
                      const Color(0xFF25254F),
                    ),
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                ),
              ),
            ),
            Icon(
              FFIcons.khome02,
              color: FlutterFlowTheme.of(context).info,
              size: 20.0,
            ).animateOnActionTrigger(
              animationsMap['iconOnActionTriggerAnimation']!,
            ),
          ],
        ),
      ),
    );
  }
}
