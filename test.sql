-- ****************** SqlDBM: MySQL ******************;
-- ***************************************************;


-- ************************************** `Users`

CREATE TABLE `Users`
(
 `User_id`         int unsigned NOT NULL AUTO_INCREMENT ,
 `Profile_picture` blob NOT NULL ,
 `Access_level`    char(10) NOT NULL ,
 `Username`        varchar(150) NOT NULL ,
 `Password`        varchar(50) NOT NULL ,
 `First_name`      varchar(50) NOT NULL ,
 `Last_name`       varchar(50) NOT NULL ,
 `Email_address`   varchar(150) NOT NULL ,
 `Mobile`          varchar(20) NOT NULL ,
 `Active`          boolean NOT NULL ,
 `Created_by`      varchar(50) NOT NULL ,
 `Created_date`    date NOT NULL ,
 `Modified_by`     varchar(50) NOT NULL ,
 `Modified_date`   date NOT NULL ,

PRIMARY KEY (`User_id`)
);






-- ************************************** `Tail`

CREATE TABLE `Tail`
(
 `id`            int unsigned NOT NULL AUTO_INCREMENT ,
 `Created_by`    varchar(50) NOT NULL ,
 `Created_date`  date NOT NULL ,
 `Modified_by`   varchar(50) NOT NULL ,
 `Modified_date` date NOT NULL ,

PRIMARY KEY (`id`)
);






-- ************************************** `Student Assessments`

CREATE TABLE `Student Assessments`
(
 `Student_assessments_id` int unsigned NOT NULL AUTO_INCREMENT ,
 `Student_id`             int NOT NULL ,
 `Accessment_id`          int NOT NULL ,
 `Question`               varchar(255) NOT NULL ,
 `Answer`                 varchar(255) NOT NULL ,
 `Created_buy`            varchar(50) NOT NULL ,
 `Created_date`           date NOT NULL ,
 `Modified_by`            varchar(50) NOT NULL ,
 `Modified_date`          date NOT NULL ,

PRIMARY KEY (`Student_assessments_id`)
);






-- ************************************** `Learning Plan Information`

CREATE TABLE `Learning Plan Information`
(
 `Learning_plan_id`   int unsigned NOT NULL AUTO_INCREMENT ,
 `Learning_plan_name` char(50) NOT NULL ,
 `Version_id`         smallint NOT NULL ,
 `Subject`            char(10) NOT NULL ,
 `Grade_level`        char NOT NULL ,

PRIMARY KEY (`Learning_plan_id`)
);






-- ************************************** `Lead Source`

CREATE TABLE `Lead Source`
(
 `Lead_source_id` int NOT NULL ,
 `Name`           varchar(50) NOT NULL ,
 `Description`    varchar(255) NOT NULL ,
 `Created_by`     varchar(50) NOT NULL ,
 `Created_date`   date NOT NULL ,
 `Modified_by`    varchar(50) NOT NULL ,
 `Modified_date`  date NOT NULL ,

PRIMARY KEY (`Lead_source_id`)
);






-- ************************************** `Instructor Information`

CREATE TABLE `Instructor Information`
(
 `Instructor_id`                 int unsigned NOT NULL AUTO_INCREMENT ,
 `First_name`                    varchar(50) NOT NULL ,
 `Last_name`                     varchar(50) NOT NULL ,
 `DOB`                           date NOT NULL ,
 `Email_address`                 varchar(150) NOT NULL ,
 `Phone`                         varchar(20) NOT NULL ,
 `Address_street`                varchar(100) NOT NULL ,
 `Address_city`                  varchar(20) NOT NULL ,
 `Address_state`                 varchar(20) NOT NULL ,
 `Address_zip_code`              varchar(20) NOT NULL ,
 `Address_country`               varchar(20) NOT NULL ,
 `Education`                     varchar(20) NOT NULL ,
 `Work_start_date`               date NOT NULL ,
 `Work_end_date`                 date NOT NULL ,
 `Position_applied_for`          varchar(12) NOT NULL ,
 `Willing_after_school_programs` boolean NOT NULL ,
 `Willing_pick_up_students`      boolean NOT NULL ,
 `Working_days`                  varchar(30) NOT NULL ,
 `Background_check_date`         date NOT NULL ,
 `Background_check_provider`     varchar(50) NOT NULL ,
 `Emergency_name`                varchar(50) NOT NULL ,
 `Contact_phone`                 varchar(20) NOT NULL ,
 `Relationship`                  varchar(20) NOT NULL ,
 `Contact_email`                 varchar(150) NOT NULL ,
 `Created_by`                    varchar(50) NOT NULL ,
 `Created_date`                  date NOT NULL ,
 `Modified_by`                   varchar(50) NOT NULL ,
 `Modified_date`                 date NOT NULL ,

PRIMARY KEY (`Instructor_id`)
);






