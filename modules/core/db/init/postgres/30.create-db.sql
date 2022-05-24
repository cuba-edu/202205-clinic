
insert into CLINIC_CONSUMABLE
(ID, VERSION, CREATE_TS, CREATED_BY, TITLE, DESCRIPTION, PRICE)
values ('2420a400-f949-aae3-2037-b9b094e87a01', 1, now(), 'admin', 'Syringe', '5 cubes', 10.00);

insert into CLINIC_CONSUMABLE
(ID, VERSION, CREATE_TS, CREATED_BY, TITLE, DESCRIPTION, PRICE)
values ('1edefd14-d0ac-3740-6014-3fb32cabaf41', 1, now(), 'admin', 'Flea shampoo', 'For dogs of all breeds', 15.00);

insert into CLINIC_CONSUMABLE
(ID, VERSION, CREATE_TS, CREATED_BY, TITLE, DESCRIPTION, PRICE)
values ('8e269391-70bf-8ed7-5cf8-d0e6bc2b41d2', 1, now(), 'admin', 'Vitamins', 'For adults', 30.00);

insert into CLINIC_CONSUMABLE
(ID, VERSION, CREATE_TS, CREATED_BY, TITLE, DESCRIPTION, PRICE)
values ('17a755a9-bc7d-e97b-1673-56200769476c', 1, now(), 'admin', 'Elastic Bandage', 'Elastic waterproof self-adhesive bandage', 3.00);

insert into CLINIC_CONSUMABLE
(ID, VERSION, CREATE_TS, CREATED_BY, TITLE, DESCRIPTION, PRICE)
values ('cb51736a-ec40-38fd-c5eb-c25d12275f4e', 1, now(), 'admin', 'Needles', 'Material: Stainless steel', 10.00);

insert into CLINIC_CONSUMABLE
(ID, VERSION, CREATE_TS, CREATED_BY, TITLE, DESCRIPTION, PRICE)
values ('ed17c120-121d-f1a7-2bb0-1bcdf5baa91a', 1, now(), 'admin', 'Flea Comb', 'Flea Comb Refill, Nylon, 72 Combs, Mixed Colors', 30.00);

-----

insert into CLINIC_OWNER
(ID, VERSION, CREATE_TS, CREATED_BY, NAME, PHONE_NUMBER, EMAIL)
values ('05820255-18e2-8f87-997d-ba4cbf8f3cd8', 1, now(), 'admin', 'Judy Smith', '123-45-67', 'smith@example.com');

insert into CLINIC_OWNER
(ID, VERSION, CREATE_TS, CREATED_BY, NAME, PHONE_NUMBER, EMAIL)
values ('da2e5873-fd53-307d-3530-dce331b31686', 1, now(), 'admin', 'John Doe', '555-55-55', 'doe@example.com');

insert into CLINIC_OWNER
(ID, VERSION, CREATE_TS, CREATED_BY, NAME, PHONE_NUMBER, EMAIL)
values ('ef956fdf-4e40-664c-14a7-0e46071c4b87', 1, now(), 'admin', 'Thomas Anderson', '000-00-00', 'anderson@example.com');

insert into CLINIC_OWNER
(ID, VERSION, CREATE_TS, CREATED_BY, NAME, PHONE_NUMBER, EMAIL)
values ('65b53eb5-1f71-9f50-9505-62b850ff183d', 1, now(), 'admin', 'Rick Sanchez', '555-33-22', 'sanchez@example.com');

insert into CLINIC_OWNER
(ID, VERSION, CREATE_TS, CREATED_BY, NAME, PHONE_NUMBER, EMAIL)
values ('99be158f-fa0f-c399-b2cf-065c211738ed', 1, now(), 'admin', 'Nicky Parsons', '987-65-32', 'parsons@example.com');

-----

insert into CLINIC_PET_TYPE
(ID, VERSION, CREATE_TS, CREATED_BY, NAME)
values ('988b6ab6-5c0d-3dc0-67dc-fd8e05e3a516', 1, now(), 'admin', 'Dog');

