

class IdData{
  final String? kind;
  final String? channelId;

  IdData({this.kind, this.channelId});

  factory IdData.fromJson(Map<String, dynamic> json){
    return IdData(
      kind: json["kind"],
      channelId: json["channelId"],
    );
  }
}