-- ************************************** `Franchisee Information`

CREATE TABLE `Franchisee Information`
(
 `Franchisee_id`            int unsigned NOT NULL AUTO_INCREMENT ,
 `First_Name`               varchar(50) NOT NULL ,
 `Last_name`                varchar(50) NOT NULL ,
 `Mobile`                   varchar(20) NOT NULL ,
 `Franchisee_email_address` varchar(150) NOT NULL ,
 `Created_by`               varchar(50) NOT NULL ,
 `Created_date`             date NOT NULL ,
 `Modified_by`              varchar(50) NOT NULL ,
 `Modified_date`            date NOT NULL ,

PRIMARY KEY (`Franchisee_id`)
);






-- ************************************** `Enrollment Plans Information`

CREATE TABLE `Enrollment Plans Information`
(
 `Enrollment_plans_id`     int unsigned NOT NULL AUTO_INCREMENT ,
 `Enrollment_plans_name`   varchar(50) NOT NULL ,
 `Start_date`              date NOT NULL ,
 `End_date`                date NULL ,
 `Tution`                  decimal NOT NULL ,
 `Max_number_of_students`  int NOT NULL ,
 `Registration_fees`       decimal NULL ,
 `Registration_open_date`  date NULL ,
 `Registration_close_date` date NULL ,
 `Location_id`             int NOT NULL ,
 `Grade_level_range`       varchar(100) NOT NULL ,
 `Recurring`               char NOT NULL ,
 `Active`                  char NOT NULL ,
 `Duration_in_hours`       decimal NOT NULL ,
 `Created_by`              varchar(50) NOT NULL ,
 `Created_date`            date NOT NULL ,
 `Modified_by`             varchar(50) NOT NULL ,
 `Modified_date`           date NOT NULL ,

PRIMARY KEY (`Enrollment_plans_id`)
);






-- ************************************** `Enrollment Plans Discounts`

CREATE TABLE `Enrollment Plans Discounts`
(
 `Discount_id`         int unsigned NOT NULL AUTO_INCREMENT ,
 `Discount_start_date` date NOT NULL ,
 `Discount_end_date`   date NOT NULL ,
 `Discount_limit`      decimal NOT NULL ,
 `Discount_tuition`    decimal NOT NULL ,
 `Created_by`          varchar(50) NOT NULL ,
 `Created_date`        date NOT NULL ,
 `Modified_by`         varchar(50) NOT NULL ,
 `Modified_date`       date NOT NULL ,

PRIMARY KEY (`Discount_id`)
);






-- ************************************** `Assessment Questions Information`

CREATE TABLE `Assessment Questions Information`
(
 `Question_id`     int unsigned NOT NULL AUTO_INCREMENT ,
 `Assessment_id`   int NOT NULL ,
 `Question_number` int NOT NULL ,
 `Question`        varchar(255) NOT NULL ,
 `Created_by`      varchar(50) NOT NULL ,
 `Created_date`    date NOT NULL ,
 `Modified_by`     varchar(50) NOT NULL ,
 `Modified_date`   date NOT NULL ,

PRIMARY KEY (`Question_id`)
);






-- ************************************** `Assessment Q_A Information`

CREATE TABLE `Assessment Q_A Information`
(
 `Answer_id`     int unsigned NOT NULL AUTO_INCREMENT ,
 `Question_id`   int NOT NULL ,
 `Answer_number` smallint NOT NULL ,
 `Answer`        varchar(255) NOT NULL ,
 `Created_by`    varchar(50) NOT NULL ,
 `Created_date`  date NOT NULL ,
 `Modified_by`   varchar(50) NOT NULL ,
 `Modified_date` date NOT NULL ,

PRIMARY KEY (`Answer_id`)
);






