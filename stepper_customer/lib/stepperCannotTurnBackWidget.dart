import 'package:flutter/material.dart';

class IfCannotTurnBackWidget extends StatelessWidget {
  final Widget? bottomWidget;
  const IfCannotTurnBackWidget({
    super.key,
    this.bottomWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            Container(
              width: 60,
              height: 80,
              color: Colors.red,
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Bu adımı güncelleyemezsiniz',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Color(0xFF6A6A6A)),
            ),
            bottomWidget ?? const SizedBox()
          ],
        ),
      ),
    );
  }
}

class Page3CannotTurnBackWidget extends StatelessWidget {
  const Page3CannotTurnBackWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: RichText(
        text: const TextSpan(
          children: [
            TextSpan(
                text: 'Dilerseniz adres teyidinizi buradan ',
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 16)),
            TextSpan(
                text: 'güncelleyebilirsiniz',
                style: TextStyle(color: Colors.red, fontWeight: FontWeight.w600, fontSize: 16)),
          ],
        ),
      ),
    );
  }
}

class Page5CannotTurnBackWidget extends StatelessWidget {
  const Page5CannotTurnBackWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {},
          child: RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                    text: 'Dilerseniz adres teyidinizi buradan ',
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 16)),
                TextSpan(
                    text: 'güncelleyebilirsiniz',
                    style: TextStyle(color: Colors.red, fontWeight: FontWeight.w600, fontSize: 16)),
              ],
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                    text: 'Uygunluk testinizi buradan ',
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 16)),
                TextSpan(
                    text: 'güncelleyebilirsiniz',
                    style: TextStyle(color: Colors.red, fontWeight: FontWeight.w600, fontSize: 16)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
