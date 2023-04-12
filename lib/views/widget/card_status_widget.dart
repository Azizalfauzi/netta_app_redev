part of 'widget.dart';

class CardStatus extends StatelessWidget {
  final Icon ic;
  final String title;
  final String count;
  const CardStatus({
    super.key,
    required this.ic,
    required this.title,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 3,
      height: MediaQuery.of(context).size.height / 6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: const DecorationImage(
          image: AssetImage(
            'assets/images/ic_box_status.png',
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: defaultMargin,
          top: defaultMargin,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ic),
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: blackTextStyleInter.copyWith(
                fontWeight: light,
                fontSize: 12,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              count,
              style: blackTextStyleInter.copyWith(
                fontWeight: bold,
                fontSize: 28,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