-- ************************************** `Assessment Information`

CREATE TABLE `Assessment Information`
(
 `Assessment_id`   int unsigned NOT NULL AUTO_INCREMENT ,
 `Accessment_name` varchar(50) NOT NULL ,
 `Subject`         varchar(20) NOT NULL ,
 `Grade_level`     char NOT NULL ,
 `Created_by`      varchar(50) NOT NULL ,
 `Created_date`    date NOT NULL ,
 `Modified_by`     varchar(50) NOT NULL ,
 `Modified_date`   date NOT NULL ,

PRIMARY KEY (`Assessment_id`)
);






-- ************************************** `Users_Franchisees Information`

CREATE TABLE `Users_Franchisees Information`
(
 `Users_Franchisees_id` int unsigned NOT NULL AUTO_INCREMENT ,
 `Franchisee_id`        int unsigned NOT NULL ,
 `User_id`              int unsigned NOT NULL ,

PRIMARY KEY (`Users_Franchisees_id`, `Franchisee_id`, `User_id`),
KEY `fkIdx_124` (`Franchisee_id`),
CONSTRAINT `FK_124` FOREIGN KEY `fkIdx_124` (`Franchisee_id`) REFERENCES `Franchisee Information` (`Franchisee_id`),
KEY `fkIdx_202` (`User_id`),
CONSTRAINT `FK_202` FOREIGN KEY `fkIdx_202` (`User_id`) REFERENCES `Users` (`User_id`)
);






-- ************************************** `Enrollment Plans Time`

CREATE TABLE `Enrollment Plans Time`
(
 `Enrollment_plans_time_id` int unsigned NOT NULL AUTO_INCREMENT ,
 `Start_time`               time NOT NULL ,
 `Day`                      varchar(10) NOT NULL ,
 `Created_by`               varchar(50) NOT NULL ,
 `Created_date`             date NOT NULL ,
 `Modified_by`              varchar(50) NOT NULL ,
 `Modified_date`            date NOT NULL ,
 `Enrollment_plans_id`      int unsigned NOT NULL ,

PRIMARY KEY (`Enrollment_plans_time_id`, `Enrollment_plans_id`),
KEY `fkIdx_179` (`Enrollment_plans_id`),
CONSTRAINT `FK_179` FOREIGN KEY `fkIdx_179` (`Enrollment_plans_id`) REFERENCES `Enrollment Plans Information` (`Enrollment_plans_id`)
);






-- ************************************** `Centers_clone`

CREATE TABLE `Centers_clone`
(
 `Center_id`                  int unsigned NOT NULL AUTO_INCREMENT ,
 `Franchisee_id`              int unsigned NOT NULL ,
 `Center_name`                varchar(50) NOT NULL ,
 `Entity_Name`                varchar(50) NOT NULL ,
 `Center_picture`             blob NOT NULL ,
 `Open_date`                  date NOT NULL ,
 `Email_address`              varchar(150) NOT NULL ,
 `Center_phone_number`        varchar(20) NOT NULL ,
 `Mobile`                     varchar(20) NOT NULL ,
 `Main_contact_mobile_number` varchar(20) NOT NULL ,
 `Address_street`             varchar(100) NOT NULL ,
 `Address_city`               varchar(20) NOT NULL ,
 `Address_state`              varchar(20) NOT NULL ,
 `Address_zip_code`           varchar(20) NOT NULL ,
 `Address_country`            varchar(20) NOT NULL ,
 `Country_locate`             varchar(20) NOT NULL ,
 `Language`                   varchar(20) NOT NULL ,
 `Data_pattern`               varchar(12) NOT NULL ,
 `Time_format`                varchar(12) NOT NULL ,
 `Tima_zone`                  varchar(30) NOT NULL ,
 `Created_by`                 varchar(50) NOT NULL ,
 `Created_date`               date NOT NULL ,
 `Modified_by`                varchar(50) NOT NULL ,
 `Modified_date`              date NOT NULL ,

PRIMARY KEY (`Center_id`),
KEY `fkIdx_113` (`Franchisee_id`),
CONSTRAINT `FK_113` FOREIGN KEY `fkIdx_113` (`Franchisee_id`) REFERENCES `Franchisee Information` (`Franchisee_id`)
);






