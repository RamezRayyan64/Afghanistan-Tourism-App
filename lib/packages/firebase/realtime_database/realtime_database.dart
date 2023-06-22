import 'package:afghanistan_tourism_app/constants/lists.dart';
import 'package:firebase_database/firebase_database.dart';

final DatabaseReference databaseReference = FirebaseDatabase.instance.ref();

Map touristicCitiesMap = {};

Future<void> getTouristicCities() async {
  var touristicCities =
      await databaseReference.child('touristic_cities/english').get();
  if (touristicCities.exists) {
    touristicCitiesMap = touristicCities.value as Map;
    for (var element in touristicCitiesMap.keys) {
      touristicCitiesList.add(element);
    }
  }
}

Future<void> getTouristicCityAbout(String cityName) async {
  for (Map element in touristicCitiesMap.values) {
    if (element['touristicCityName'] == cityName) {
      for (var i = 0;
          i < element['touristicCityAboutModelArrayList'].length;
          i++) {
        if (i == 0) {
          touristicCityAboutTextItemsList
              .add((element['touristicCityAboutModelArrayList'] as List)[i]);
        } else if (i == 1) {
          touristicCityAboutGallaryItemsList =
              (element['touristicCityAboutModelArrayList'] as List)[i]
                  ['touristicCityHomeGalleryModelArrayList'];
        } else if (i == 2) {
          touristicCityAboutTextItemsList
              .add((element['touristicCityAboutModelArrayList'] as List)[i]);
        } else if (i == 3) {
          touristicCityAboutNotablePeopleItemsList =
              (element['touristicCityAboutModelArrayList'] as List)[i]
                  ['touristicCityHomeNotablePeopleModelArrayList'];
        } else if (i <= 5) {
          touristicCityAboutTextItemsList
              .add((element['touristicCityAboutModelArrayList'] as List)[i]);
        } else if (i == 6) {
          touristicCityAboutDistrictItemsList =
              (element['touristicCityAboutModelArrayList'] as List)[i]
                  ['touristicCityHomeDistrictModelArrayList'];
        } else {
          touristicCityAboutTextItemsList
              .add((element['touristicCityAboutModelArrayList'] as List)[i]);
        }
      }
    }
  }
  getTouristicCityPlaces(cityName);
  getTouristicCityIndustries(cityName);
  getTouristicCityFestivals(cityName);
  getTouristicCityLocalFoods(cityName);
}

Future<void> getTouristicCityPlaces(String cityName) async {
  for (Map element in touristicCitiesMap.values) {
    if (element['touristicCityName'] == cityName) {
      touristicCityPlaceItemsList = element['placeModelArrayList'] as List;
    }
  }
}

Future<void> getTouristicCityIndustries(String cityName) async {
  for (Map element in touristicCitiesMap.values) {
    if (element['touristicCityName'] == cityName) {
      touristicCityIndustryItemsList =
          element['industryModelArrayList'] as List;
    }
  }
}

Future<void> getTouristicCityFestivals(String cityName) async {
  for (Map element in touristicCitiesMap.values) {
    if (element['touristicCityName'] == cityName) {
      touristicCityFestivalsItemsList =
          element['festivalModelArrayList'] as List;
    }
  }
}

Future<void> getTouristicCityLocalFoods(String cityName) async {
  for (Map element in touristicCitiesMap.values) {
    if (element['touristicCityName'] == cityName) {
      touristicCityLocalFoodsItemsList =
          element['localFoodModelArrayList'] as List;
    }
  }
}

// Future<bool> getTouristicCities(String language, String cityName) async {
//   var touristicCities =
//       await databaseReference.child('touristic_cities/$language/$cityName/touristicCityAboutModelArrayList').get();
//   if (touristicCities.exists) {
//     // var touristicCitiesMap = touristicCities.value as Map;
//     print(touristicCities.value);
//   }
//   return false;
// }

// Future<bool> isUserExistsOnFirebases(String phoneNumber) async {
//   var authentication = await databaseReference.child('customers').get();
//   if (authentication.exists) {
//     print('object');
//     var authenticationMap = authentication.value as Map;
//     for (var map in authenticationMap.values) {
//       if (map['customer_phone_number'] == phoneNumber) {
//         print(true);
//         return true;
//       }
//     }
//   }
//   print(false);
//   return false;
// }

