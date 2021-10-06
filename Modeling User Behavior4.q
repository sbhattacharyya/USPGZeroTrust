//This file was generated from (Academic) UPPAAL 4.1.23 (rev. B6B873040972BC24), September 2019

/*
User Zoe exhibits poor security behavior in password generation, where she chose new password that has been used before for this account.
*/
E<> (Zoe.password_reusability and password_reusability.used_before)

/*
User Zoe exhibits good security behavior in password generation, where she chose new password that is used for the first time for this account.
*/
E<> (Zoe.password_reusability and password_reusability.unused_before)

/*
User Zoe exhibits good security behavior in password generation, where she chose her new password to be long enough and complex.
*/
E<> (Zoe.password_length and Zoe.L>=8 and Zoe.L<=16 and password_length.long)

/*
User Zoe exhibits poor security behavior in password generation, where she chose her new password to be short and simple.
*/
E<> (Zoe.password_length and Zoe.L==4 and password_length.short)

/*
User Zoe exhibits poor security behavior in password generation, where her current password is expired,
and the last time it have been changed was more than 90 days ago.
*/
E<> (Zoe.password_age and Zoe.D1>90 and password_age.expired)

/*
User Zoe exhibits good security behavior in password generation, where her current password is not expired,
and the last time it have been changed was 30 days ago.
*/
E<> (Zoe.password_age and Zoe.D1==30 and password_age.non_expired)

/*
User Zoe exhibits good security behavior in updating, when she took between 1 and 10 minutes to reboot the device after the new updates were installed.
*/
E<> (Zoe.time_to_reboot and Zoe.T1>=1 and Zoe.T1<=10 and time_to_reboot.right_away)

/*
User Zoe exhibits poor security behavior in updating, when she took up to 8 hours to reboot the device after the new updates were installed.
*/
E<> (Zoe.time_to_reboot and Zoe.T1 == 480 and time_to_reboot.after_awhile)

/*
User Zoe exhibits poor security behavior in updating, where she chose to install new updates manually.
*/
E<> (Zoe.updating_mechanism and updating_mechanism.manually)

/*
User Zoe exhibits good security behavior in updating, where she chose to install new updates automaically.
*/
E<> (Zoe.updating_mechanism and updating_mechanism.automatically)

/*

*/
//NO_QUERY

/*
User Zac exhibits good security behavior in device securement, when he chose to lock the device automatically after 1 to 15 minutes of inactivity.
*/
E<> (Zac.timeout and Zac.T1>=1 and Zac.T1<=15 and timeout.short)

/*
User Zac exhibits poor security behavior in device securement, when he chose to lock the device automatically after 30 minutes of inactivity.
*/
E<> (Zac.timeout and Zac.T1==30 and timeout.long)

/*
User Zac exhibits poor security behavior in device securement, when he turned off automatic screen-locking.
*/
E<> (Zac.screen_locking and screen_locking.turned_off)

/*
User Zac exhibits good security behavior in device securement, when he turned on automatic screen-locking.
*/
E<> (Zac.screen_locking and screen_locking.turned_on)

/*
User Zac exhibits poor security behavior in proactive awareness, when he acted contrary to the security policies.
*/
E<> (Zac.security_policy and security_policy.violated)

/*
User Zac exhibits good security behavior in proactive awareness, when he acted according to the security policies.
*/
E<> (Zac.security_policy and security_policy.complied)

/*
User Zac exhibits good security behavior in proactive awareness, when he report the security threat to the IT department.
*/
E<> (Zac.report_threat and report_threat.yes)

/*
User Zac exhibits poor security behavior in proactive awareness, when he did not report the security threat to the IT department.
*/
E<> (Zac.report_threat and report_threat.no)

/*
User Zac exhibits good security behavior in proactive awareness, when he was able to spot suspicious signs of some security threat.
*/
E<> (Zac.spot_signs and spot_signs.yes)

/*
User Zac exhibits poor security behavior in proactive awareness, when he was unable to spot suspicious signs of some security threat.
*/
E<> (Zac.spot_signs and spot_signs.no)

/*
User Zac exhibits poor security behavior in device securement, where he disabled device protection feature.
*/
E<> (Zac.device_protection and device_protection.disabled)