-- ************************************** `Centers`

CREATE TABLE `Centers`
(
 `Center_id`                  int unsigned NOT NULL AUTO_INCREMENT ,
 `Franchisee_id`              int unsigned NOT NULL ,
 `Center_name`                varchar(50) NOT NULL ,
 `Entity_Name`                varchar(50) NOT NULL ,
 `Center_picture`             blob NOT NULL ,
 `Open_date`                  date NOT NULL ,
 `Email_address`              varchar(150) NOT NULL ,
 `Center_phone_number`        varchar(20) NOT NULL ,
 `Mobile`                     varchar(20) NOT NULL ,
 `Main_contact_mobile_number` varchar(20) NOT NULL ,
 `Address_street`             varchar(100) NOT NULL ,
 `Address_city`               varchar(20) NOT NULL ,
 `Address_state`              varchar(20) NOT NULL ,
 `Address_zip_code`           varchar(20) NOT NULL ,
 `Address_country`            varchar(20) NOT NULL ,
 `Country_locate`             varchar(20) NOT NULL ,
 `Language`                   varchar(20) NOT NULL ,
 `Data_pattern`               varchar(12) NOT NULL ,
 `Time_format`                varchar(12) NOT NULL ,
 `Tima_zone`                  varchar(30) NOT NULL ,
 `Created_by`                 varchar(50) NOT NULL ,
 `Created_date`               date NOT NULL ,
 `Modified_by`                varchar(50) NOT NULL ,
 `Modified_date`              date NOT NULL ,

PRIMARY KEY (`Center_id`),
KEY `fkIdx_113` (`Franchisee_id`),
CONSTRAINT `FK_113` FOREIGN KEY `fkIdx_113` (`Franchisee_id`) REFERENCES `Franchisee Information` (`Franchisee_id`)
);






-- ************************************** `Users_Centers Information`

CREATE TABLE `Users_Centers Information`
(
 `User_Center_id` int unsigned NOT NULL AUTO_INCREMENT ,
 `Center_id`      int unsigned NOT NULL ,
 `User_id`        int unsigned NOT NULL ,

PRIMARY KEY (`User_Center_id`, `Center_id`, `User_id`),
KEY `fkIdx_151` (`Center_id`),
CONSTRAINT `FK_151` FOREIGN KEY `fkIdx_151` (`Center_id`) REFERENCES `Centers` (`Center_id`),
KEY `fkIdx_195` (`User_id`),
CONSTRAINT `FK_195` FOREIGN KEY `fkIdx_195` (`User_id`) REFERENCES `Users` (`User_id`)
);






-- ************************************** `Lead Information`

CREATE TABLE `Lead Information`
(
 `Lead_id`                       int unsigned NOT NULL AUTO_INCREMENT ,
 `Center_id`                     int unsigned NOT NULL ,
 `First_name`                    varchar(50) NOT NULL ,
 `Last_name`                     varchar(50) NOT NULL ,
 `Email_address`                 varchar(150) NOT NULL ,
 `Phone`                         varchar(20) NOT NULL ,
 `Mobile`                        varchar(20) NOT NULL ,
 `Relation_to_student`           varchar(20) NOT NULL ,
 `Zip_code`                      varchar(20) NOT NULL ,
 `Student_first_name`            varchar(50) NOT NULL ,
 `Student_last_name`             varchar(50) NOT NULL ,
 `School`                        varchar(50) NOT NULL ,
 `Student_grade`                 char NOT NULL ,
 `Regular_enrichment_program`    boolean NOT NULL ,
 `Camps`                         boolean NOT NULL ,
 `After_school_programs`         boolean NOT NULL ,
 `Home_schooled_programs`        boolean NOT NULL ,
 `Birthday_party`                boolean NOT NULL ,
 `Biology_tutoring`              boolean NOT NULL ,
 `Chemistry_tutoring`            boolean NOT NULL ,
 `Physics_tutoring`              boolean NOT NULL ,
 `Computer_programming_tutoring` boolean NOT NULL ,
 `How_hear_about_us`             varchar(50) NOT NULL ,
 `Additional_comments`           varchar(255) NOT NULL ,
 `Created_by`                    varchar(50) NOT NULL ,
 `Created_date`                  date NOT NULL ,
 `Modified_by`                   varchar(50) NOT NULL ,
 `Modified_date`                 date NOT NULL ,
 `Lead_source_id`                int NOT NULL ,

PRIMARY KEY (`Lead_id`, `Center_id`, `Lead_source_id`),
KEY `fkIdx_135` (`Center_id`),
CONSTRAINT `FK_135` FOREIGN KEY `fkIdx_135` (`Center_id`) REFERENCES `Centers` (`Center_id`),
KEY `fkIdx_139` (`Lead_source_id`),
CONSTRAINT `FK_139` FOREIGN KEY `fkIdx_139` (`Lead_source_id`) REFERENCES `Lead Source` (`Lead_source_id`)
);