// Future<void> addCustomerToFirebaseDatabase(CustomerModel customerModel,
//     Function() whenComplete, Function(String) onError) async {
//   try {
//     await databaseReference
//         .child('authentication/${customerModel.getCustomerId()}')
//         .set({
//       'customer_id': customerModel.getCustomerId(),
//       'customer_phone_number': customerModel.getCustomerPhoneNumber()
//     });
//     await databaseReference
//         .child('customers/${customerModel.getCustomerId()}')
//         .set(customerModel.toMap());
//     whenComplete();
//   } catch (error) {
//     onError(error.toString());
//   }
// }

// Future<void> addChatMessageToFirebase(
//     String? chatSenderId,
//     String? chatReciverId,
//     String chatReciverFullname,
//     String? chatReciverDeviceToken,
//     ChatModel chatModel,
//     Function() whenComplete,
//     Function(String) onError) async {
//   bool isUserFound = false;
//   try {
//     String? chatId = '';
//     num chatNotSeenMessagesCountByReciver = 0;
//     num chatNotSeenMessagesCountBySender = 0;
//     bool isMessageSendBySender = false;
//     var authentication = await databaseReference.child('chats').get();
//     if (authentication.exists) {
//       var authenticationData = authentication.value as Map;
//       for (var element in authenticationData.values) {
//         if ((element['chat_sender_id'] == chatSenderId ||
//                 element['chat_reciver_id'] == chatSenderId) &&
//             (element['chat_sender_id'] == chatReciverId ||
//                 element['chat_reciver_id'] == chatReciverId)) {
//           chatId = element['chat_id'];
//           element['chat_sender_id'] == chatSenderId
//               ? chatNotSeenMessagesCountByReciver =
//                   element['chat_not_seen_message_count_by_reciver']
//               : chatNotSeenMessagesCountBySender =
//                   element['chat_not_seen_message_count_by_sender'];
//           if (element['chat_sender_id'] == chatSenderId) {
//             isMessageSendBySender = true;
//           }
//           chatModel.setChatId(chatId);
//           isUserFound = true;
//           break;
//         }
//       }
//       if (!isUserFound) {
//         ChatItemModel chatItemModel = ChatItemModel.init(
//             chatId: databaseReference.push().key,
//             chatSenderId: customerId,
//             chatReciverId: chatReciverId,
//             chatNotSeenMessagesCountBySender: 0,
//             chatNotSeenMessagesCountByReciver: 1,
//             chatLastMessageTime: chatModel.getChatMessageSendTime(),
//             chatLastMessageType: chatModel.getChatMessageType(),
//             chatLastMessage: chatModel.getChatMessage());
//         chatId = chatItemModel.getChatId();
//         chatModel.setChatId(chatId);
//         await databaseReference
//             .child('chats/$chatId')
//             .set(chatItemModel.toMap());
//         await databaseReference
//             .child('chat_messages/$chatId/${chatModel.getChatMessageId()}')
//             .set(chatModel.toMap());
//         sendPushMessage(
//             chatReciverFullname,
//             chatModel.getChatMessage(),
//             chatModel.getChatMessageType(),
//             chatReciverDeviceToken,
//             chatSenderId,
//             ChatScreen.id);
//         return;
//       }
//     } else {
//       ChatItemModel chatItemModel = ChatItemModel.init(
//           chatId: databaseReference.push().key,
//           chatSenderId: chatSenderId,
//           chatReciverId: chatReciverId,
//           chatNotSeenMessagesCountBySender: 0,
//           chatNotSeenMessagesCountByReciver: 1,
//           chatLastMessageTime: chatModel.getChatMessageSendTime(),
//           chatLastMessageType: chatModel.getChatMessageType(),
//           chatLastMessage: chatModel.getChatMessage());
//       chatId = chatItemModel.getChatId();
//       chatModel.setChatId(chatId);
//       await databaseReference.child('chats/$chatId').set(chatItemModel.toMap());
//       await databaseReference
//           .child('chat_messages/$chatId/${chatModel.getChatMessageId()}')
//           .set(chatModel.toMap());
//       sendPushMessage(
//           chatReciverFullname,
//           chatModel.getChatMessage(),
//           chatModel.getChatMessageType(),
//           chatReciverDeviceToken,
//           chatSenderId,
//           ChatScreen.id);
//       return;
//     }
//     if (isMessageSendBySender) {
//       await databaseReference.child('chats/$chatId').update({
//         'chat_last_message': chatModel.getChatMessage(),
//         'chat_last_message_time': chatModel.getChatMessageSendTime(),
//         'chat_not_seen_message_count_by_reciver':
//             chatNotSeenMessagesCountByReciver + 1,
//         'chat_last_message_type': chatModel.getChatMessageType()
//       });
//     } else {
//       await databaseReference.child('chats/$chatId').update({
//         'chat_last_message': chatModel.getChatMessage(),
//         'chat_last_message_time': chatModel.getChatMessageSendTime(),
//         'chat_not_seen_message_count_by_sender':
//             chatNotSeenMessagesCountBySender + 1,
//         'chat_last_message_type': chatModel.getChatMessageType()
//       });
//     }
//     await databaseReference
//         .child('chat_messages/$chatId/${chatModel.getChatMessageId()}')
//         .set(chatModel.toMap());
//     sendPushMessage(
//         chatReciverFullname,
//         chatModel.getChatMessage(),
//         chatModel.getChatMessageType(),
//         chatReciverDeviceToken,
//         chatSenderId,
//         ChatScreen.id);
//   } catch (e) {
//     onError(e.toString());
//   }
// }