insert into CLINIC_PET_TYPE
(ID, VERSION, CREATE_TS, CREATED_BY, NAME)
values ('0db3870b-a92a-010f-d599-e98eb4d7783f', 1, now(), 'admin', 'Cat');

insert into CLINIC_PET_TYPE
(ID, VERSION, CREATE_TS, CREATED_BY, NAME)
values ('13c757de-e81d-a25d-4838-f14b4baaea04', 1, now(), 'admin', 'Fish');

insert into CLINIC_PET_TYPE
(ID, VERSION, CREATE_TS, CREATED_BY, NAME)
values ('c0b66652-9f8f-a73f-74ba-68b5eb1c44b6', 1, now(), 'admin', 'Parrot');

insert into CLINIC_PET_TYPE
(ID, VERSION, CREATE_TS, CREATED_BY, NAME)
values ('6cb197f0-7184-96be-e6c2-36a155b9f05e', 1, now(), 'admin', 'Hamster');

insert into CLINIC_PET_TYPE
(ID, VERSION, CREATE_TS, CREATED_BY, NAME)
values ('18a62751-75b8-c424-7634-c639c853d0d0', 1, now(), 'admin', 'Raccoon');

-----

insert into CLINIC_PET
(ID, VERSION, CREATE_TS, CREATED_BY, NAME, TYPE_ID, OWNER_ID)
values ('2e176c74-ddf1-324b-294b-a7d1bd4f5a4f', 1, now(), 'admin', 'Buddy', '988b6ab6-5c0d-3dc0-67dc-fd8e05e3a516', 'da2e5873-fd53-307d-3530-dce331b31686');

insert into CLINIC_PET
(ID, VERSION, CREATE_TS, CREATED_BY, NAME, TYPE_ID, OWNER_ID)
values ('14d89f27-43d3-8899-b6cc-b1057d62768f', 1, now(), 'admin', 'Bella', '0db3870b-a92a-010f-d599-e98eb4d7783f', '05820255-18e2-8f87-997d-ba4cbf8f3cd8');

insert into CLINIC_PET
(ID, VERSION, CREATE_TS, CREATED_BY, NAME, TYPE_ID, OWNER_ID)
values ('67bd78c1-fdc1-6661-6eb5-f81cd3aca654', 1, now(), 'admin', 'Dory', '13c757de-e81d-a25d-4838-f14b4baaea04', null);

insert into CLINIC_PET
(ID, VERSION, CREATE_TS, CREATED_BY, NAME, TYPE_ID, OWNER_ID)
values ('32da8909-c835-b6f2-fb0b-02adb418d783', 1, now(), 'admin', 'Paco', 'c0b66652-9f8f-a73f-74ba-68b5eb1c44b6', null);

insert into CLINIC_PET
(ID, VERSION, CREATE_TS, CREATED_BY, NAME, TYPE_ID, OWNER_ID)
values ('19a9529f-1209-57e0-6d4a-35d05a926629', 1, now(), 'admin', 'Rocket', '18a62751-75b8-c424-7634-c639c853d0d0', 'ef956fdf-4e40-664c-14a7-0e46071c4b87');

insert into CLINIC_PET
(ID, VERSION, CREATE_TS, CREATED_BY, NAME, TYPE_ID, OWNER_ID)
values ('fb66df55-77b1-6732-ed1b-c007a2a84b35', 1, now(), 'admin', 'Bandit', '18a62751-75b8-c424-7634-c639c853d0d0', '65b53eb5-1f71-9f50-9505-62b850ff183d');

insert into CLINIC_PET
(ID, VERSION, CREATE_TS, CREATED_BY, NAME, TYPE_ID, OWNER_ID)
values ('669158c3-9a34-6f3d-4c69-e1884ef67d0c', 1, now(), 'admin', 'Lucy', '988b6ab6-5c0d-3dc0-67dc-fd8e05e3a516', 'da2e5873-fd53-307d-3530-dce331b31686');

