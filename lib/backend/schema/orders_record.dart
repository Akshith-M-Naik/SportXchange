import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdersRecord extends FirestoreRecord {
  OrdersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "order_id" field.
  String? _orderId;
  String get orderId => _orderId ?? '';
  bool hasOrderId() => _orderId != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "ordered_at" field.
  DateTime? _orderedAt;
  DateTime? get orderedAt => _orderedAt;
  bool hasOrderedAt() => _orderedAt != null;

  // "cart_ref" field.
  DocumentReference? _cartRef;
  DocumentReference? get cartRef => _cartRef;
  bool hasCartRef() => _cartRef != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "address" field.
  DocumentReference? _address;
  DocumentReference? get address => _address;
  bool hasAddress() => _address != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _orderId = snapshotData['order_id'] as String?;
    _status = snapshotData['status'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _orderedAt = snapshotData['ordered_at'] as DateTime?;
    _cartRef = snapshotData['cart_ref'] as DocumentReference?;
    _image = snapshotData['image'] as String?;
    _address = snapshotData['address'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orders');

  static Stream<OrdersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrdersRecord.fromSnapshot(s));

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrdersRecord.fromSnapshot(s));

  static OrdersRecord fromSnapshot(DocumentSnapshot snapshot) => OrdersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrdersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrdersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrdersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrdersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrdersRecordData({
  DocumentReference? user,
  String? orderId,
  String? status,
  double? price,
  DateTime? orderedAt,
  DocumentReference? cartRef,
  String? image,
  DocumentReference? address,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'order_id': orderId,
      'status': status,
      'price': price,
      'ordered_at': orderedAt,
      'cart_ref': cartRef,
      'image': image,
      'address': address,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrdersRecordDocumentEquality implements Equality<OrdersRecord> {
  const OrdersRecordDocumentEquality();

  @override
  bool equals(OrdersRecord? e1, OrdersRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.orderId == e2?.orderId &&
        e1?.status == e2?.status &&
        e1?.price == e2?.price &&
        e1?.orderedAt == e2?.orderedAt &&
        e1?.cartRef == e2?.cartRef &&
        e1?.image == e2?.image &&
        e1?.address == e2?.address;
  }

  @override
  int hash(OrdersRecord? e) => const ListEquality().hash([
        e?.user,
        e?.orderId,
        e?.status,
        e?.price,
        e?.orderedAt,
        e?.cartRef,
        e?.image,
        e?.address
      ]);

  @override
  bool isValidKey(Object? o) => o is OrdersRecord;
}