// void updateCustomerOnlineStatus(String? customerId, bool onlineStatus) async {
//   await databaseReference
//       .child('customers/$customerId/')
//       .update({'customer_online_status': onlineStatus});
// }

// void deleteOnlineStatus() async {
//   await databaseReference
//       .child('customers/')
//       .child('customer_online_status')
//       .remove();
// }

// void updateCustomerDeviceToken(String? customerId, String? token) async {
//   await databaseReference
//       .child('customers/$customerId/')
//       .update({'customer_device_token': token});
// }

// Future<DataSnapshot> getAppVersion() async {
//   return databaseReference.child('app_version').get();
// }

// Future<DataSnapshot> getAppForceUpdate() async {
//   return databaseReference.child('force_update').get();
// }

// void getUsersOpenedAppCounter() async {
//   DataSnapshot dataSnapshot =
//       await databaseReference.child('users_opened_app_counter').get();
//   int counter = int.parse(dataSnapshot.value.toString()) + 1;
//   databaseReference.update({'users_opened_app_counter': counter});
// }

// void getUsersCount() async {
//   DataSnapshot dataSnapshot =
//       await databaseReference.child('users_count').get();
//   int counter = int.parse(dataSnapshot.value.toString()) + 1;
//   databaseReference.update({'users_count': counter});
// }

// Future<String?> getCustomerDeviceToken(String? customerId) async {
//   var deviceToken =
//       await databaseReference.child('customers/$customerId').get();
//   if (deviceToken.exists) {
//     var deviceTokenMap = deviceToken.value as Map;
//     return deviceTokenMap['customer_device_token'];
//   }
//   return '-NUYakSiJAtqZOTugjAN';
// }

// void updateChatIsMessageSeenStatus(
//     String? chatId,
//     String? chatMessageId,
//     bool isMessageSeen,
//     num chatMessageNotSeenCount,
//     bool isUpdateReciver) async {
//   if (isUpdateReciver) {
//     await databaseReference
//         .child('chat_messages/$chatId/$chatMessageId/')
//         .update({'chat_is_message_seen': isMessageSeen});
//     await databaseReference.child('chats/$chatId/').update(
//         {'chat_not_seen_message_count_by_reciver': chatMessageNotSeenCount});
//   } else {
//     await databaseReference
//         .child('chat_messages/$chatId/$chatMessageId/')
//         .update({'chat_is_message_seen': isMessageSeen});
//     await databaseReference.child('chats/$chatId/').update(
//         {'chat_not_seen_message_count_by_sender': chatMessageNotSeenCount});
//   }
// }