insert into CLINIC_PET
(ID, VERSION, CREATE_TS, CREATED_BY, NAME, TYPE_ID, OWNER_ID)
values ('926a44a8-efe7-5fc9-e63e-cabbc20e1711', 1, now(), 'admin', 'Tiger', '0db3870b-a92a-010f-d599-e98eb4d7783f', '99be158f-fa0f-c399-b2cf-065c211738ed');

insert into CLINIC_PET
(ID, VERSION, CREATE_TS, CREATED_BY, NAME, TYPE_ID, OWNER_ID)
values ('6a7405b2-9322-957f-3eac-3e9743196be9', 1, now(), 'admin', 'Skittles', '6cb197f0-7184-96be-e6c2-36a155b9f05e', '05820255-18e2-8f87-997d-ba4cbf8f3cd8');

-----

insert into SEC_USER
(ID, VERSION, CREATE_TS, CREATED_BY, LOGIN, LOGIN_LC, PASSWORD, PASSWORD_ENCRYPTION, NAME, FIRST_NAME, LAST_NAME, MIDDLE_NAME, POSITION_, EMAIL, LANGUAGE_, TIME_ZONE, TIME_ZONE_AUTO, ACTIVE, CHANGE_PASSWORD_AT_LOGON, GROUP_ID, IP_MASK)
values ('82cba824-eb90-6b47-da8c-341cac599998', 1, now(), 'admin', 'cruz', 'cruz', '$2a$10$iOcxPeLI2pZZ8GU01QOS7uMfqeJLNbsmFW.3unoUgDUD4zsz4Ar5G', 'bcrypt', 'Lara Cruz', 'Lara', 'Cruz', null, null, null, 'en', null, null, true, false, '0fa2b1a5-1d68-4d69-9fbd-dff348347f93', null);

insert into SEC_USER
(ID, VERSION, CREATE_TS, CREATED_BY, LOGIN, LOGIN_LC, PASSWORD, PASSWORD_ENCRYPTION, NAME, FIRST_NAME, LAST_NAME, MIDDLE_NAME, POSITION_, EMAIL, LANGUAGE_, TIME_ZONE, TIME_ZONE_AUTO, ACTIVE, CHANGE_PASSWORD_AT_LOGON, GROUP_ID, IP_MASK)
values ('bb0aae5b-b27b-a0a0-4ab9-e37084587b8e', 1, now(), 'admin', 'caldera', 'caldera', '$2a$10$A/9Frji95SYUqaAMcCU6z.3nXW1NT1GhzCjURfTI6FU4dFq/s4xEe', 'bcrypt', 'Caldera', null, null, null, null, null, 'en', null, null, true, false, '0fa2b1a5-1d68-4d69-9fbd-dff348347f93', null);

insert into SEC_USER
(ID, VERSION, CREATE_TS, CREATED_BY, LOGIN, LOGIN_LC, PASSWORD, PASSWORD_ENCRYPTION, NAME, FIRST_NAME, LAST_NAME, MIDDLE_NAME, POSITION_, EMAIL, LANGUAGE_, TIME_ZONE, TIME_ZONE_AUTO, ACTIVE, CHANGE_PASSWORD_AT_LOGON, GROUP_ID, IP_MASK)
values ('7c4c2e7c-2c6d-8bed-1199-eda11e73ceeb', 1, now(), 'admin', 'dice', 'dice', '$2a$10$EvrREo7pbJtKQmA2G5190.pb2GxVbpiDL2pkLwjctLsyj48U8rxw2', 'bcrypt', 'Nolan Dice', 'Nolan', 'Dice', null, null, null, 'en', null, null, true, false, '0fa2b1a5-1d68-4d69-9fbd-dff348347f93', null);