/*
User Zac exhibits good security behavior in device securement, where he enabled device protection feature.
*/
E<> (Zac.device_protection and device_protection.enabled)

/*

*/
//NO_QUERY

/*
User Bella exhibits good security behavior in device securement, when she chose to lock the device automatically after 1 to 15 minutes of inactivity.
*/
E<> (Bella.timeout and Bella.T2>=1 and Bella.T2<=15 and timeout.short)

/*
User Bella exhibits poor security behavior in device securement, when she chose to lock the device automatically after 60 minutes of inactivity.
*/
E<> (Bella.timeout and Bella.T2==60 and timeout.long)

/*
User Bella exhibits poor security behavior in device securement, when she turned off automatic screen-locking.
*/
E<> (Bella.screen_locking and screen_locking.turned_off)

/*
User Bella exhibits good security behavior in device securement, when she turned on automatic screen-locking.
*/
E<> (Bella.screen_locking and screen_locking.turned_on)

/*
User Bella exhibits poor security behavior in proactive awareness, when she acted contrary to the security policies.
*/
E<> (Bella.security_policy and security_policy.violated)

/*
User Bella exhibits good security behavior in proactive awareness, when she acted according to the security policies.
*/
E<> (Bella.security_policy and security_policy.complied)

/*
User Bella exhibits poor security behavior in proactive awareness, when she did not report the security threat to the IT department.
*/
E<> (Bella.report_threat and report_threat.no)

/*
User Bella exhibits good security behavior in proactive awareness, when she reported the security threat to the IT department.
*/
E<> (Bella.report_threat and report_threat.yes)

/*
User Bella exhibits poor security behavior in proactive awareness, when she was unable to spot suspicious signs of some security threat.
*/
E<> (Bella.spot_signs and spot_signs.no)

/*
User Bella exhibits good security behavior in proactive awareness, when she was able to spot suspicious signs of some security threat.
*/
E<> (Bella.spot_signs and spot_signs.yes)

/*
User Bella exhibits poor security behavior in password generation, where she chose new password that has been used before for this account.
(Bella skipped renewing her current expired password).
*/
E<> (Bella.password_reusability and password_reusability.used_before)

/*
User Bella exhibits good security behavior in password generation, where she chose new password that is used for the first time for this account.
(Bella skipped renewing her current expired password).
*/
E<> (Bella.password_reusability and password_reusability.unused_before)

/*
User Bella exhibits poor security behavior in password generation, where she chose her new password to be short and simple.
(Bella skipped renewing her current expired password).
*/
E<> (Bella.password_length and password_length.short)

/*
User Bella exhibits good security behavior in password generation, where she chose her new password to be long enough and complex.
(Bella skipped renewing her current expired password).
*/
E<> (Bella.password_length and password_length.long)

/*
User Bella exhibits good security behavior in password generation, where her current password is not expired,
and the last time it have been changed was in the period between 30 and 90 days.
*/
E<> (Bella.password_age and Bella.D2>=30 and Bella.D2<=90 and password_age.non_expired)

/*
User Bella exhibits poor security behavior in password generation, where her account password is expired,
and the last time it have been changed was 180 days ago.
*/
E<> (Bella.password_age and Bella.D2==180 and password_age.expired)

/*
User Bella exhibits poor security behavior in updating, when she took more than 10 minutes to reboot the device after the new updates were installed.
*/
E<> (Bella.time_to_reboot and Bella.T1>10 and time_to_reboot.after_awhile)

/*
User Bella exhibits good security behavior in updating, when she took up to 5 minute to reboot the device after the new updates were installed.
*/
E<> (Bella.time_to_reboot and Bella.T1==5 and time_to_reboot.right_away)

/*
User Bella exhibits poor security behavior in updating, when she took more than 1 day to install the new updates.
*/
E<> (Bella.time_to_update and Bella.D1>1 and time_to_update.long)

/*
User Bella exhibits good security behavior in updating, when she took no time to install the new updates.
*/
E<> (Bella.time_to_update and Bella.D1==0 and time_to_update.short)

/*
User Bella exhibits good security behavior in updating, where she chose to install the new updates automaically.
*/
E<> (Bella.updating_mechanism and updating_mechanism.automatically)

