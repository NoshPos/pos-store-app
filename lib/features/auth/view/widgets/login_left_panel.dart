import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/common/widgets/decor_circle.dart';

class LoginLeftPanel extends StatelessWidget {
  const LoginLeftPanel({super.key, required this.colorScheme});

  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [colorScheme.primary, colorScheme.primaryContainer],
        ),
      ),
      child: Stack(
        children: [
          // Decorative circles
          Positioned(
            top: -80,
            left: -80,
            child: DecorCircle(
              size: 360,
              color: Colors.white.withValues(alpha: 0.06),
            ),
          ),
          Positioned(
            bottom: -60,
            right: -60,
            child: DecorCircle(
              size: 300,
              color: Colors.white.withValues(alpha: 0.06),
            ),
          ),
          Positioned(
            top: 180,
            right: -40,
            child: DecorCircle(
              size: 200,
              color: Colors.white.withValues(alpha: 0.04),
            ),
          ),

          // Content
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 52, vertical: 56),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Logo / brand
                Row(
                  children: [
                    Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(
                        Icons.storefront_rounded,
                        color: Colors.white,
                        size: 26,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Text(
                      'Nosh POS',
                      style: Theme.of(context).textTheme.headlineSmall
                          ?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.5,
                          ),
                    ),
                  ],
                ),

                const Spacer(),
                SvgPicture.asset("assets/images/street-food.svg"),
                const Spacer(),

                // Tagline
                Text(
                  'Everything your restaurant\nneeds, in one place.',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    height: 1.25,
                    letterSpacing: -0.5,
                  ),
                ),
                const SizedBox(height: 14),
                Text(
                  'Manage orders, tables, and payments with a\nsingle, fast point-of-sale solution.',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.white.withValues(alpha: 0.75),
                    height: 1.6,
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