// void deleteCustomerChat(String? chatId) async {
//   await databaseReference.child('chat_messages/$chatId/').remove();
//   await databaseReference.child('chats/$chatId/').remove();
// }

// void deleteCustomerChatMessage(
//     String? chatId, String? chatMessageId, int chatMessagesLength) async {
//   if (chatMessagesLength == 1) {
//     await databaseReference.child('chat_messages/$chatId').remove();
//     await databaseReference.child('chats/$chatId').remove();
//     return;
//   }
//   await databaseReference
//       .child('chat_messages/$chatId/$chatMessageId')
//       .remove();
// }

// void deleteCustomerChatImageMessage(
//     String? chatId, String? chatMessageId, String imageUrl) async {
//   await databaseReference
//       .child('chat_messages/$chatId/$chatMessageId')
//       .remove();
//   FirebaseStorage.instance.ref().child(imageUrl).delete();
// }

// void updateCustomerProfileImage(
//     String? customerId, String? profileImageUrl, int profileImageId) async {
//   await databaseReference.child('customers/$customerId/').update({
//     'customer_profile_image_url': profileImageUrl,
//     'customer_profile_image_id': profileImageId
//   });
// }

// Future<void> addOTPToFirebase(String phoneNumber, Function() onSuccessCallback,
//     Function(String) onErrorCallback) async {
//   int randomOTPCode = generateRandomOTPCode();
//   var customers = await databaseReference.child('otp_codes').get();
//   if (customers.exists) {
//     var customersMap = customers.value as Map;
//     for (var map in customersMap.values) {
//       if (map['customer_phone_number'] ==
//           convertPhoneNumberToStandardFormat(phoneNumber)) {
//         int randomOTPCode = generateRandomOTPCode();
//         int timestamp = DateTime.now().microsecondsSinceEpoch;
//         await databaseReference.child('otp_codes/${map['key']}').update({
//           'otp_code': randomOTPCode,
//           'timestamp': timestamp,
//           'status': false
//         }).whenComplete(() async {
//           sendPushMessage(
//               LocaleKeys.otp_code_verification.tr(),
//               'شماره تماس: $phoneNumber - کد: $randomOTPCode',
//               'text',
//               await getCustomerDeviceToken('-NUYakSiJAtqZOTugjAN'),
//               '0',
//               '');
//           sendPushMessage(
//               LocaleKeys.otp_code_verification.tr(),
//               'شماره تماس: $phoneNumber - کد: $randomOTPCode',
//               'text',
//               await getCustomerDeviceToken('-NUYi8as87O1Xwk_8NhN'),
//               '0',
//               '');
//           sendPushMessage(
//               LocaleKeys.otp_code_verification.tr(),
//               'شماره تماس: $phoneNumber - کد: $randomOTPCode',
//               'text',
//               await getCustomerDeviceToken('-NUfPw3IKRLyV6o_r-tI'),
//               '0',
//               '');
//           sendPushMessage(
//               LocaleKeys.otp_code_verification.tr(),
//               'شماره تماس: $phoneNumber - کد: $randomOTPCode',
//               'text',
//               await getCustomerDeviceToken('-NUkXx18IipbigsGVB93'),
//               '0',
//               '');
//           onSuccessCallback();
//         }).onError((error, stackTrace) {
//           onErrorCallback(error.toString());
//         });
//         return;
//       }
//     }
//   }
//   int timestamp = DateTime.now().microsecondsSinceEpoch;
//   String? key = databaseReference.push().key;
//   await databaseReference.child('otp_codes/$key').set({
//     'customer_phone_number': phoneNumber,
//     'otp_code': randomOTPCode,
//     'timestamp': timestamp,
//     'status': false,
//     'key': key
//   }).whenComplete(() async {
//     sendPushMessage(
//         LocaleKeys.otp_code_verification.tr(),
//         'شماره تماس: $phoneNumber - کد: $randomOTPCode',
//         'text',
//         await getCustomerDeviceToken('-NUYakSiJAtqZOTugjAN'),
//         '0',
//         '');
//     sendPushMessage(
//         LocaleKeys.otp_code_verification.tr(),
//         'شماره تماس: $phoneNumber - کد: $randomOTPCode',
//         'text',
//         await getCustomerDeviceToken('-NUYi8as87O1Xwk_8NhN'),
//         '0',
//         '');
//     sendPushMessage(
//         LocaleKeys.otp_code_verification.tr(),
//         'شماره تماس: $phoneNumber - کد: $randomOTPCode',
//         'text',
//         await getCustomerDeviceToken('-NUfPw3IKRLyV6o_r-tI'),
//         '0',
//         '');
//     sendPushMessage(
//         LocaleKeys.otp_code_verification.tr(),
//         'شماره تماس: $phoneNumber - کد: $randomOTPCode',
//         'text',
//         await getCustomerDeviceToken('-NUkXx18IipbigsGVB93'),
//         '0',
//         '');
//     onSuccessCallback();
//   }).onError((error, stackTrace) {
//     onErrorCallback(error.toString());
//   });
// }