/*
User Bella exhibits good security behavior in updating, where she chose to install new updates manually.
*/
E<> (Bella.updating_mechanism and updating_mechanism.manually)

/*
User Bella exhibits good security behavior in device securement, where she enabled device protection feature.
*/
E<> (Bella.device_protection and device_protection.enabled)

/*
User Bella exhibits poor security behavior in device securement, where she disabled device protection feature.
*/
E<> (Bella.device_protection and device_protection.disabled)

/*

*/
//NO_QUERY

/*
User Tom exhibits poor security behavior in device securement, when he chose to lock the device after more than 15 minutes of inactivity.
*/
E<> (Tom.timeout and Tom.T2>15 and timeout.long)

/*
User Tom exhibits good security behavior in device securement, when he chose to lock the device after 10 minutes of inactivity.
*/
E<> (Tom.timeout and Tom.T2==10 and timeout.short)

/*
User Tom exhibits poor security behavior in device securement, when he turned off automatic screen-locking.
*/
E<> (Tom.screen_locking and screen_locking.turned_off)

/*
User Tom exhibits good security behavior in device securement, when he turned on automatic screen-locking.
*/
E<> (Tom.screen_locking and screen_locking.turned_on)

/*
User Tom exhibits good security behavior in proactive awareness, when he acted according to the security policies.
*/
E<> (Tom.security_policy and security_policy.complied)

/*
User Tom exhibits poor security behavior in proactive awareness, when he acted contrary to the security policies due to his lack of awareness.
*/
E<> (Tom.security_policy and security_policy.violated)

/*
User Tom exhibits good security behavior in proactive awareness, when he reported the security threat to the IT department.
*/
E<> (Tom.report_threat and report_threat.yes)

/*
User Tom exhibits poor security behavior in proactive awareness, when he did not report the security threat to the IT department.
*/
E<> (Tom.report_threat and report_threat.no)

/*
User Tom exhibits good security behavior in proactive awareness, when he was able to spot suspicious signs of some security threat.
*/
E<> (Tom.spot_signs and spot_signs.yes)

/*
User Tom exhibits poor security behavior in proactive awareness, when he was unable to spot suspicious signs of some security threat.
*/
E<> (Tom.spot_signs and spot_signs.no)

/*
User Tom exhibits poor security behavior in password generation, where he chose new password that has been used before for this account.
*/
E<> (Tom.password_reusability and password_reusability.used_before)

/*
User Tom exhibits good security behavior in password generation, where he chose new password that is used for the first time for this account.
*/
E<> (Tom.password_reusability and password_reusability.unused_before)

/*
User Tom exhibits poor security behavior in password generation, where he chose his new password to be short and simple.
*/
E<> (Tom.password_length and Tom.L==4 and password_length.short)

/*
User Tom exhibits good security behavior in password generation, where he chose his new password to be long enough and complex.
*/
E<> (Tom.password_length and Tom.L>=8 and Tom.L<=16 and password_length.long)

/*
User Tom exhibits poor security behavior in password generation, where his current password is expired,
and the last time it have been changed was more than 90 days ago.
*/
E<> (Tom.password_age and Tom.D2>90 and password_age.expired)

/*
User Tom exhibits good security behavior in password generation, where his current password is not expired,
and the last time it have been changed was 40 days.
*/
E<> (Tom.password_age and Tom.D2==40 and password_age.non_expired)

/*
User Tom exhibits good security behavior in updating, when he took between 1 and 10 minutes to reboot the device after the new updates were installed.
*/
E<> (Tom.time_to_reboot and Tom.T1>=1 and Tom.T1<=10 and time_to_reboot.right_away)

/*
User Tom exhibits somewhat poor security behavior in updating, when he took up to 3 hours to reboot the device after the new updates were installed.
*/
E<> (Tom.time_to_reboot and Tom.T1==180 and time_to_reboot.after_awhile)

/*
User Tom exhibits good security behavior in updating, when he installed the new updates within 1 day only.
*/
E<> (Tom.time_to_update and Tom.D1<=1 and time_to_update.short)

/*
User Tom exhibits somewhat poor security behavior in updating, when he took up to 4 days to install the new updates.
*/
E<> (Tom.time_to_update and Tom.D1==4 and time_to_update.long)