-- ************************************** `Family Account`

CREATE TABLE `Family Account`
(
 `Family_account_id` int unsigned NOT NULL AUTO_INCREMENT ,
 `Active`            boolean NOT NULL ,
 `Created_by`        varchar(50) NOT NULL ,
 `Created_date`      date NOT NULL ,
 `Modified_by`       varchar(50) NOT NULL ,
 `Modified_date`     date NOT NULL ,
 `Center_id`         int unsigned NOT NULL ,

PRIMARY KEY (`Family_account_id`, `Center_id`),
KEY `fkIdx_205` (`Center_id`),
CONSTRAINT `FK_205` FOREIGN KEY `fkIdx_205` (`Center_id`) REFERENCES `Centers` (`Center_id`)
);






-- ************************************** `Student Information`

CREATE TABLE `Student Information`
(
 `Student_id`            int unsigned NOT NULL AUTO_INCREMENT ,
 `Family_account_id`     int unsigned NOT NULL ,
 `Center_id`             int unsigned NOT NULL ,
 `Center_id_1`           int unsigned NOT NULL ,
 `First_name`            varchar(50) NOT NULL ,
 `Last_name`             varchar(50) NOT NULL ,
 `Photo_release`         blob NOT NULL ,
 `DOB`                   date NOT NULL ,
 `Gender`                char(6) NOT NULL ,
 `Student_grade`         char NOT NULL ,
 `School`                varchar(100) NOT NULL ,
 `Learning_disabilities` varchar(150) NOT NULL ,
 `medical_conditions`    varchar(150) NOT NULL ,
 `student_experience`    varchar(50) NOT NULL ,
 `Enrollment_status`     varchar(2) NOT NULL ,
 `Created_by`            varchar(50) NOT NULL ,
 `Created_date`          date NOT NULL ,
 `Modified_by`           varchar(50) NOT NULL ,
 `Modified_date`         date NOT NULL ,

PRIMARY KEY (`Student_id`, `Family_account_id`, `Center_id`, `Center_id_1`),
KEY `fkIdx_142` (`Family_account_id`, `Center_id`),
CONSTRAINT `FK_142` FOREIGN KEY `fkIdx_142` (`Family_account_id`, `Center_id`) REFERENCES `Family Account` (`Family_account_id`, `Center_id`),
KEY `fkIdx_153` (`Center_id_1`),
CONSTRAINT `FK_153` FOREIGN KEY `fkIdx_153` (`Center_id_1`) REFERENCES `Centers` (`Center_id`)
);






-- ************************************** `Parent Information`

