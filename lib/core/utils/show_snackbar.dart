import 'dart:async';

import 'package:flutter/material.dart';

enum SnackBarType { success, warning, error }

/// Shows a desktop-style toast notification anchored to the top-right corner.
/// Auto-dismisses after [duration]. Tapping the X closes it immediately.
void showSnackBar(
  BuildContext context,
  String content,
  SnackBarType type, {
  Duration duration = const Duration(seconds: 4),
}) {
  final overlay = Overlay.of(context);
  late OverlayEntry entry;

  entry = OverlayEntry(
    builder: (_) => _DesktopToast(
      message: content,
      type: type,
      duration: duration,
      onDismiss: () => entry.remove(),
    ),
  );

  overlay.insert(entry);
}

class _DesktopToast extends StatefulWidget {
  const _DesktopToast({
    required this.message,
    required this.type,
    required this.duration,
    required this.onDismiss,
  });

  final String message;
  final SnackBarType type;
  final Duration duration;
  final VoidCallback onDismiss;

  @override
  State<_DesktopToast> createState() => _DesktopToastState();
}

class _DesktopToastState extends State<_DesktopToast>
    with SingleTickerProviderStateMixin {
  late final AnimationController _ctrl;
  late final Animation<double> _opacity;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 220),
    );
    _opacity = CurvedAnimation(parent: _ctrl, curve: Curves.easeOut);
    _ctrl.forward();

    _timer = Timer(widget.duration, _dismiss);
  }

  void _dismiss() {
    _timer?.cancel();
    _ctrl.reverse().then((_) => widget.onDismiss());
  }

  @override
  void dispose() {
    _timer?.cancel();
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final (color, icon) = switch (widget.type) {
      SnackBarType.success => (
        const Color(0xFF22C55E),
        Icons.check_circle_rounded,
      ),
      SnackBarType.warning => (const Color(0xFFF59E0B), Icons.warning_rounded),
      SnackBarType.error => (const Color(0xFFEF4444), Icons.error_rounded),
    };

    return Positioned(
      top: 24,
      right: 24,
      child: FadeTransition(
        opacity: _opacity,
        child: Material(
          elevation: 8,
          borderRadius: BorderRadius.circular(10),
          color: Colors.transparent,
          child: Container(
            constraints: const BoxConstraints(minWidth: 280, maxWidth: 400),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: color.withValues(alpha: 0.4),
                width: 1.2,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.12),
                  blurRadius: 16,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(icon, color: color, size: 20),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    widget.message,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                      height: 1.4,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                GestureDetector(
                  onTap: _dismiss,
                  child: Icon(
                    Icons.close,
                    size: 16,
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
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