/*
User Tom exhibits good security behavior in updating, where he chose to install the new updates automaically.
*/
E<> (Tom.updating_mechanism and updating_mechanism.automatically)

/*
User Tom exhibits somewhat poor security behavior in updating, where he chose to install new updates manually.
*/
E<> (Tom.updating_mechanism and updating_mechanism.manually)

/*
User Tom exhibits poor security behavior in device securement, where he disabled device protection feature.
*/
E<> (Tom.device_protection and device_protection.disabled)

/*
User Tom exhibits good security behavior in device securement, where he enabled device protection feature.
*/
E<> (Tom.device_protection and device_protection.enabled)

/*

*/
//NO_QUERY

/*
User Sara exhibits good security behavior in device securement, when she turned on automatic screen-locking.
*/
E<> (Sara.screen_locking and screen_locking.turned_on)

/*
User Sara exhibits poor security behavior in device securement, when she turned off automatic screen-locking.
*/
E<> (Sara.screen_locking and screen_locking.turned_off)

/*
User Sara exhibits good security behavior in proactive awareness, when she acted according to the security policies.
*/
E<> (Sara.security_policy and security_policy.complied)

/*
User Sara exhibits poor security behavior in proactive awareness, when she acted contrary to the security policies.
*/
E<> (Sara.security_policy and security_policy.violated)

/*
User Sara exhibits good security behavior in proactive awareness, when she reported the security threat to the IT department.
*/
E<> (Sara.report_threat and report_threat.yes)

/*
User Sara exhibits poor security behavior in proactive awareness, when she did not report the security threat to the IT department.
*/
E<> (Sara.report_threat and report_threat.no)

/*
User Sara exhibits poor security behavior in proactive awareness, when she was unable to spot suspicious signs of some security threat.
*/
E<> (Sara.spot_signs and spot_signs.no)

/*
User Sara exhibits good security behavior in proactive awareness, when she was able to spot suspicious signs of some security threat.
*/
E<> (Sara.spot_signs and spot_signs.yes)

/*
User Sara exhibits good security behavior in password generation, where she chose new password that is used for the first time for this account.
*/
E<> (Sara.password_reusability and password_reusability.unused_before)

/*
User Sara exhibits poor security behavior in password generation, where she chose new password that has been used before for this account.
*/
E<> (Sara.password_reusability and password_reusability.used_before)

/*
User Sara exhibits good security behavior in password generation, where she chose her new password to be long enough and complex.
*/
E<> (Sara.password_length and Sara.L>=8 and Sara.L<=16 and password_length.long)

/*
User Sara exhibits poor security behavior in password generation, where she chose her new password to be short and simple.
*/
E<> (Sara.password_length and Sara.L==4 and password_length.short)

/*
User Sara exhibits good security behavior in password generation, where her current password is not expired,
and the last time it have been changed in the period between 30 and 90 days.
*/
E<> (Sara.password_age and Sara.D2>=30 and Sara.D2<=90 and password_age.non_expired)

/*
User Sara exhibits poor security behavior in password generation, where her account password is expired,
and the last time it have been changed was 99 days ago.
*/
E<> (Sara.password_age and Sara.D2==99 and password_age.expired)

/*
User Sara exhibits good security behavior in updating, when she took between 1 and 10 minutes to reboot the device after the new updates were installed.
*/
E<> (Sara.time_to_reboot and Sara.T1>=1 and Sara.T1<=10 and time_to_reboot.right_away)

/*
User Sara exhibits poor security behavior in updating, when she took up to 6 hours to reboot the device after the new updates were installed.
*/
E<> (Sara.time_to_reboot and Sara.T1 == 360 and time_to_reboot.after_awhile)

/*
User Sara exhibits good security behavior in updating, when she installed the new updates within 1 day only.
*/
E<> (Sara.time_to_update and Sara.D1<=1 and time_to_update.short)

/*
User Sara exhibits poor security behavior in updating, when she took up to 10 days to install the new updates.
*/
E<> (Sara.time_to_update and Sara.D1==10 and time_to_update.long)

/*
User Sara exhibits good security behavior in updating, where she chose to install the new updates automaically.
*/
E<> (Sara.updating_mechanism and updating_mechanism.automatically)

