import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ShopListRecord extends FirestoreRecord {
  ShopListRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "create_date" field.
  DateTime? _createDate;
  DateTime? get createDate => _createDate;
  bool hasCreateDate() => _createDate != null;

  // "create_by" field.
  DocumentReference? _createBy;
  DocumentReference? get createBy => _createBy;
  bool hasCreateBy() => _createBy != null;

  // "update_date" field.
  DateTime? _updateDate;
  DateTime? get updateDate => _updateDate;
  bool hasUpdateDate() => _updateDate != null;

  // "update_by" field.
  DocumentReference? _updateBy;
  DocumentReference? get updateBy => _updateBy;
  bool hasUpdateBy() => _updateBy != null;

  // "delete_date" field.
  DateTime? _deleteDate;
  DateTime? get deleteDate => _deleteDate;
  bool hasDeleteDate() => _deleteDate != null;

  // "delete_by" field.
  DocumentReference? _deleteBy;
  DocumentReference? get deleteBy => _deleteBy;
  bool hasDeleteBy() => _deleteBy != null;

  // "status" field.
  int? _status;
  int get status => _status ?? 0;
  bool hasStatus() => _status != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "detail" field.
  String? _detail;
  String get detail => _detail ?? '';
  bool hasDetail() => _detail != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "location_text" field.
  String? _locationText;
  String get locationText => _locationText ?? '';
  bool hasLocationText() => _locationText != null;

  // "images" field.
  List<String>? _images;
  List<String> get images => _images ?? const [];
  bool hasImages() => _images != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  void _initializeFields() {
    _createDate = snapshotData['create_date'] as DateTime?;
    _createBy = snapshotData['create_by'] as DocumentReference?;
    _updateDate = snapshotData['update_date'] as DateTime?;
    _updateBy = snapshotData['update_by'] as DocumentReference?;
    _deleteDate = snapshotData['delete_date'] as DateTime?;
    _deleteBy = snapshotData['delete_by'] as DocumentReference?;
    _status = castToType<int>(snapshotData['status']);
    _title = snapshotData['title'] as String?;
    _detail = snapshotData['detail'] as String?;
    _location = snapshotData['location'] as LatLng?;
    _locationText = snapshotData['location_text'] as String?;
    _images = getDataList(snapshotData['images']);
    _rating = castToType<double>(snapshotData['rating']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('shop_list');

  static Stream<ShopListRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ShopListRecord.fromSnapshot(s));

  static Future<ShopListRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ShopListRecord.fromSnapshot(s));

  static ShopListRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ShopListRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ShopListRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ShopListRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ShopListRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ShopListRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createShopListRecordData({
  DateTime? createDate,
  DocumentReference? createBy,
  DateTime? updateDate,
  DocumentReference? updateBy,
  DateTime? deleteDate,
  DocumentReference? deleteBy,
  int? status,
  String? title,
  String? detail,
  LatLng? location,
  String? locationText,
  double? rating,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'create_date': createDate,
      'create_by': createBy,
      'update_date': updateDate,
      'update_by': updateBy,
      'delete_date': deleteDate,
      'delete_by': deleteBy,
      'status': status,
      'title': title,
      'detail': detail,
      'location': location,
      'location_text': locationText,
      'rating': rating,
    }.withoutNulls,
  );

  return firestoreData;
}

class ShopListRecordDocumentEquality implements Equality<ShopListRecord> {
  const ShopListRecordDocumentEquality();

  @override
  bool equals(ShopListRecord? e1, ShopListRecord? e2) {
    const listEquality = ListEquality();
    return e1?.createDate == e2?.createDate &&
        e1?.createBy == e2?.createBy &&
        e1?.updateDate == e2?.updateDate &&
        e1?.updateBy == e2?.updateBy &&
        e1?.deleteDate == e2?.deleteDate &&
        e1?.deleteBy == e2?.deleteBy &&
        e1?.status == e2?.status &&
        e1?.title == e2?.title &&
        e1?.detail == e2?.detail &&
        e1?.location == e2?.location &&
        e1?.locationText == e2?.locationText &&
        listEquality.equals(e1?.images, e2?.images) &&
        e1?.rating == e2?.rating;
  }

  @override
  int hash(ShopListRecord? e) => const ListEquality().hash([
        e?.createDate,
        e?.createBy,
        e?.updateDate,
        e?.updateBy,
        e?.deleteDate,
        e?.deleteBy,
        e?.status,
        e?.title,
        e?.detail,
        e?.location,
        e?.locationText,
        e?.images,
        e?.rating
      ]);

  @override
  bool isValidKey(Object? o) => o is ShopListRecord;
}
