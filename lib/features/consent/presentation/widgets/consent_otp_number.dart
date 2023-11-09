import 'package:kib_design_system/kib_design_system.dart';



class ConsentOtpNumber extends StatelessWidget {
  final String otp;
  const ConsentOtpNumber({
    super.key,
    required this.otp,
  });


  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Expanded(
      child: AppContainer(
        child: Row(
          children: [
            AppText.bodyRegular(
              "OTP",
              color: theme.colors.textBodySecondary,
            ),
            const AppGap.xs(),
            AppText.bodyBold(
              otp,
              color: theme.colors.textBodySecondary,
            ),
          ],
        ),
      ),
    );
  }
}