CREATE TABLE `Parent Information`
(
 `Parent_id`         int unsigned NOT NULL AUTO_INCREMENT ,
 `Family_account_id` int unsigned NOT NULL ,
 `Center_id`         int unsigned NOT NULL ,
 `First_name`        varchar(50) NOT NULL ,
 `Last_name`         varchar(50) NOT NULL ,
 `Gender`            char(6) NOT NULL ,
 `Email_address`     varchar(150) NOT NULL ,
 `Email_opt_out`     varchar(150) NOT NULL ,
 `Mobile`            varchar(20) NOT NULL ,
 `Other_phone`       varchar(20) NOT NULL ,
 `Address_street`    varchar(100) NOT NULL ,
 `Address_city`      varchar(20) NOT NULL ,
 `Address_state`     varchar(20) NOT NULL ,
 `Address_zip_code`  varchar(20) NOT NULL ,
 `Address_country`   varchar(20) NOT NULL ,
 `Created_by`        varchar(50) NOT NULL ,
 `Created_date`      date NOT NULL ,
 `Modified_by`       varchar(50) NOT NULL ,
 `Modified_date`     date NOT NULL ,
 `Lead_source_id`    int NOT NULL ,

PRIMARY KEY (`Parent_id`, `Family_account_id`, `Center_id`),
KEY `fkIdx_136` (`Family_account_id`, `Center_id`),
CONSTRAINT `FK_136` FOREIGN KEY `fkIdx_136` (`Family_account_id`, `Center_id`) REFERENCES `Family Account` (`Family_account_id`, `Center_id`),
KEY `fkIdx_145` (`Lead_source_id`),
CONSTRAINT `FK_145` FOREIGN KEY `fkIdx_145` (`Lead_source_id`) REFERENCES `Lead Source` (`Lead_source_id`)
);






-- ************************************** `Emergency Contact Information`

CREATE TABLE `Emergency Contact Information`
(
 `Emergency_contact_id` int unsigned NOT NULL AUTO_INCREMENT ,
 `Family_account_id`    int unsigned NOT NULL ,
 `Center_id`            int unsigned NOT NULL ,
 `First_name`           varchar(50) NOT NULL ,
 `Last_name`            varchar(50) NOT NULL ,
 `Email_address`        varchar(150) NOT NULL ,
 `Mobile`               varchar(20) NOT NULL ,
 `Created_by`           varchar(50) NOT NULL ,
 `Created_date`         date NOT NULL ,
 `Modified_by`          varchar(50) NOT NULL ,
 `Modified_date`        date NOT NULL ,

PRIMARY KEY (`Emergency_contact_id`, `Family_account_id`, `Center_id`),
KEY `fkIdx_156` (`Family_account_id`, `Center_id`),
CONSTRAINT `FK_156` FOREIGN KEY `fkIdx_156` (`Family_account_id`, `Center_id`) REFERENCES `Family Account` (`Family_account_id`, `Center_id`)
);






-- ************************************** `Student Enrollment Information`

CREATE TABLE `Student Enrollment Information`
(
 `Enrollment_id`       int unsigned NOT NULL AUTO_INCREMENT ,
 `Student_id`          int unsigned NOT NULL ,
 `Family_account_id`   int unsigned NOT NULL ,
 `Center_id`           int unsigned NOT NULL ,
 `Enrollment_plans_id` int unsigned NOT NULL ,
 `Center_id_1`         int unsigned NOT NULL ,
 `Enrollment_stats`    boolean NOT NULL ,
 `Created_by`          varchar(50) NOT NULL ,
 `Created_date`        date NOT NULL ,
 `Modified_by`         varchar(50) NOT NULL ,
 `Modified_date`       date NOT NULL ,

PRIMARY KEY (`Enrollment_id`, `Student_id`, `Family_account_id`, `Center_id`, `Enrollment_plans_id`, `Center_id_1`),
KEY `fkIdx_159` (`Student_id`, `Family_account_id`, `Center_id`, `Center_id_1`),
CONSTRAINT `FK_159` FOREIGN KEY `fkIdx_159` (`Student_id`, `Family_account_id`, `Center_id`, `Center_id_1`) REFERENCES `Student Information` (`Student_id`, `Family_account_id`, `Center_id`, `Center_id_1`),
KEY `fkIdx_182` (`Enrollment_plans_id`),
CONSTRAINT `FK_182` FOREIGN KEY `fkIdx_182` (`Enrollment_plans_id`) REFERENCES `Enrollment Plans Information` (`Enrollment_plans_id`)
);






-- ************************************** `Student Enrollment Schedule`

