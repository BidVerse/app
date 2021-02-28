import 'package:app/models/bid.dart';
import 'package:flutter/foundation.dart';

class Profile {
  final String contract, name, image, id, description, bio;
  final List<Bid> bids;

  Profile(
      {@required this.contract,
      @required this.name,
      @required this.image,
      @required this.id,
      @required this.description,
      @required this.bio,
      @required this.bids});
}