insert into SEC_USER
(ID, VERSION, CREATE_TS, CREATED_BY, LOGIN, LOGIN_LC, PASSWORD, PASSWORD_ENCRYPTION, NAME, FIRST_NAME, LAST_NAME, MIDDLE_NAME, POSITION_, EMAIL, LANGUAGE_, TIME_ZONE, TIME_ZONE_AUTO, ACTIVE, CHANGE_PASSWORD_AT_LOGON, GROUP_ID, IP_MASK)
values ('2d1455b5-74ec-8c8a-edd6-142b4ffe4964', 1, now(), 'admin', 'sh', 'sh', '$2a$10$yfS8gi3XTvJ3PXlCQKI0VuDVUXcFnSrkfcSjJ/DMG1wiE/MOpy8mW', 'bcrypt', 'Eli Sh', 'Eli', 'Sh', null, null, null, 'en', null, null, true, false, '0fa2b1a5-1d68-4d69-9fbd-dff348347f93', null);

-----

insert into CLINIC_VETERINARIAN
(ID, VERSION, CREATE_TS, CREATED_BY, USER_ID, HOURLY_RATE)
values ('546b216c-f593-6383-c1e7-dd7b30ed6d1d', 1, now(), 'admin', '2d1455b5-74ec-8c8a-edd6-142b4ffe4964', 20.00);

insert into CLINIC_VETERINARIAN
(ID, VERSION, CREATE_TS, CREATED_BY, USER_ID, HOURLY_RATE)
values ('6fbf640e-6bf3-2886-8c47-18dd07606317', 1, now(), 'admin', 'bb0aae5b-b27b-a0a0-4ab9-e37084587b8e', 10.00);

insert into CLINIC_VETERINARIAN
(ID, VERSION, CREATE_TS, CREATED_BY, USER_ID, HOURLY_RATE)
values ('9feb157a-866d-02a8-f557-5f0d5d192493', 1, now(), 'admin', '82cba824-eb90-6b47-da8c-341cac599998', 15.00);

insert into CLINIC_VETERINARIAN
(ID, VERSION, CREATE_TS, CREATED_BY, USER_ID, HOURLY_RATE)
values ('8c138997-1ac4-5d8d-a848-648d9f8e971c', 1, now(), 'admin', '7c4c2e7c-2c6d-8bed-1199-eda11e73ceeb', 13.00);

-----

insert into CLINIC_VISIT
(ID, VERSION, CREATE_TS, CREATED_BY, PET_ID, VETERINARIAN_ID, DATE_, DESCRIPTION, HOURS_SPENT, AMOUNT, NUMBER_)
values ('71be9eca-cab5-1617-0fb4-9214e130f5f2', 1, now(), 'admin', '2e176c74-ddf1-324b-294b-a7d1bd4f5a4f', '546b216c-f593-6383-c1e7-dd7b30ed6d1d', '2022-05-24 15:00:00', 'Fleas', 1, 70.00, 1);

insert into CLINIC_VISIT_CONSUMABLE_LINK
(VISIT_ID, CONSUMABLE_ID)
values ('71be9eca-cab5-1617-0fb4-9214e130f5f2', '1edefd14-d0ac-3740-6014-3fb32cabaf41');

--

insert into CLINIC_VISIT
(ID, VERSION, CREATE_TS, CREATED_BY, PET_ID, VETERINARIAN_ID, DATE_, DESCRIPTION, HOURS_SPENT, AMOUNT, NUMBER_)
values ('2b82d98c-654e-76c5-9d1e-0bf99e003ccd', 1, now(), 'admin', '2e176c74-ddf1-324b-294b-a7d1bd4f5a4f', '6fbf640e-6bf3-2886-8c47-18dd07606317', '2022-05-25 11:00:00', 'Repeat visit', 1, 40.00, 2);

insert into CLINIC_VISIT_CONSUMABLE_LINK
(VISIT_ID, CONSUMABLE_ID)
values ('2b82d98c-654e-76c5-9d1e-0bf99e003ccd', 'ed17c120-121d-f1a7-2bb0-1bcdf5baa91a');

--

