import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartRecord extends FirestoreRecord {
  CartRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "product_id" field.
  String? _productId;
  String get productId => _productId ?? '';
  bool hasProductId() => _productId != null;

  // "product_ref" field.
  DocumentReference? _productRef;
  DocumentReference? get productRef => _productRef;
  bool hasProductRef() => _productRef != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "final_price" field.
  double? _finalPrice;
  double get finalPrice => _finalPrice ?? 0.0;
  bool hasFinalPrice() => _finalPrice != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "final_mrp" field.
  double? _finalMrp;
  double get finalMrp => _finalMrp ?? 0.0;
  bool hasFinalMrp() => _finalMrp != null;

  // "mrp" field.
  double? _mrp;
  double get mrp => _mrp ?? 0.0;
  bool hasMrp() => _mrp != null;

  // "is_ordered" field.
  bool? _isOrdered;
  bool get isOrdered => _isOrdered ?? false;
  bool hasIsOrdered() => _isOrdered != null;

  void _initializeFields() {
    _productId = snapshotData['product_id'] as String?;
    _productRef = snapshotData['product_ref'] as DocumentReference?;
    _price = castToType<double>(snapshotData['price']);
    _finalPrice = castToType<double>(snapshotData['final_price']);
    _quantity = castToType<int>(snapshotData['quantity']);
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _finalMrp = castToType<double>(snapshotData['final_mrp']);
    _mrp = castToType<double>(snapshotData['mrp']);
    _isOrdered = snapshotData['is_ordered'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cart');

  static Stream<CartRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CartRecord.fromSnapshot(s));

  static Future<CartRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CartRecord.fromSnapshot(s));

  static CartRecord fromSnapshot(DocumentSnapshot snapshot) => CartRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CartRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CartRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CartRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CartRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCartRecordData({
  String? productId,
  DocumentReference? productRef,
  double? price,
  double? finalPrice,
  int? quantity,
  DocumentReference? userRef,
  double? finalMrp,
  double? mrp,
  bool? isOrdered,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'product_id': productId,
      'product_ref': productRef,
      'price': price,
      'final_price': finalPrice,
      'quantity': quantity,
      'user_ref': userRef,
      'final_mrp': finalMrp,
      'mrp': mrp,
      'is_ordered': isOrdered,
    }.withoutNulls,
  );

  return firestoreData;
}

class CartRecordDocumentEquality implements Equality<CartRecord> {
  const CartRecordDocumentEquality();

  @override
  bool equals(CartRecord? e1, CartRecord? e2) {
    return e1?.productId == e2?.productId &&
        e1?.productRef == e2?.productRef &&
        e1?.price == e2?.price &&
        e1?.finalPrice == e2?.finalPrice &&
        e1?.quantity == e2?.quantity &&
        e1?.userRef == e2?.userRef &&
        e1?.finalMrp == e2?.finalMrp &&
        e1?.mrp == e2?.mrp &&
        e1?.isOrdered == e2?.isOrdered;
  }

  @override
  int hash(CartRecord? e) => const ListEquality().hash([
        e?.productId,
        e?.productRef,
        e?.price,
        e?.finalPrice,
        e?.quantity,
        e?.userRef,
        e?.finalMrp,
        e?.mrp,
        e?.isOrdered
      ]);

  @override
  bool isValidKey(Object? o) => o is CartRecord;
}