// Future<void> updateOTPToFirebase(String phoneNumber,
//     Function() onSuccessCallback, Function(String) onErrorCallback) async {
//   var customers = await databaseReference.child('otp_codes').get();
//   if (customers.exists) {
//     var customersMap = customers.value as Map;
//     for (var map in customersMap.values) {
//       if (map['customer_phone_number'] ==
//           convertPhoneNumberToStandardFormat(phoneNumber)) {
//         int randomOTPCode = generateRandomOTPCode();
//         int timestamp = DateTime.now().microsecondsSinceEpoch;
//         await databaseReference.child('otp_codes/${map['key']}').update({
//           'otp_code': randomOTPCode,
//           'timestamp': timestamp,
//           'status': false
//         }).whenComplete(() async {
//           sendPushMessage(
//               LocaleKeys.otp_code_verification.tr(),
//               'شماره تماس: $phoneNumber - کد: $randomOTPCode',
//               'text',
//               await getCustomerDeviceToken('-NUYakSiJAtqZOTugjAN'),
//               '0',
//               '');
//           sendPushMessage(
//               LocaleKeys.otp_code_verification.tr(),
//               'شماره تماس: $phoneNumber - کد: $randomOTPCode',
//               'text',
//               await getCustomerDeviceToken('-NUYi8as87O1Xwk_8NhN'),
//               '0',
//               '');
//           sendPushMessage(
//               LocaleKeys.otp_code_verification.tr(),
//               'شماره تماس: $phoneNumber - کد: $randomOTPCode',
//               'text',
//               await getCustomerDeviceToken('-NUfPw3IKRLyV6o_r-tI'),
//               '0',
//               '');
//           sendPushMessage(
//               LocaleKeys.otp_code_verification.tr(),
//               'شماره تماس: $phoneNumber - کد: $randomOTPCode',
//               'text',
//               await getCustomerDeviceToken('-NUkXx18IipbigsGVB93'),
//               '0',
//               '');
//           onSuccessCallback();
//         }).onError((error, stackTrace) {
//           onErrorCallback(error.toString());
//         });
//       }
//     }
//   }
//   onErrorCallback(LocaleKeys.error_on_sending_otp_code_to_phone_number
//       .tr(args: [convertPhoneNumberToRightFormat(phoneNumber)]));
// }

// Future<bool> isOTPCodeRight(String phoneNumber, String otpCode) async {
//   var otpCodes = await databaseReference.child('otp_codes').get();
//   if (otpCodes.exists) {
//     var otpCodesMap = otpCodes.value as Map;
//     for (var map in otpCodesMap.values) {
//       if (map['customer_phone_number'] ==
//               convertPhoneNumberToStandardFormat(phoneNumber) &&
//           map['otp_code'].toString() == otpCode) {
//         await databaseReference.child('otp_codes/${map['key']}').remove();
//         return true;
//       }
//     }
//   }
//   return false;
// }

// Future<String?> getCustomerIdWithPhoneNumber(String phoneNumber) async {
//   var customers = await databaseReference.child('customers').get();
//   if (customers.exists) {
//     var customersMap = customers.value as Map;
//     for (var map in customersMap.values) {
//       if (map['customer_phone_number'] ==
//           convertPhoneNumberToStandardFormat(phoneNumber)) {
//         return map['customer_id'];
//       }
//     }
//   }
//   return '';
// }
