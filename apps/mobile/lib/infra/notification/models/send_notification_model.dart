class SendNotificationModel {
  final int? id;
  final String title;
  final String body;
  final String? imageUrl;
  final String? deepLink;
  final String topic;
  final String? token;

  SendNotificationModel({
    this.id = 0,
    required this.title,
    required this.body,
    this.imageUrl,
    this.deepLink,
    required this.topic,
    this.token,
  });
}
