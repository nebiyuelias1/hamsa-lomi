// Package imports:
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import '../../../domain/core/entities/hamsa_campaign.dart';
import '../../../domain/core/failure.dart';
import '../../../domain/donation_creation/donation_creation.dart';
import '../../../domain/donation_creation/entities/upload_attachment_param.dart';
import '../donation_creation.dart';

@LazySingleton(as: DonationCreationRepository)
class DonationCreationRepositoryImpl implements DonationCreationRepository {
  final DonationCreationDataSource _dataSource;

  DonationCreationRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, HamsaCampaign>> saveHamsaCampaign(
      CreateHamsaCampaign campaign) async {
    if (campaign.id != null) {
      final result = await _dataSource
          .updateHamsaCampaign(CreateHamsaCampaignModel.toModel(campaign));
      return right(result);
    }
    
    final result = await _dataSource
        .createHamsaCampaign(CreateHamsaCampaignModel.toModel(campaign));
    return right(result);
  }

  @override
  Future<UploadTask> uploadAttachment(UploadAttachmentParam uploadImageParam) {
    return _dataSource.uploadAttachment(uploadImageParam);
  }
}