CREATE TABLE `Student Enrollment Schedule`
(
 `Enrollment_schedule_id` int unsigned NOT NULL AUTO_INCREMENT ,
 `Enrollment_id`          int unsigned NOT NULL ,
 `Student_id_1`           int unsigned NOT NULL ,
 `Family_account_id`      int unsigned NOT NULL ,
 `Student_id`             int unsigned NOT NULL ,
 `Center_id`              int unsigned NOT NULL ,
 `Enrollment_plans_id`    int unsigned NOT NULL ,
 `Center_id_1`            int unsigned NOT NULL ,
 `Center_id_1_1`          int unsigned NOT NULL ,
 `Family_account_id_1`    int unsigned NOT NULL ,
 `Day`                    varchar(10) NOT NULL ,
 `Start_time`             time NOT NULL ,
 `Created_by`             varchar(50) NOT NULL ,
 `Created_date`           date NOT NULL ,
 `Modified_by`            varchar(50) NOT NULL ,
 `Modified_date`          date NOT NULL ,

PRIMARY KEY (`Enrollment_schedule_id`, `Enrollment_id`, `Student_id_1`, `Family_account_id`, `Student_id`, `Center_id`, `Enrollment_plans_id`, `Center_id_1`, `Center_id_1_1`, `Family_account_id_1`),
KEY `fkIdx_169` (`Enrollment_id`, `Student_id_1`, `Family_account_id`, `Center_id`, `Enrollment_plans_id`, `Center_id_1`),
CONSTRAINT `FK_169` FOREIGN KEY `fkIdx_169` (`Enrollment_id`, `Student_id_1`, `Family_account_id`, `Center_id`, `Enrollment_plans_id`, `Center_id_1`) REFERENCES `Student Enrollment Information` (`Enrollment_id`, `Student_id`, `Family_account_id`, `Center_id`, `Enrollment_plans_id`, `Center_id_1`),
KEY `fkIdx_175` (`Student_id`, `Family_account_id_1`, `Center_id_1_1`, `Center_id_1`),
CONSTRAINT `FK_175` FOREIGN KEY `fkIdx_175` (`Student_id`, `Family_account_id_1`, `Center_id_1_1`, `Center_id_1`) REFERENCES `Student Information` (`Student_id`, `Family_account_id`, `Center_id`, `Center_id_1`)
);






-- ************************************** `Student Enrollment Attendance`

CREATE TABLE `Student Enrollment Attendance`
(
 `Student_Enrollment_Attendance_id` int NOT NULL ,
 `Student_id`                       int unsigned NOT NULL ,
 `Family_account_id`                int unsigned NOT NULL ,
 `Center_id`                        int unsigned NOT NULL ,
 `Enrollment_id`                    int unsigned NOT NULL ,
 `Enrollment_plans_id`              int unsigned NOT NULL ,
 `Center_id_1`                      int unsigned NOT NULL ,
 `Center_id_1_1`                    int unsigned NOT NULL ,
 `Family_account_id_1`              int unsigned NOT NULL ,
 `Student_id_1`                     int unsigned NOT NULL ,
 `Day`                              varchar(10) NOT NULL ,
 `Time`                             time NOT NULL ,
 `Created_by`                       varchar(50) NOT NULL ,
 `Created_date`                     date NOT NULL ,
 `Modified_by`                      varchar(50) NOT NULL ,
 `Modified_date`                    date NOT NULL ,

PRIMARY KEY (`Student_Enrollment_Attendance_id`, `Student_id`, `Family_account_id`, `Center_id`, `Enrollment_id`, `Enrollment_plans_id`, `Center_id_1`, `Center_id_1_1`, `Family_account_id_1`, `Student_id_1`),
KEY `fkIdx_164` (`Student_id_1`, `Family_account_id_1`, `Center_id_1_1`, `Center_id_1`),
CONSTRAINT `FK_164` FOREIGN KEY `fkIdx_164` (`Student_id_1`, `Family_account_id_1`, `Center_id_1_1`, `Center_id_1`) REFERENCES `Student Information` (`Student_id`, `Family_account_id`, `Center_id`, `Center_id_1`),
KEY `fkIdx_186` (`Enrollment_id`, `Student_id`, `Family_account_id`, `Center_id`, `Enrollment_plans_id`, `Center_id_1`),
CONSTRAINT `FK_186` FOREIGN KEY `fkIdx_186` (`Enrollment_id`, `Student_id`, `Family_account_id`, `Center_id`, `Enrollment_plans_id`, `Center_id_1`) REFERENCES `Student Enrollment Information` (`Enrollment_id`, `Student_id`, `Family_account_id`, `Center_id`, `Enrollment_plans_id`, `Center_id_1`)
);





