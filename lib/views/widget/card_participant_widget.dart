part of 'widget.dart';

class CardParticipantWidget extends StatelessWidget {
  final String name;
  final String datetime;
  final String status;
  final Function onTap;
  const CardParticipantWidget({
    super.key,
    required this.name,
    required this.datetime,
    required this.status,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          right: defaultMargin,
          left: defaultMargin,
          top: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: blackTextStyleInter.copyWith(
                fontWeight: bold,
                fontSize: 16,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  datetime,
                  style: greyTextStyleInter.copyWith(
                    fontSize: 12,
                    fontWeight: light,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    onTap();
                  },
                  child: Text(
                    'Detail',
                    style: greyTextStyleInter.copyWith(
                      fontSize: 12,
                      fontWeight: light,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              status,
              style: blackTextStyleInter.copyWith(
                fontWeight: bold,
                fontSize: 14,
                color: status == "Present" ? Colors.green : Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