insert into CLINIC_VISIT
(ID, VERSION, CREATE_TS, CREATED_BY, PET_ID, VETERINARIAN_ID, DATE_, DESCRIPTION, HOURS_SPENT, AMOUNT, NUMBER_)
values ('3d431b46-5aea-21ba-dca1-0444c0e53ac1', 1, now(), 'admin', '19a9529f-1209-57e0-6d4a-35d05a926629', '9feb157a-866d-02a8-f557-5f0d5d192493', '2022-05-25 13:00:00', 'Fracture', 3, 78.00, 3);

insert into CLINIC_VISIT_CONSUMABLE_LINK
(VISIT_ID, CONSUMABLE_ID)
values ('3d431b46-5aea-21ba-dca1-0444c0e53ac1', '17a755a9-bc7d-e97b-1673-56200769476c');

insert into CLINIC_VISIT_CONSUMABLE_LINK
(VISIT_ID, CONSUMABLE_ID)
values ('3d431b46-5aea-21ba-dca1-0444c0e53ac1', '8e269391-70bf-8ed7-5cf8-d0e6bc2b41d2');

--

insert into CLINIC_VISIT
(ID, VERSION, CREATE_TS, CREATED_BY, PET_ID, VETERINARIAN_ID, DATE_, DESCRIPTION, HOURS_SPENT, AMOUNT, NUMBER_)
values ('4444dcba-d1dc-43d6-9d2e-abfb2a26be9d', 1, now(), 'admin', '926a44a8-efe7-5fc9-e63e-cabbc20e1711', '8c138997-1ac4-5d8d-a848-648d9f8e971c', '2022-05-26 10:00:00', 'Vaccination', 1, 33.00, 4);

insert into CLINIC_VISIT_CONSUMABLE_LINK
(VISIT_ID, CONSUMABLE_ID)
values ('4444dcba-d1dc-43d6-9d2e-abfb2a26be9d', 'cb51736a-ec40-38fd-c5eb-c25d12275f4e');

insert into CLINIC_VISIT_CONSUMABLE_LINK
(VISIT_ID, CONSUMABLE_ID)
values ('4444dcba-d1dc-43d6-9d2e-abfb2a26be9d', '2420a400-f949-aae3-2037-b9b094e87a01');

--

insert into CLINIC_VISIT
(ID, VERSION, CREATE_TS, CREATED_BY, PET_ID, VETERINARIAN_ID, DATE_, DESCRIPTION, HOURS_SPENT, AMOUNT, NUMBER_)
values ('f852f65e-fe22-b8db-5476-e808ca7ee56a', 1, now(), 'admin', '6a7405b2-9322-957f-3eac-3e9743196be9', '6fbf640e-6bf3-2886-8c47-18dd07606317', '2022-05-26 12:00:00', 'Examination', 1, 10.00, 5);

--

insert into CLINIC_VISIT
(ID, VERSION, CREATE_TS, CREATED_BY, PET_ID, VETERINARIAN_ID, DATE_, DESCRIPTION, HOURS_SPENT, AMOUNT, NUMBER_)
values ('f67305d7-ac3f-c7d3-534e-8adc5cf38da2', 1, now(), 'admin', '14d89f27-43d3-8899-b6cc-b1057d62768f', '546b216c-f593-6383-c1e7-dd7b30ed6d1d', '2022-05-26 14:00:00', 'Mite', 2, 160.00, 6);

insert into CLINIC_VISIT_CONSUMABLE_LINK
(VISIT_ID, CONSUMABLE_ID)
values ('f67305d7-ac3f-c7d3-534e-8adc5cf38da2', '2420a400-f949-aae3-2037-b9b094e87a01');

insert into CLINIC_VISIT_CONSUMABLE_LINK
(VISIT_ID, CONSUMABLE_ID)
values ('f67305d7-ac3f-c7d3-534e-8adc5cf38da2', '8e269391-70bf-8ed7-5cf8-d0e6bc2b41d2');

-----

CREATE SEQUENCE seq_un_visit_number
    INCREMENT 1
  MINVALUE 0
  MAXVALUE 9223372036854775807
  START 7
  CACHE 1;
ALTER TABLE seq_un_visit_number
    OWNER TO cuba;

-----