/*
User Sara exhibits poor security behavior in updating, where she chose to install the new updates manually.
*/
E<> (Sara.updating_mechanism and updating_mechanism.manually)

/*
User Sara exhibits good security behavior in device securement, where she enabled device protection feature.
*/
E<> (Sara.device_protection and device_protection.enabled)

/*
User Sara exhibits poor security behavior in device securement, where she disabled device protection feature.
*/
E<> (Sara.device_protection and device_protection.disabled)

/*

*/
//NO_QUERY

/*
User John exhibits poor security behavior in device securement, when he chose to lock the device after more than 15 minutes of inactivity.
*/
E<> (John.timeout and John.T2>15 and timeout.long)

/*
User John exhibits good security behavior in device securement, when he chose to lock the device after 5 minutes of inactivity.
*/
E<> (John.timeout and John.T2==5 and timeout.short)

/*
User John exhibits poor security behavior in device securement, when he turned off automatic screen-locking.
*/
E<> (John.screen_locking and screen_locking.turned_off)

/*
User John exhibits good security behavior in device securement, when he turned on automatic screen-locking.
*/
E<> (John.screen_locking and screen_locking.turned_on)

/*
User John exhibits poor security behavior in proactive awareness, when he acted contrary to the security policies.
*/
E<> (John.security_policy and security_policy.violated)

/*
User John exhibits good security behavior in proactive awareness, when he acted according to the security policies.
*/
E<> (John.security_policy and security_policy.complied)

/*
User John exhibits poor security behavior in proactive awareness, when he did not report the security threat to the IT department.
*/
E<> (John.report_threat and report_threat.no)

/*
User John exhibits good security behavior in proactive awareness, when he reported the security threat to the IT department.
*/
E<> (John.report_threat and report_threat.yes)

/*
User John exhibits poor security behavior in proactive awareness, when he was unable to spot suspicious signs of some security threat.
*/
E<> (John.spot_signs and spot_signs.no)

/*
User John exhibits good security behavior in proactive awareness, when he was able to spot suspicious signs of some security threat.
*/
E<> (John.spot_signs and spot_signs.yes)

/*
User John exhibits poor security behavior in password generation, where he chose new password that has been used before for this account.
*/
E<> (John.password_reusability and password_reusability.used_before)

/*
User John exhibits good security behavior in password generation, where he chose new password that is used for the first time for this account.
*/
E<> (John.password_reusability and password_reusability.unused_before)

/*
User John exhibits poor security behavior in password generation, where he chose his new password to be short and simple.
*/
E<> (John.password_length and John.L==4 and password_length.short)

/*
User John exhibits good security behavior in password generation, where he chose his new password to be long enough and complex.
*/
E<> (John.password_length and John.L>=8 and John.L<=16 and password_length.long)

/*
User John exhibits poor security behavior in password generation, where his current password is expired,
and the last time it have been changed was more than 90 days ago.
*/
E<> (John.password_age and John.D1>90 and password_age.expired)

/*
User John exhibits good security behavior in password generation, where his current password is not expired,
and the last time it have been changed was 30 days ago.
*/
E<> (John.password_age and John.D1==30 and password_age.non_expired)

/*
User John exhibits poor security behavior in updating, when he took more than 10 minutes to reboot the device after the new updates were installed.
*/
E<> (John.time_to_reboot and John.T1>10 and time_to_reboot.after_awhile)

/*
User John exhibits good security behavior in updating, when he took only 1 minute to reboot the device after the new updates were installed.
*/
E<> (John.time_to_reboot and John.T1==1 and time_to_reboot.right_away)

/*
User John exhibits poor security behavior in updating, where he chose to install new updates manually.
*/
E<> (John.updating_mechanism and updating_mechanism.manually)

/*
User John exhibits good security behavior in updating, where he chose to install new updates automaically.
*/
E<> (John.updating_mechanism and updating_mechanism.automatically)

/*
User John exhibits poor security behavior in device securement, where he disabled device protection feature.
*/
E<> (John.device_protection and device_protection.disabled)

/*
User John exhibits good security behavior in device securement, where he enabled device protection feature.
*/
E<> (John.device_protection and device_protection.enabled)
