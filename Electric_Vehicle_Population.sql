Enter password: ********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 11
Server version: 8.0.40 MySQL Community Server - GPL

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+-----------------------------+
| Database                    |
+-----------------------------+
| electric_vehicle_population |
| information_schema          |
| mehsar                      |
| mysql                       |
| performance_schema          |
| sys                         |
+-----------------------------+
6 rows in set (0.00 sec)

mysql> use electric_vehicle_population;
Database changed
mysql> CREATE TABLE ElectricVehicleData (
    ->     VIN_1_10 VARCHAR(10) PRIMARY KEY,
    ->     County VARCHAR(100),
    ->     City VARCHAR(100),
    ->     State VARCHAR(50),
    ->     Postal_Code VARCHAR(10),
    ->     Model_Year INT,
    ->     Make VARCHAR(50),
    ->     Model VARCHAR(100),
    ->     Electric_Vehicle_Type VARCHAR(100),
    ->     CAFV_Eligibility VARCHAR(100),
    ->     Electric_Range INT,
    ->     Base_MSRP DECIMAL(10, 2),
    ->     Legislative_District VARCHAR(50),
    ->     DOL_Vehicle_ID VARCHAR(50),
    ->     Vehicle_Location VARCHAR(255),
    ->     Electric_Utility VARCHAR(100),
    ->     Census_Tract_2020 VARCHAR(50)
    -> );
Query OK, 0 rows affected (0.07 sec)

mysql> desc electricvehicledata;
+-----------------------+---------------+------+-----+---------+-------+
| Field                 | Type          | Null | Key | Default | Extra |
+-----------------------+---------------+------+-----+---------+-------+
| VIN_1_10              | varchar(10)   | NO   | PRI | NULL    |       |
| County                | varchar(100)  | YES  |     | NULL    |       |
| City                  | varchar(100)  | YES  |     | NULL    |       |
| State                 | varchar(50)   | YES  |     | NULL    |       |
| Postal_Code           | varchar(10)   | YES  |     | NULL    |       |
| Model_Year            | int           | YES  |     | NULL    |       |
| Make                  | varchar(50)   | YES  |     | NULL    |       |
| Model                 | varchar(100)  | YES  |     | NULL    |       |
| Electric_Vehicle_Type | varchar(100)  | YES  |     | NULL    |       |
| CAFV_Eligibility      | varchar(100)  | YES  |     | NULL    |       |
| Electric_Range        | int           | YES  |     | NULL    |       |
| Base_MSRP             | decimal(10,2) | YES  |     | NULL    |       |
| Legislative_District  | varchar(50)   | YES  |     | NULL    |       |
| DOL_Vehicle_ID        | varchar(50)   | YES  |     | NULL    |       |
| Vehicle_Location      | varchar(255)  | YES  |     | NULL    |       |
| Electric_Utility      | varchar(100)  | YES  |     | NULL    |       |
| Census_Tract_2020     | varchar(50)   | YES  |     | NULL    |       |
+-----------------------+---------------+------+-----+---------+-------+
17 rows in set (0.00 sec)

mysql> INSERT INTO ElectricVehicleData (
    ->     VIN_1_10, County, City, State, Postal_Code, Model_Year, Make, Model,
    ->     Electric_Vehicle_Type, CAFV_Eligibility, Electric_Range,
    ->     Base_MSRP, Legislative_District, DOL_Vehicle_ID, Vehicle_Location,
    ->     Electric_Utility, Census_Tract_2020
    -> )
    -> VALUES
    -> (
    ->     '5YJSA1E22K', 'King', 'Seattle', 'WA', '98112', 2019, 'TESLA', 'MODEL S',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 270,
    ->     0.00, '43', '202233958', 'POINT (-122.300312 47.629782)',
    ->     'CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)', '53033006500'
    -> );
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ElectricVehicleData (
    ->     VIN_1_10, County, City, State, Postal_Code, Model_Year, Make, Model,
    ->     Electric_Vehicle_Type, CAFV_Eligibility, Electric_Range,
    ->     Base_MSRP, Legislative_District, DOL_Vehicle_ID, Vehicle_Location,
    ->     Electric_Utility, Census_Tract_2020
    -> )
    -> VALUES
    -> ('3MW39FS05R', 'Yakima', 'Zillah', 'WA', '98953', 2024, 'BMW', '330E',
    ->     'Plug-in Hybrid Electric Vehicle (PHEV)', 'Not eligible due to low battery range', 20,
    ->     0.00, '15', '264425178', 'POINT (-120.2658133 46.4063477)',
    ->     'PACIFICORP', '53077002201'),
    ->
    -> ('1N4AZ0CP0F', 'King', 'Kent', 'WA', '98031', 2015, 'NISSAN', 'LEAF',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 84,
    ->     0.00, '11', '114962025', 'POINT (-122.201564 47.402358)',
    ->     'PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA)', '53033029306'),
    ->
    -> ('5YJSA1H20F', 'Snohomish', 'Bothell', 'WA', '98012', 2015, 'TESLA', 'MODEL S',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 208,
    ->     0.00, '1', '232724670', 'POINT (-122.206146 47.839957)',
    ->     'PUGET SOUND ENERGY INC', '53061052107'),
    ->
    -> ('JTMAB3FV1N', 'Yakima', 'Yakima', 'WA', '98908', 2022, 'TOYOTA', 'RAV4 PRIME',
    ->     'Plug-in Hybrid Electric Vehicle (PHEV)', 'Clean Alternative Fuel Vehicle Eligible', 42,
    ->     0.00, '14', '221023589', 'POINT (-120.611068 46.596645)',
    ->     'PACIFICORP', '53077000902'),
    ->
    -> ('5YJ3E1EB6K', 'King', 'Redmond', 'WA', '98052', 2019, 'TESLA', 'MODEL 3',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 220,
    ->     0.00, '48', '296777442', 'POINT (-122.1207376 47.6705374)',
    ->     'PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA)', '53033022606'),
    ->
    -> ('5YJ3E1EB0J', 'Thurston', 'Yelm', 'WA', '98597', 2018, 'TESLA', 'MODEL 3',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 215,
    ->     0.00, '2', '311913577', 'POINT (-122.5715761 46.9095798)',
    ->     'PUGET SOUND ENERGY INC', '53067012422'),
    ->
    -> ('3FA6P0SU8D', 'Kitsap', 'Poulsbo', 'WA', '98370', 2013, 'FORD', 'FUSION',
    ->     'Plug-in Hybrid Electric Vehicle (PHEV)', 'Not eligible due to low battery range', 19,
    ->     0.00, '23', '136752115', 'POINT (-122.6368884 47.7469547)',
    ->     'PUGET SOUND ENERGY INC', '53035090400'),
    ->
    -> ('5YJSA1E21H', 'King', 'Redmond', 'WA', '98052', 2017, 'TESLA', 'MODEL S',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 210,
    ->     0.00, '45', '241259105', 'POINT (-122.1207376 47.6705374)',
    ->     'PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA)', '53033032321');
Query OK, 8 rows affected (0.01 sec)
Records: 8  Duplicates: 0  Warnings: 0

mysql> INSERT INTO ElectricVehicleData (
    ->     VIN_1_10, County, City, State, Postal_Code, Model_Year, Make, Model,
    ->     Electric_Vehicle_Type, CAFV_Eligibility, Electric_Range,
    ->     Base_MSRP, Legislative_District, DOL_Vehicle_ID, Vehicle_Location,
    ->     Electric_Utility, Census_Tract_2020
    -> )
    -> VALUES
    -> ('5YJ3E1EA4J', 'Snohomish', 'Bothell', 'WA', '98012', 2018, 'TESLA', 'MODEL 3',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 215,
    ->     0.00, '1', '118035830', 'POINT (-122.206146 47.839957)',
    ->     'PUGET SOUND ENERGY INC', '53061052009'),
    ->
    -> ('5YJSA1E22H', 'Thurston', 'Olympia', 'WA', '98501', 2017, 'TESLA', 'MODEL S',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 210,
    ->     0.00, '22', '105283265', 'POINT (-122.8733203 47.0133209)',
    ->     'PUGET SOUND ENERGY INC', '53067010100'),
    ->
    -> ('JTDKARFP9K', 'Kitsap', 'Poulsbo', 'WA', '98370', 2019, 'TOYOTA', 'PRIUS PRIME',
    ->     'Plug-in Hybrid Electric Vehicle (PHEV)', 'Not eligible due to low battery range', 25,
    ->     0.00, '23', '340612723', 'POINT (-122.6368884 47.7469547)',
    ->     'PUGET SOUND ENERGY INC', '53035090502'),
    ->
    -> ('1N4AZ0CP1F', 'Kitsap', 'Port Orchard', 'WA', '98367', 2015, 'NISSAN', 'LEAF',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 84,
    ->     0.00, '35', '162186916', 'POINT (-122.6530052 47.4739066)',
    ->     'PUGET SOUND ENERGY INC', '53035092901'),
    ->
    -> ('5YJ3E1EA4L', 'King', 'Kent', 'WA', '98030', 2020, 'TESLA', 'MODEL 3',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 266,
    ->     0.00, '47', '3417746', 'POINT (-122.1994204 47.3741045)',
    ->     'PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA)', '53033029507'),
    ->
    -> ('3C3CFFGE2F', 'King', 'Shoreline', 'WA', '98155', 2015, 'FIAT', '500',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 87,
    ->     0.00, '32', '148799822', 'POINT (-122.301507 47.761784)',
    ->     'CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)', '53033020500'),
    ->
    -> ('2C4RC1N76L', 'Thurston', 'Tumwater', 'WA', '98512', 2020, 'CHRYSLER', 'PACIFICA',
    ->     'Plug-in Hybrid Electric Vehicle (PHEV)', 'Clean Alternative Fuel Vehicle Eligible', 32,
    ->     0.00, '22', '123132670', 'POINT (-122.957046 46.991391)',
    ->     'PUGET SOUND ENERGY INC', '53067010910'),
    ->
    -> ('5YJ3E1EA7L', 'Snohomish', 'Bothell', 'WA', '98012', 2020, 'TESLA', 'MODEL 3',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 266,
    ->     0.00, '21', '127118694', 'POINT (-122.206146 47.839957)',
    ->     'PUGET SOUND ENERGY INC', '53061051922'),
    ->
    -> ('WBY73AW09P', 'Snohomish', 'Snohomish', 'WA', '98296', 2023, 'BMW', 'I4',
    ->     'Battery Electric Vehicle (BEV)', 'Eligibility unknown as battery range has not been researched', 0,
    ->     0.00, '1', '221273244', 'POINT (-122.121841 47.841036)',
    ->     'PUGET SOUND ENERGY INC', '53061052114'),
    ->
    -> ('1N4BZ0CP8H', 'King', 'Bellevue', 'WA', '98007', 2017, 'NISSAN', 'LEAF',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 107,
    ->     0.00, '48', '211610367', 'POINT (-122.1436732 47.6157551)',
    ->     'PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA)', '53033023201');
Query OK, 10 rows affected (0.01 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> INSERT INTO ElectricVehicleData (
    ->     VIN_1_10, County, City, State, Postal_Code, Model_Year, Make, Model,
    ->     Electric_Vehicle_Type, CAFV_Eligibility, Electric_Range,
    ->     Base_MSRP, Legislative_District, DOL_Vehicle_ID, Vehicle_Location,
    ->     Electric_Utility, Census_Tract_2020
    -> )
    -> VALUES
    -> ('5YJYGDEE9L', 'King', 'Bothell', 'WA', '98011', 2020, 'TESLA', 'MODEL Y',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 291,
    ->     0.00, '1', '116957438', 'POINT (-122.201408 47.754528)',
    ->     'PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA)', '53033021905'),
    ->
    -> ('5YJ3E1EB5K', 'Kitsap', 'Poulsbo', 'WA', '98370', 2019, 'TESLA', 'MODEL 3',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 220,
    ->     0.00, '23', '144826083', 'POINT (-122.6368884 47.7469547)',
    ->     'PUGET SOUND ENERGY INC', '53035091100'),
    ->
    -> ('JTDKN3DP2C', 'Kitsap', 'Poulsbo', 'WA', '98370', 2012, 'TOYOTA', 'PRIUS PLUG-IN',
    ->     'Plug-in Hybrid Electric Vehicle (PHEV)', 'Not eligible due to low battery range', 6,
    ->     0.00, '23', '171200151', 'POINT (-122.6368884 47.7469547)',
    ->     'PUGET SOUND ENERGY INC', '53035090502'),
    ->
    -> ('WAUTPBFF3G', 'Thurston', 'Olympia', 'WA', '98513', 2016, 'AUDI', 'A3',
    ->     'Plug-in Hybrid Electric Vehicle (PHEV)', 'Not eligible due to low battery range', 16,
    ->     0.00, '2', '169279939', 'POINT (-122.7654699 46.9970624)',
    ->     'PUGET SOUND ENERGY INC', '53067012320'),
    ->
    -> ('5YJ3E1EB0K', 'Yakima', 'Yakima', 'WA', '98902', 2019, 'TESLA', 'MODEL 3',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 220,
    ->     0.00, '15', '476706555', 'POINT (-120.530331 46.59534)',
    ->     'PACIFICORP', '53077001100'),
    ->
    -> ('WBY8P2C51K', 'King', 'Seattle', 'WA', '98112', 2019, 'BMW', 'I3',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 153,
    ->     0.00, '43', '324226689', 'POINT (-122.300312 47.629782)',
    ->     'CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)', '53033006300'),
    ->
    -> ('5UXTA6C02N', 'Kitsap', 'Bainbridge Island', 'WA', '98110', 2022, 'BMW', 'X5',
    ->     'Plug-in Hybrid Electric Vehicle (PHEV)', 'Clean Alternative Fuel Vehicle Eligible', 30,
    ->     0.00, '23', '209660433', 'POINT (-122.5305071 47.6400595)',
    ->     'PUGET SOUND ENERGY INC', '53035091002'),
    ->
    -> ('1N4AZ0CP9F', 'King', 'Seattle', 'WA', '98115', 2015, 'NISSAN', 'LEAF',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 84,
    ->     0.00, '46', '139798599', 'POINT (-122.3008235 47.6862671)',
    ->     'CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)', '53033002000'),
    ->
    -> ('YV4H60CF8R', 'Snohomish', 'Stanwood', 'WA', '98292', 2024, 'VOLVO', 'XC90',
    ->     'Plug-in Hybrid Electric Vehicle (PHEV)', 'Clean Alternative Fuel Vehicle Eligible', 32,
    ->     0.00, '10', '258940244', 'POINT (-122.326873 48.2144825)',
    ->     'PUGET SOUND ENERGY INC', '53061053202'),
    ->
    -> ('5YJ3E1EA0L', 'Snohomish', 'Bothell', 'WA', '98012', 2020, 'TESLA', 'MODEL 3',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 266,
    ->     0.00, '1', '2183366', 'POINT (-122.206146 47.839957)',
    ->     'PUGET SOUND ENERGY INC', '53061052107');
Query OK, 10 rows affected (0.01 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> INSERT INTO ElectricVehicleData (
    ->     VIN_1_10, County, City, State, Postal_Code, Model_Year, Make, Model,
    ->     Electric_Vehicle_Type, CAFV_Eligibility, Electric_Range,
    ->     Base_MSRP, Legislative_District, DOL_Vehicle_ID, Vehicle_Location,
    ->     Electric_Utility, Census_Tract_2020
    -> )
    -> VALUES
    -> ('WP0AC2Y15L', 'King', 'Seattle', 'WA', '98102', 2020, 'PORSCHE', 'TAYCAN',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 192,
    ->     0.00, '43', '263047151', 'POINT (-122.3212726 47.6296532)',
    ->     'CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)', '53033006100'),
    ->
    -> ('1C4JJXR6XN', 'Yakima', 'Yakima', 'WA', '98902', 2022, 'JEEP', 'WRANGLER',
    ->     'Plug-in Hybrid Electric Vehicle (PHEV)', 'Not eligible due to low battery range', 22,
    ->     0.00, '15', '203574969', 'POINT (-120.530331 46.59534)',
    ->     'PACIFICORP', '53077001100'),
    ->
    -> ('5UXTA6C00M', 'Thurston', 'Olympia', 'WA', '98501', 2021, 'BMW', 'X5',
    ->     'Plug-in Hybrid Electric Vehicle (PHEV)', 'Clean Alternative Fuel Vehicle Eligible', 30,
    ->     0.00, '22', '166391123', 'POINT (-122.8733203 47.0133209)',
    ->     'PUGET SOUND ENERGY INC', '53067010700'),
    ->
    -> ('1N4AZ0CP7E', 'Kitsap', 'Bremerton', 'WA', '98311', 2014, 'NISSAN', 'LEAF',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 84,
    ->     0.00, '23', '198137824', 'POINT (-122.636245 47.62806)',
    ->     'PUGET SOUND ENERGY INC', '53035091500'),
    ->
    -> ('5YJ3E1EB1P', 'Thurston', 'Olympia', 'WA', '98501', 2023, 'TESLA', 'MODEL 3',
    ->     'Battery Electric Vehicle (BEV)', 'Eligibility unknown as battery range has not been researched', 0,
    ->     0.00, '22', '224408579', 'POINT (-122.8733203 47.0133209)',
    ->     'PUGET SOUND ENERGY INC', '53067010700'),
    ->
    -> ('KM8K53AG2L', 'Kitsap', 'Port Orchard', 'WA', '98366', 2020, 'HYUNDAI', 'KONA',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 258,
    ->     0.00, '26', '131203187', 'POINT (-122.6064912 47.5236145)',
    ->     'PUGET SOUND ENERGY INC', '53035092300'),
    ->
    -> ('5YJ3E1EBXN', 'Thurston', 'Olympia', 'WA', '98502', 2022, 'TESLA', 'MODEL 3',
    ->     'Battery Electric Vehicle (BEV)', 'Eligibility unknown as battery range has not been researched', 0,
    ->     0.00, '22', '252723138', 'POINT (-122.943445 47.059252)',
    ->     'PUGET SOUND ENERGY INC', '53067010600'),
    ->
    -> ('YV4BR0DM8N', 'Kitsap', 'Poulsbo', 'WA', '98370', 2022, 'VOLVO', 'XC60',
    ->     'Plug-in Hybrid Electric Vehicle (PHEV)', 'Not eligible due to low battery range', 18,
    ->     0.00, '23', '182754120', 'POINT (-122.6368884 47.7469547)',
    ->     'PUGET SOUND ENERGY INC', '53035090501'),
    ->
    -> ('5YJXCAE22L', 'Snohomish', 'Bothell', 'WA', '98021', 2020, 'TESLA', 'MODEL X',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 293,
    ->     0.00, '1', '209983889', 'POINT (-122.2107298 47.7977268)',
    ->     'PUGET SOUND ENERGY INC', '53061051937'),
    ->
    -> ('5YJ3E1EA6N', 'Thurston', 'Olympia', 'WA', '98501', 2022, 'TESLA', 'MODEL 3',
    ->     'Battery Electric Vehicle (BEV)', 'Eligibility unknown as battery range has not been researched', 0,
    ->     0.00, '22', '200610329', 'POINT (-122.8733203 47.0133209)',
    ->     'PUGET SOUND ENERGY INC', '53067010700');
Query OK, 10 rows affected (0.01 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> INSERT INTO ElectricVehicleData (
    ->     VIN_1_10, County, City, State, Postal_Code, Model_Year, Make, Model,
    ->     Electric_Vehicle_Type, CAFV_Eligibility, Electric_Range,
    ->     Base_MSRP, Legislative_District, DOL_Vehicle_ID, Vehicle_Location,
    ->     Electric_Utility, Census_Tract_2020
    -> )
    -> VALUES
    -> ('5YJSA1H16F', 'Snohomish', 'Lynnwood', 'WA', '98087', 2015, 'TESLA', 'MODEL S',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 208,
    ->     0.00, '21', '5999080', 'POINT (-122.27336 47.861417)',
    ->     'PUGET SOUND ENERGY INC', '53061041812'),
    ->
    -> ('5YJ3E1EB3K', 'Snohomish', 'Lynnwood', 'WA', '98087', 2019, 'TESLA', 'MODEL 3',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 220,
    ->     0.00, '21', '478641796', 'POINT (-122.27336 47.861417)',
    ->     'PUGET SOUND ENERGY INC', '53061041703'),
    ->
    -> ('1FTVW1EV9P', 'Yakima', 'Yakima', 'WA', '98901', 2023, 'FORD', 'F-150',
    ->     'Battery Electric Vehicle (BEV)', 'Eligibility unknown as battery range has not been researched', 0,
    ->     0.00, '15', '230080511', 'POINT (-120.4688751 46.6046178)',
    ->     'PACIFICORP', '53077001602'),
    ->
    -> ('3C3CFFGEXF', 'Thurston', 'Olympia', 'WA', '98506', 2015, 'FIAT', '500',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 87,
    ->     0.00, '22', '350197970', 'POINT (-122.86491 47.07503)',
    ->     'PUGET SOUND ENERGY INC', '53067010200'),
    ->
    -> ('3C3CFFGE7F', 'Thurston', 'Olympia', 'WA', '98512', 2015, 'FIAT', '500',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 87,
    ->     0.00, '35', '285123072', 'POINT (-122.957046 46.991391)',
    ->     'PUGET SOUND ENERGY INC', '53067012730'),
    ->
    -> ('WVGDMPE24M', 'Yakima', 'Yakima', 'WA', '98903', 2021, 'VOLKSWAGEN', 'ID.4',
    ->     'Battery Electric Vehicle (BEV)', 'Eligibility unknown as battery range has not been researched', 0,
    ->     0.00, '14', '151371216', 'POINT (-120.5807155 46.5654909)',
    ->     'PACIFICORP', '53077002803'),
    ->
    -> ('WBY1Z6C39H', 'King', 'Renton', 'WA', '98056', 2017, 'BMW', 'I3',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 81,
    ->     0.00, '11', '144155868', 'POINT (-122.1819876 47.5098889)',
    ->     'PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA)', '53033025401'),
    ->
    -> ('1FT6W1EVXN', 'Thurston', 'Olympia', 'WA', '98512', 2022, 'FORD', 'F-150',
    ->     'Battery Electric Vehicle (BEV)', 'Eligibility unknown as battery range has not been researched', 0,
    ->     0.00, '35', '229848937', 'POINT (-122.957046 46.991391)',
    ->     'PUGET SOUND ENERGY INC', '53067011901'),
    ->
    -> ('1G1RB6E4XF', 'Snohomish', 'Monroe', 'WA', '98272', 2015, 'CHEVROLET', 'VOLT',
    ->     'Plug-in Hybrid Electric Vehicle (PHEV)', 'Clean Alternative Fuel Vehicle Eligible', 38,
    ->     0.00, '39', '160637802', 'POINT (-121.968385 47.854897)',
    ->     'PUGET SOUND ENERGY INC', '53061052208'),
    ->
    -> ('5YJSA1E26G', 'Snohomish', 'Lake Stevens', 'WA', '98258', 2016, 'TESLA', 'MODEL S',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 210,
    ->     0.00, '44', '143610449', 'POINT (-122.0816912 48.0122934)',
    ->     'PUGET SOUND ENERGY INC', '53061052505');
Query OK, 10 rows affected (0.01 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> INSERT INTO ElectricVehicleData (
    ->     VIN_1_10, County, City, State, Postal_Code, Model_Year, Make, Model,
    ->     Electric_Vehicle_Type, CAFV_Eligibility, Electric_Range,
    ->     Base_MSRP, Legislative_District, DOL_Vehicle_ID, Vehicle_Location,
    ->     Electric_Utility, Census_Tract_2020
    -> )
    -> VALUES
    -> ('JTMFB3FV6R', 'Whitman', 'Pullman', 'WA', '99163', 2024, 'TOYOTA', 'RAV4 PRIME',
    ->     'Plug-in Hybrid Electric Vehicle (PHEV)', 'Clean Alternative Fuel Vehicle Eligible', 42,
    ->     0.00, '9', '265023391', 'POINT (-117.1770648 46.7329687)',
    ->     'AVISTA CORP', '53075000400'),
    ->
    -> ('5YJSA1E27K', 'Yakima', 'Yakima', 'WA', '98902', 2019, 'TESLA', 'MODEL S',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 270,
    ->     0.00, '15', '474882180', 'POINT (-120.530331 46.59534)',
    ->     'PACIFICORP', '53077000301'),
    ->
    -> ('5YJ3E1EB2J', 'King', 'Seattle', 'WA', '98134', 2018, 'TESLA', 'MODEL 3',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 215,
    ->     0.00, '11', '224574647', 'POINT (-122.3290729 47.5773571)',
    ->     'CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)', '53033009300'),
    ->
    -> ('5YJ3E1EB8J', 'King', 'Medina', 'WA', '98039', 2018, 'TESLA', 'MODEL 3',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 215,
    ->     0.00, '48', '166370725', 'POINT (-122.2363532 47.621118)',
    ->     'PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA)', '53033024200'),
    ->
    -> ('KNDPUCAFXP', 'Yakima', 'Yakima', 'WA', '98902', 2023, 'KIA', 'SPORTAGE',
    ->     'Plug-in Hybrid Electric Vehicle (PHEV)', 'Clean Alternative Fuel Vehicle Eligible', 34,
    ->     0.00, '14', '220481411', 'POINT (-120.530331 46.59534)',
    ->     'PACIFICORP', '53077000500'),
    ->
    -> ('1N4BZ0CP2H', 'King', 'Kent', 'WA', '98042', 2017, 'NISSAN', 'LEAF',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 107,
    ->     0.00, '47', '174497767', 'POINT (-122.1145138 47.3581107)',
    ->     'PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA)', '53033031704'),
    ->
    -> ('5UXTA6C08P', 'Snohomish', 'Bothell', 'WA', '98021', 2023, 'BMW', 'X5',
    ->     'Plug-in Hybrid Electric Vehicle (PHEV)', 'Clean Alternative Fuel Vehicle Eligible', 30,
    ->     0.00, '1', '214796326', 'POINT (-122.2107298 47.7977268)',
    ->     'PUGET SOUND ENERGY INC', '53061051926'),
    ->
    -> ('WAUTPBFF6H', 'Kitsap', 'Bainbridge Island', 'WA', '98110', 2017, 'AUDI', 'A3',
    ->     'Plug-in Hybrid Electric Vehicle (PHEV)', 'Not eligible due to low battery range', 16,
    ->     0.00, '23', '113291041', 'POINT (-122.5305071 47.6400595)',
    ->     'PUGET SOUND ENERGY INC', '53035090901'),
    ->
    -> ('1N4AZ0CP5D', 'Thurston', 'Olympia', 'WA', '98502', 2013, 'NISSAN', 'LEAF',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 75,
    ->     0.00, '22', '246351927', 'POINT (-122.943445 47.059252)',
    ->     'PUGET SOUND ENERGY INC', '53067010600'),
    ->
    -> ('5YJSA1E2XJ', 'Snohomish', 'Bothell', 'WA', '98012', 2018, 'TESLA', 'MODEL S',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 249,
    ->     0.00, '1', '274533472', 'POINT (-122.206146 47.839957)',
    ->     'PUGET SOUND ENERGY INC', '53061052010');
Query OK, 10 rows affected (0.01 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> INSERT INTO ElectricVehicleData (
    ->     VIN_1_10, County, City, State, Postal_Code, Model_Year, Make, Model,
    ->     Electric_Vehicle_Type, CAFV_Eligibility, Electric_Range,
    ->     Base_MSRP, Legislative_District, DOL_Vehicle_ID, Vehicle_Location,
    ->     Electric_Utility, Census_Tract_2020
    -> )
    -> VALUES
    -> ('1N4BZ1CP3K', 'Yakima', 'Yakima', 'WA', '98902', 2019, 'NISSAN', 'LEAF',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 150,
    ->     0.00, '14', '9074544', 'POINT (-120.530331 46.59534)',
    ->     'PACIFICORP', '53077000800'),
    ->
    -> ('5UXTA6C07M', 'King', 'Seattle', 'WA', '98116', 2021, 'BMW', 'X5',
    ->     'Plug-in Hybrid Electric Vehicle (PHEV)', 'Clean Alternative Fuel Vehicle Eligible', 30,
    ->     0.00, '34', '241528850', 'POINT (-122.395519 47.572137)',
    ->     'CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)', '53033009702'),
    ->
    -> ('WDC0G5EB9K', 'Yakima', 'Yakima', 'WA', '98902', 2019, 'MERCEDES-BENZ', 'GLC-CLASS',
    ->     'Plug-in Hybrid Electric Vehicle (PHEV)', 'Not eligible due to low battery range', 10,
    ->     0.00, '14', '202971828', 'POINT (-120.530331 46.59534)',
    ->     'PACIFICORP', '53077000800'),
    ->
    -> ('5YJXCBE24L', 'Thurston', 'Olympia', 'WA', '98502', 2020, 'TESLA', 'MODEL X',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 293,
    ->     0.00, '35', '6411107', 'POINT (-122.943445 47.059252)',
    ->     'PUGET SOUND ENERGY INC', '53067011902'),
    ->
    -> ('7SAYGDEE2P', 'Kitsap', 'Bremerton', 'WA', '98312', 2023, 'TESLA', 'MODEL Y',
    ->     'Battery Electric Vehicle (BEV)', 'Eligibility unknown as battery range has not been researched', 0,
    ->     0.00, '35', '260336170', 'POINT (-122.6961203 47.5759584)',
    ->     'PUGET SOUND ENERGY INC', '53035080600'),
    ->
    -> ('5YJ3E1EA3P', 'Kitsap', 'Bremerton', 'WA', '98310', 2023, 'TESLA', 'MODEL 3',
    ->     'Battery Electric Vehicle (BEV)', 'Eligibility unknown as battery range has not been researched', 0,
    ->     0.00, '23', '230680012', 'POINT (-122.6231895 47.5930874)',
    ->     'PUGET SOUND ENERGY INC', '53035080102'),
    ->
    -> ('1N4AZ0CP2D', 'Yakima', 'Yakima', 'WA', '98903', 2013, 'NISSAN', 'LEAF',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 75,
    ->     0.00, '14', '150126840', 'POINT (-120.5807155 46.5654909)',
    ->     'PACIFICORP', '53077003003'),
    ->
    -> ('5YJYGDEF8M', 'Snohomish', 'Bothell', 'WA', '98012', 2021, 'TESLA', 'MODEL Y',
    ->     'Battery Electric Vehicle (BEV)', 'Eligibility unknown as battery range has not been researched', 0,
    ->     0.00, '1', '262832153', 'POINT (-122.206146 47.839957)',
    ->     'PUGET SOUND ENERGY INC', '53061052009'),
    ->
    -> ('KNDRMDLH5P', 'Thurston', 'Olympia', 'WA', '98501', 2023, 'KIA', 'SORENTO',
    ->     'Plug-in Hybrid Electric Vehicle (PHEV)', 'Clean Alternative Fuel Vehicle Eligible', 32,
    ->     0.00, '35', '255390327', 'POINT (-122.8733203 47.0133209)',
    ->     'PUGET SOUND ENERGY INC', '53067011721'),
    ->
    -> ('5UXTA6C0XP', 'Snohomish', 'Bothell', 'WA', '98012', 2023, 'BMW', 'X5',
    ->     'Plug-in Hybrid Electric Vehicle (PHEV)', 'Clean Alternative Fuel Vehicle Eligible', 30,
    ->     0.00, '44', '228271802', 'POINT (-122.206146 47.839957)',
    ->     'PUGET SOUND ENERGY INC', '53061052007');
Query OK, 10 rows affected (0.01 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> INSERT INTO ElectricVehicleData (
    ->     VIN_1_10, County, City, State, Postal_Code, Model_Year, Make, Model,
    ->     Electric_Vehicle_Type, CAFV_Eligibility, Electric_Range,
    ->     Base_MSRP, Legislative_District, DOL_Vehicle_ID, Vehicle_Location,
    ->     Electric_Utility, Census_Tract_2020
    -> )
    -> VALUES
    -> ('5YJ3E1EB2L', 'Thurston', 'Olympia', 'WA', '98501', 2020, 'TESLA', 'MODEL 3',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 322,
    ->     0.00, '35', '128798624', 'POINT (-122.8733203 47.0133209)',
    ->     'PUGET SOUND ENERGY INC', '53067011722'),
    ->
    -> ('2T3YL4DVXE', 'Thurston', 'Olympia', 'WA', '98506', 2014, 'TOYOTA', 'RAV4',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 103,
    ->     0.00, '22', '350029942', 'POINT (-122.86491 47.07503)',
    ->     'PUGET SOUND ENERGY INC', '53067012100'),
    ->
    -> ('5YJ3E1EB8L', 'King', 'Seattle', 'WA', '98115', 2020, 'TESLA', 'MODEL 3',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 322,
    ->     0.00, '43', '126031790', 'POINT (-122.3008235 47.6862671)',
    ->     'CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)', '53033002600'),
    ->
    -> ('5YJYGDEE3L', 'Snohomish', 'Mukilteo', 'WA', '98275', 2020, 'TESLA', 'MODEL Y',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 291,
    ->     0.00, '21', '112524030', 'POINT (-122.29943 47.912654)',
    ->     'PUGET SOUND ENERGY INC', '53061042005'),
    ->
    -> ('3C3CFFGE9G', 'King', 'Seattle', 'WA', '98118', 2016, 'FIAT', '500',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 84,
    ->     0.00, '37', '242678908', 'POINT (-122.2753318 47.5411053)',
    ->     'CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)', '53033010200'),
    ->
    -> ('1G1RC6S53H', 'Kitsap', 'Suquamish', 'WA', '98392', 2017, 'CHEVROLET', 'VOLT',
    ->     'Plug-in Hybrid Electric Vehicle (PHEV)', 'Clean Alternative Fuel Vehicle Eligible', 53,
    ->     0.00, '23', '132703973', 'POINT (-122.5591128 47.7346457)',
    ->     'PUGET SOUND ENERGY INC', '53035940100'),
    ->
    -> ('YV4BR0DL8N', 'Thurston', 'Olympia', 'WA', '98502', 2022, 'VOLVO', 'XC60',
    ->     'Plug-in Hybrid Electric Vehicle (PHEV)', 'Not eligible due to low battery range', 18,
    ->     0.00, '22', '192758177', 'POINT (-122.943445 47.059252)',
    ->     'PUGET SOUND ENERGY INC', '53067010600'),
    ->
    -> ('JN1AZ0CP8C', 'Kitsap', 'Silverdale', 'WA', '98383', 2012, 'NISSAN', 'LEAF',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 73,
    ->     0.00, '23', '220447041', 'POINT (-122.7035285 47.660204)',
    ->     'PUGET SOUND ENERGY INC', '53035091201'),
    ->
    -> ('1N4AZ1CP0K', 'Thurston', 'Olympia', 'WA', '98516', 2019, 'NISSAN', 'LEAF',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 150,
    ->     0.00, '22', '476232410', 'POINT (-122.78083 47.083975)',
    ->     'PUGET SOUND ENERGY INC', '53067012225'),
    ->
    -> ('5YJ3E1EB4K', 'Yakima', 'Yakima', 'WA', '98908', 2019, 'TESLA', 'MODEL 3',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 220,
    ->     0.00, '14', '339439474', 'POINT (-120.611068 46.596645)',
    ->     'PACIFICORP', '53077000401');
Query OK, 10 rows affected (0.01 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> INSERT INTO ElectricVehicleData (
    ->     VIN_1_10, County, City, State, Postal_Code, Model_Year, Make, Model,
    ->     Electric_Vehicle_Type, CAFV_Eligibility, Electric_Range,
    ->     Base_MSRP, Legislative_District, DOL_Vehicle_ID, Vehicle_Location,
    ->     Electric_Utility, Census_Tract_2020
    -> )
    -> VALUES
    -> ('5YJXCBE21H', 'Kitsap', 'Port Orchard', 'WA', '98367', 2017, 'TESLA', 'MODEL X',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 200,
    ->     0.00, '26', '172534043', 'POINT (-122.6530052 47.4739066)',
    ->     'PUGET SOUND ENERGY INC', '53035092701'),
    ->
    -> ('1N4AZ1CPXK', 'Kitsap', 'Kingston', 'WA', '98346', 2019, 'NISSAN', 'LEAF',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 150,
    ->     0.00, '23', '107149388', 'POINT (-122.5178351 47.7981436)',
    ->     'PUGET SOUND ENERGY INC', '53035090102'),
    ->
    -> ('1N4AZ1CP4K', 'Kitsap', 'Bremerton', 'WA', '98312', 2019, 'NISSAN', 'LEAF',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 150,
    ->     0.00, '35', '477065543', 'POINT (-122.6961203 47.5759584)',
    ->     'PUGET SOUND ENERGY INC', '53035092000'),
    ->
    -> ('WMZYU7C51K', 'Yakima', 'Yakima', 'WA', '98902', 2019, 'MINI', 'COUNTRYMAN',
    ->     'Plug-in Hybrid Electric Vehicle (PHEV)', 'Not eligible due to low battery range', 12,
    ->     36900.00, '14', '146830148', 'POINT (-120.530331 46.59534)',
    ->     'PACIFICORP', '53077001000'),
    ->
    -> ('1FADP5CU6D', 'Kitsap', 'Bremerton', 'WA', '98310', 2013, 'FORD', 'C-MAX',
    ->     'Plug-in Hybrid Electric Vehicle (PHEV)', 'Not eligible due to low battery range', 19,
    ->     0.00, '23', '107184339', 'POINT (-122.6231895 47.5930874)',
    ->     'PUGET SOUND ENERGY INC', '53035080102'),
    ->
    -> ('5YJ3E1EA7J', 'King', 'Seattle', 'WA', '98112', 2018, 'TESLA', 'MODEL 3',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 215,
    ->     0.00, '43', '318326844', 'POINT (-122.300312 47.629782)',
    ->     'CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)', '53033006200'),
    ->
    -> ('5YJ3E1EBXM', 'Yakima', 'Moxee', 'WA', '98936', 2021, 'TESLA', 'MODEL 3',
    ->     'Battery Electric Vehicle (BEV)', 'Eligibility unknown as battery range has not been researched', 0,
    ->     0.00, '15', '156750023', 'POINT (-120.3552229 46.550869)',
    ->     'PACIFICORP', '53077001702'),
    ->
    -> ('1N4BZ0CP7H', 'King', 'Redmond', 'WA', '98052', 2017, 'NISSAN', 'LEAF',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 107,
    ->     0.00, '48', '104846059', 'POINT (-122.1207376 47.6705374)',
    ->     'PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA)', '53033022803'),
    ->
    -> ('WMW13DJ0XN', 'Kitsap', 'Bremerton', 'WA', '98312', 2022, 'MINI', 'HARDTOP',
    ->     'Battery Electric Vehicle (BEV)', 'Eligibility unknown as battery range has not been researched', 0,
    ->     0.00, '35', '182621386', 'POINT (-122.6961203 47.5759584)',
    ->     'PUGET SOUND ENERGY INC', '53035092000'),
    ->
    -> ('WA1VAAGE8K', 'Kitsap', 'Port Orchard', 'WA', '98367', 2019, 'AUDI', 'E-TRON',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 204,
    ->     0.00, '26', '263134035', 'POINT (-122.6530052 47.4739066)',
    ->     'PUGET SOUND ENERGY INC', '53035092704');
Query OK, 10 rows affected (0.01 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> INSERT INTO ElectricVehicleData (
    ->     VIN_1_10, County, City, State, Postal_Code, Model_Year, Make, Model,
    ->     Electric_Vehicle_Type, CAFV_Eligibility, Electric_Range,
    ->     Base_MSRP, Legislative_District, DOL_Vehicle_ID, Vehicle_Location,
    ->     Electric_Utility, Census_Tract_2020
    -> )
    -> VALUES
    -> ('1C4JJXR67P', 'Thurston', 'Lacey', 'WA', '98513', 2023, 'JEEP', 'WRANGLER',
    ->     'Plug-in Hybrid Electric Vehicle (PHEV)', 'Not eligible due to low battery range', 21,
    ->     0.00, '22', '237679039', 'POINT (-122.7654699 46.9970624)',
    ->     'PUGET SOUND ENERGY INC', '53067011623'),
    ->
    -> ('1G1FW6S05H', 'Yakima', 'Yakima', 'WA', '98901', 2017, 'CHEVROLET', 'BOLT EV',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 238,
    ->     0.00, '15', '137600732', 'POINT (-120.4688751 46.6046178)',
    ->     'PACIFICORP', '53077001602'),
    ->
    -> ('JN1AZ0CP3B', 'Walla Walla', 'Walla Walla', 'WA', '99362', 2011, 'NISSAN', 'LEAF',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 73,
    ->     0.00, '16', '136226352', 'POINT (-118.3377489 46.0625736)',
    ->     'PACIFICORP', '53071920200'),
    ->
    -> ('1N4AZ0CP9E', 'Walla Walla', 'Walla Walla', 'WA', '99362', 2014, 'NISSAN', 'LEAF',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 84,
    ->     0.00, '16', '225971658', 'POINT (-118.3377489 46.0625736)',
    ->     'PACIFICORP', '53071920901'),
    ->
    -> ('3C3CFFGE3H', 'King', 'Vashon', 'WA', '98070', 2017, 'FIAT', '500',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 84,
    ->     0.00, '34', '111677037', 'POINT (-122.466938 47.429244)',
    ->     'PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA)', '53033027701'),
    ->
    -> ('JTDKN3DP5D', 'Kittitas', 'Cle Elum', 'WA', '98922', 2013, 'TOYOTA', 'PRIUS PLUG-IN',
    ->     'Plug-in Hybrid Electric Vehicle (PHEV)', 'Not eligible due to low battery range', 6,
    ->     0.00, '13', '260551063', 'POINT (-120.9347811 47.1944758)',
    ->     'PUGET SOUND ENERGY INC', '53037975102'),
    ->
    -> ('JA4J24A55L', 'Snohomish', 'Everett', 'WA', '98208', 2020, 'MITSUBISHI', 'OUTLANDER',
    ->     'Plug-in Hybrid Electric Vehicle (PHEV)', 'Not eligible due to low battery range', 22,
    ->     0.00, '44', '106207307', 'POINT (-122.2032349 47.8956271)',
    ->     'PUGET SOUND ENERGY INC', '53061052121'),
    ->
    -> ('KNDRMDLH3N', 'Douglas', 'East Wenatchee', 'WA', '98802', 2022, 'KIA', 'SORENTO',
    ->     'Plug-in Hybrid Electric Vehicle (PHEV)', 'Clean Alternative Fuel Vehicle Eligible', 32,
    ->     0.00, '12', '183095818', 'POINT (-120.2609057 47.4167133)',
    ->     'PUD NO 1 OF DOUGLAS COUNTY', '53017950500'),
    ->
    -> ('5YJXCAE21K', 'Snohomish', 'Everett', 'WA', '98204', 2019, 'TESLA', 'MODEL X',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 289,
    ->     0.00, '21', '260985287', 'POINT (-122.2507211 47.8976713)',
    ->     'PUGET SOUND ENERGY INC', '53061041812'),
    ->
    -> ('5UXKT0C50G', 'King', 'Kent', 'WA', '98031', 2016, 'BMW', 'X5',
    ->     'Plug-in Hybrid Electric Vehicle (PHEV)', 'Not eligible due to low battery range', 14,
    ->     0.00, '47', '120864250', 'POINT (-122.201564 47.402358)',
    ->     'PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA)', '53033029504');
Query OK, 10 rows affected (0.01 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> INSERT INTO ElectricVehicleData (
    ->     VIN_1_10, County, City, State, Postal_Code, Model_Year, Make, Model,
    ->     Electric_Vehicle_Type, CAFV_Eligibility, Electric_Range,
    ->     Base_MSRP, Legislative_District, DOL_Vehicle_ID, Vehicle_Location,
    ->     Electric_Utility, Census_Tract_2020
    -> )
    -> VALUES
    -> ('5YJYGDEF3L', 'Snohomish', 'Woodway', 'WA', '98020', 2020, 'TESLA', 'MODEL Y',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 291,
    ->     0.00, '32', '111588669', 'POINT (-122.3757836 47.800042)',
    ->     'PUGET SOUND ENERGY INC', '53061050600'),
    ->
    -> ('JTDKARFP5H', 'Grant', 'Quincy', 'WA', '98848', 2017, 'TOYOTA', 'PRIUS PRIME',
    ->     'Plug-in Hybrid Electric Vehicle (PHEV)', 'Not eligible due to low battery range', 25,
    ->     0.00, '13', '205581071', 'POINT (-119.8619179 47.2248994)',
    ->     'PUD NO 2 OF GRANT COUNTY', '53025010500'),
    ->
    -> ('1G1RB6E42E', 'Chelan', 'Wenatchee', 'WA', '98801', 2014, 'CHEVROLET', 'VOLT',
    ->     'Plug-in Hybrid Electric Vehicle (PHEV)', 'Clean Alternative Fuel Vehicle Eligible', 38,
    ->     0.00, '12', '145810759', 'POINT (-120.3283376 47.4280056)',
    ->     'PUD NO 1 OF CHELAN COUNTY', '53007961001'),
    ->
    -> ('1N4AZ1CP8J', 'Snohomish', 'Lynnwood', 'WA', '98087', 2018, 'NISSAN', 'LEAF',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 151,
    ->     0.00, '21', '312849638', 'POINT (-122.27336 47.861417)',
    ->     'PUGET SOUND ENERGY INC', '53061051804'),
    ->
    -> ('5YJ3E1EAXJ', 'Snohomish', 'Lynnwood', 'WA', '98087', 2018, 'TESLA', 'MODEL 3',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 215,
    ->     0.00, '21', '4986026', 'POINT (-122.27336 47.861417)',
    ->     'PUGET SOUND ENERGY INC', '53061051803'),
    ->
    -> ('1N4BZ1CP9L', 'Kitsap', 'Bainbridge Island', 'WA', '98110', 2020, 'NISSAN', 'LEAF',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 215,
    ->     0.00, '23', '103453059', 'POINT (-122.5305071 47.6400595)',
    ->     'PUGET SOUND ENERGY INC', '53035090700'),
    ->
    -> ('5YJ3E1EA1J', 'King', 'Redmond', 'WA', '98053', 2018, 'TESLA', 'MODEL 3',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 215,
    ->     0.00, '45', '474443847', 'POINT (-122.030684 47.669552)',
    ->     'PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA)', '53033032333'),
    ->
    -> ('1FADP5CU3F', 'Snohomish', 'Everett', 'WA', '98208', 2015, 'FORD', 'C-MAX',
    ->     'Plug-in Hybrid Electric Vehicle (PHEV)', 'Not eligible due to low battery range', 19,
    ->     0.00, '44', '132854627', 'POINT (-122.2032349 47.8956271)',
    ->     'PUGET SOUND ENERGY INC', '53061041701'),
    ->
    -> ('WBY1Z2C54F', 'Grant', 'Moses Lake', 'WA', '98837', 2015, 'BMW', 'I3',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 81,
    ->     0.00, '13', '260665807', 'POINT (-119.2958738 47.1384772)',
    ->     'PUD NO 2 OF GRANT COUNTY', '53025011102'),
    ->
    -> ('JTDKAMFP8N', 'Whitman', 'Pullman', 'WA', '99163', 2022, 'TOYOTA', 'PRIUS PRIME',
    ->     'Plug-in Hybrid Electric Vehicle (PHEV)', 'Not eligible due to low battery range', 25,
    ->     0.00, '9', '227151375', 'POINT (-117.1770648 46.7329687)',
    ->     'AVISTA CORP', '53075000202');
Query OK, 10 rows affected (0.01 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> INSERT INTO ElectricVehicleData (
    ->     VIN_1_10, County, City, State, Postal_Code, Model_Year, Make, Model,
    ->     Electric_Vehicle_Type, CAFV_Eligibility, Electric_Range,
    ->     Base_MSRP, Legislative_District, DOL_Vehicle_ID, Vehicle_Location,
    ->     Electric_Utility, Census_Tract_2020
    -> )
    -> VALUES
    -> ('5YJ3E1EAXK', 'Snohomish', 'Everett', 'WA', '98208', 2019, 'TESLA', 'MODEL 3',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 220,
    ->     0.00, '44', '478398959', 'POINT (-122.2032349 47.8956271)',
    ->     'PUGET SOUND ENERGY INC', '53061041704'),
    ->
    -> ('5YJ3E1EA2J', 'Kitsap', 'Port Orchard', 'WA', '98366', 2018, 'TESLA', 'MODEL 3',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 215,
    ->     0.00, '26', '280785123', 'POINT (-122.6064912 47.5236145)',
    ->     'PUGET SOUND ENERGY INC', '53035092400'),
    ->
    -> ('5UXTS1C02M', 'King', 'Bellevue', 'WA', '98005', 2021, 'BMW', 'X3',
    ->     'Plug-in Hybrid Electric Vehicle (PHEV)', 'Not eligible due to low battery range', 17,
    ->     0.00, '48', '132708943', 'POINT (-122.167394 47.614119)',
    ->     'PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA)', '53033023603'),
    ->
    -> ('1N4AZ0CP5F', 'Snohomish', 'Everett', 'WA', '98208', 2015, 'NISSAN', 'LEAF',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 84,
    ->     0.00, '44', '139779594', 'POINT (-122.2032349 47.8956271)',
    ->     'PUGET SOUND ENERGY INC', '53061052119'),
    ->
    -> ('5YJ3E1EB9L', 'Snohomish', 'Lake Stevens', 'WA', '98258', 2020, 'TESLA', 'MODEL 3',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 322,
    ->     0.00, '44', '9647074', 'POINT (-122.0816912 48.0122934)',
    ->     'PUGET SOUND ENERGY INC', '53061052605'),
    ->
    -> ('JN1AZ0CP9C', 'Skagit', 'Bow', 'WA', '98232', 2012, 'NISSAN', 'LEAF',
    ->     'Battery Electric Vehicle (BEV)', 'Clean Alternative Fuel Vehicle Eligible', 73,
    ->     0.00, '40', '207825362', 'POINT (-122.4202542 48.5607175)',
    ->     'PUGET SOUND ENERGY INC', '53057950801');
Query OK, 6 rows affected (0.01 sec)
Records: 6  Duplicates: 0  Warnings: 0

mysql> select * from ElectricVehicleData;
+------------+-------------+-------------------+-------+-------------+------------+---------------+---------------+----------------------------------------+--------------------------------------------------------------+----------------+-----------+----------------------+----------------+---------------------------------+-----------------------------------------------+-------------------+
| VIN_1_10   | County      | City              | State | Postal_Code | Model_Year | Make          | Model         | Electric_Vehicle_Type                  | CAFV_Eligibility                                             | Electric_Range | Base_MSRP | Legislative_District | DOL_Vehicle_ID | Vehicle_Location                | Electric_Utility                              | Census_Tract_2020 |
+------------+-------------+-------------------+-------+-------------+------------+---------------+---------------+----------------------------------------+--------------------------------------------------------------+----------------+-----------+----------------------+----------------+---------------------------------+-----------------------------------------------+-------------------+
| 1C4JJXR67P | Thurston    | Lacey             | WA    | 98513       |       2023 | JEEP          | WRANGLER      | Plug-in Hybrid Electric Vehicle (PHEV) | Not eligible due to low battery range                        |             21 |      0.00 | 22                   | 237679039      | POINT (-122.7654699 46.9970624) | PUGET SOUND ENERGY INC                        | 53067011623       |
| 1C4JJXR6XN | Yakima      | Yakima            | WA    | 98902       |       2022 | JEEP          | WRANGLER      | Plug-in Hybrid Electric Vehicle (PHEV) | Not eligible due to low battery range                        |             22 |      0.00 | 15                   | 203574969      | POINT (-120.530331 46.59534)    | PACIFICORP                                    | 53077001100       |
| 1FADP5CU3F | Snohomish   | Everett           | WA    | 98208       |       2015 | FORD          | C-MAX         | Plug-in Hybrid Electric Vehicle (PHEV) | Not eligible due to low battery range                        |             19 |      0.00 | 44                   | 132854627      | POINT (-122.2032349 47.8956271) | PUGET SOUND ENERGY INC                        | 53061041701       |
| 1FADP5CU6D | Kitsap      | Bremerton         | WA    | 98310       |       2013 | FORD          | C-MAX         | Plug-in Hybrid Electric Vehicle (PHEV) | Not eligible due to low battery range                        |             19 |      0.00 | 23                   | 107184339      | POINT (-122.6231895 47.5930874) | PUGET SOUND ENERGY INC                        | 53035080102       |
| 1FT6W1EVXN | Thurston    | Olympia           | WA    | 98512       |       2022 | FORD          | F-150         | Battery Electric Vehicle (BEV)         | Eligibility unknown as battery range has not been researched |              0 |      0.00 | 35                   | 229848937      | POINT (-122.957046 46.991391)   | PUGET SOUND ENERGY INC                        | 53067011901       |
| 1FTVW1EV9P | Yakima      | Yakima            | WA    | 98901       |       2023 | FORD          | F-150         | Battery Electric Vehicle (BEV)         | Eligibility unknown as battery range has not been researched |              0 |      0.00 | 15                   | 230080511      | POINT (-120.4688751 46.6046178) | PACIFICORP                                    | 53077001602       |
| 1G1FW6S05H | Yakima      | Yakima            | WA    | 98901       |       2017 | CHEVROLET     | BOLT EV       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            238 |      0.00 | 15                   | 137600732      | POINT (-120.4688751 46.6046178) | PACIFICORP                                    | 53077001602       |
| 1G1RB6E42E | Chelan      | Wenatchee         | WA    | 98801       |       2014 | CHEVROLET     | VOLT          | Plug-in Hybrid Electric Vehicle (PHEV) | Clean Alternative Fuel Vehicle Eligible                      |             38 |      0.00 | 12                   | 145810759      | POINT (-120.3283376 47.4280056) | PUD NO 1 OF CHELAN COUNTY                     | 53007961001       |
| 1G1RB6E4XF | Snohomish   | Monroe            | WA    | 98272       |       2015 | CHEVROLET     | VOLT          | Plug-in Hybrid Electric Vehicle (PHEV) | Clean Alternative Fuel Vehicle Eligible                      |             38 |      0.00 | 39                   | 160637802      | POINT (-121.968385 47.854897)   | PUGET SOUND ENERGY INC                        | 53061052208       |
| 1G1RC6S53H | Kitsap      | Suquamish         | WA    | 98392       |       2017 | CHEVROLET     | VOLT          | Plug-in Hybrid Electric Vehicle (PHEV) | Clean Alternative Fuel Vehicle Eligible                      |             53 |      0.00 | 23                   | 132703973      | POINT (-122.5591128 47.7346457) | PUGET SOUND ENERGY INC                        | 53035940100       |
| 1N4AZ0CP0F | King        | Kent              | WA    | 98031       |       2015 | NISSAN        | LEAF          | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |             84 |      0.00 | 11                   | 114962025      | POINT (-122.201564 47.402358)   | PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA) | 53033029306       |
| 1N4AZ0CP1F | Kitsap      | Port Orchard      | WA    | 98367       |       2015 | NISSAN        | LEAF          | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |             84 |      0.00 | 35                   | 162186916      | POINT (-122.6530052 47.4739066) | PUGET SOUND ENERGY INC                        | 53035092901       |
| 1N4AZ0CP2D | Yakima      | Yakima            | WA    | 98903       |       2013 | NISSAN        | LEAF          | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |             75 |      0.00 | 14                   | 150126840      | POINT (-120.5807155 46.5654909) | PACIFICORP                                    | 53077003003       |
| 1N4AZ0CP5D | Thurston    | Olympia           | WA    | 98502       |       2013 | NISSAN        | LEAF          | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |             75 |      0.00 | 22                   | 246351927      | POINT (-122.943445 47.059252)   | PUGET SOUND ENERGY INC                        | 53067010600       |
| 1N4AZ0CP5F | Snohomish   | Everett           | WA    | 98208       |       2015 | NISSAN        | LEAF          | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |             84 |      0.00 | 44                   | 139779594      | POINT (-122.2032349 47.8956271) | PUGET SOUND ENERGY INC                        | 53061052119       |
| 1N4AZ0CP7E | Kitsap      | Bremerton         | WA    | 98311       |       2014 | NISSAN        | LEAF          | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |             84 |      0.00 | 23                   | 198137824      | POINT (-122.636245 47.62806)    | PUGET SOUND ENERGY INC                        | 53035091500       |
| 1N4AZ0CP9E | Walla Walla | Walla Walla       | WA    | 99362       |       2014 | NISSAN        | LEAF          | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |             84 |      0.00 | 16                   | 225971658      | POINT (-118.3377489 46.0625736) | PACIFICORP                                    | 53071920901       |
| 1N4AZ0CP9F | King        | Seattle           | WA    | 98115       |       2015 | NISSAN        | LEAF          | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |             84 |      0.00 | 46                   | 139798599      | POINT (-122.3008235 47.6862671) | CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)  | 53033002000       |
| 1N4AZ1CP0K | Thurston    | Olympia           | WA    | 98516       |       2019 | NISSAN        | LEAF          | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            150 |      0.00 | 22                   | 476232410      | POINT (-122.78083 47.083975)    | PUGET SOUND ENERGY INC                        | 53067012225       |
| 1N4AZ1CP4K | Kitsap      | Bremerton         | WA    | 98312       |       2019 | NISSAN        | LEAF          | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            150 |      0.00 | 35                   | 477065543      | POINT (-122.6961203 47.5759584) | PUGET SOUND ENERGY INC                        | 53035092000       |
| 1N4AZ1CP8J | Snohomish   | Lynnwood          | WA    | 98087       |       2018 | NISSAN        | LEAF          | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            151 |      0.00 | 21                   | 312849638      | POINT (-122.27336 47.861417)    | PUGET SOUND ENERGY INC                        | 53061051804       |
| 1N4AZ1CPXK | Kitsap      | Kingston          | WA    | 98346       |       2019 | NISSAN        | LEAF          | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            150 |      0.00 | 23                   | 107149388      | POINT (-122.5178351 47.7981436) | PUGET SOUND ENERGY INC                        | 53035090102       |
| 1N4BZ0CP2H | King        | Kent              | WA    | 98042       |       2017 | NISSAN        | LEAF          | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            107 |      0.00 | 47                   | 174497767      | POINT (-122.1145138 47.3581107) | PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA) | 53033031704       |
| 1N4BZ0CP7H | King        | Redmond           | WA    | 98052       |       2017 | NISSAN        | LEAF          | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            107 |      0.00 | 48                   | 104846059      | POINT (-122.1207376 47.6705374) | PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA) | 53033022803       |
| 1N4BZ0CP8H | King        | Bellevue          | WA    | 98007       |       2017 | NISSAN        | LEAF          | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            107 |      0.00 | 48                   | 211610367      | POINT (-122.1436732 47.6157551) | PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA) | 53033023201       |
| 1N4BZ1CP3K | Yakima      | Yakima            | WA    | 98902       |       2019 | NISSAN        | LEAF          | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            150 |      0.00 | 14                   | 9074544        | POINT (-120.530331 46.59534)    | PACIFICORP                                    | 53077000800       |
| 1N4BZ1CP9L | Kitsap      | Bainbridge Island | WA    | 98110       |       2020 | NISSAN        | LEAF          | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            215 |      0.00 | 23                   | 103453059      | POINT (-122.5305071 47.6400595) | PUGET SOUND ENERGY INC                        | 53035090700       |
| 2C4RC1N76L | Thurston    | Tumwater          | WA    | 98512       |       2020 | CHRYSLER      | PACIFICA      | Plug-in Hybrid Electric Vehicle (PHEV) | Clean Alternative Fuel Vehicle Eligible                      |             32 |      0.00 | 22                   | 123132670      | POINT (-122.957046 46.991391)   | PUGET SOUND ENERGY INC                        | 53067010910       |
| 2T3YL4DVXE | Thurston    | Olympia           | WA    | 98506       |       2014 | TOYOTA        | RAV4          | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            103 |      0.00 | 22                   | 350029942      | POINT (-122.86491 47.07503)     | PUGET SOUND ENERGY INC                        | 53067012100       |
| 3C3CFFGE2F | King        | Shoreline         | WA    | 98155       |       2015 | FIAT          | 500           | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |             87 |      0.00 | 32                   | 148799822      | POINT (-122.301507 47.761784)   | CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)  | 53033020500       |
| 3C3CFFGE3H | King        | Vashon            | WA    | 98070       |       2017 | FIAT          | 500           | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |             84 |      0.00 | 34                   | 111677037      | POINT (-122.466938 47.429244)   | PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA) | 53033027701       |
| 3C3CFFGE7F | Thurston    | Olympia           | WA    | 98512       |       2015 | FIAT          | 500           | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |             87 |      0.00 | 35                   | 285123072      | POINT (-122.957046 46.991391)   | PUGET SOUND ENERGY INC                        | 53067012730       |
| 3C3CFFGE9G | King        | Seattle           | WA    | 98118       |       2016 | FIAT          | 500           | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |             84 |      0.00 | 37                   | 242678908      | POINT (-122.2753318 47.5411053) | CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)  | 53033010200       |
| 3C3CFFGEXF | Thurston    | Olympia           | WA    | 98506       |       2015 | FIAT          | 500           | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |             87 |      0.00 | 22                   | 350197970      | POINT (-122.86491 47.07503)     | PUGET SOUND ENERGY INC                        | 53067010200       |
| 3FA6P0SU8D | Kitsap      | Poulsbo           | WA    | 98370       |       2013 | FORD          | FUSION        | Plug-in Hybrid Electric Vehicle (PHEV) | Not eligible due to low battery range                        |             19 |      0.00 | 23                   | 136752115      | POINT (-122.6368884 47.7469547) | PUGET SOUND ENERGY INC                        | 53035090400       |
| 3MW39FS05R | Yakima      | Zillah            | WA    | 98953       |       2024 | BMW           | 330E          | Plug-in Hybrid Electric Vehicle (PHEV) | Not eligible due to low battery range                        |             20 |      0.00 | 15                   | 264425178      | POINT (-120.2658133 46.4063477) | PACIFICORP                                    | 53077002201       |
| 5UXKT0C50G | King        | Kent              | WA    | 98031       |       2016 | BMW           | X5            | Plug-in Hybrid Electric Vehicle (PHEV) | Not eligible due to low battery range                        |             14 |      0.00 | 47                   | 120864250      | POINT (-122.201564 47.402358)   | PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA) | 53033029504       |
| 5UXTA6C00M | Thurston    | Olympia           | WA    | 98501       |       2021 | BMW           | X5            | Plug-in Hybrid Electric Vehicle (PHEV) | Clean Alternative Fuel Vehicle Eligible                      |             30 |      0.00 | 22                   | 166391123      | POINT (-122.8733203 47.0133209) | PUGET SOUND ENERGY INC                        | 53067010700       |
| 5UXTA6C02N | Kitsap      | Bainbridge Island | WA    | 98110       |       2022 | BMW           | X5            | Plug-in Hybrid Electric Vehicle (PHEV) | Clean Alternative Fuel Vehicle Eligible                      |             30 |      0.00 | 23                   | 209660433      | POINT (-122.5305071 47.6400595) | PUGET SOUND ENERGY INC                        | 53035091002       |
| 5UXTA6C07M | King        | Seattle           | WA    | 98116       |       2021 | BMW           | X5            | Plug-in Hybrid Electric Vehicle (PHEV) | Clean Alternative Fuel Vehicle Eligible                      |             30 |      0.00 | 34                   | 241528850      | POINT (-122.395519 47.572137)   | CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)  | 53033009702       |
| 5UXTA6C08P | Snohomish   | Bothell           | WA    | 98021       |       2023 | BMW           | X5            | Plug-in Hybrid Electric Vehicle (PHEV) | Clean Alternative Fuel Vehicle Eligible                      |             30 |      0.00 | 1                    | 214796326      | POINT (-122.2107298 47.7977268) | PUGET SOUND ENERGY INC                        | 53061051926       |
| 5UXTA6C0XP | Snohomish   | Bothell           | WA    | 98012       |       2023 | BMW           | X5            | Plug-in Hybrid Electric Vehicle (PHEV) | Clean Alternative Fuel Vehicle Eligible                      |             30 |      0.00 | 44                   | 228271802      | POINT (-122.206146 47.839957)   | PUGET SOUND ENERGY INC                        | 53061052007       |
| 5UXTS1C02M | King        | Bellevue          | WA    | 98005       |       2021 | BMW           | X3            | Plug-in Hybrid Electric Vehicle (PHEV) | Not eligible due to low battery range                        |             17 |      0.00 | 48                   | 132708943      | POINT (-122.167394 47.614119)   | PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA) | 53033023603       |
| 5YJ3E1EA0L | Snohomish   | Bothell           | WA    | 98012       |       2020 | TESLA         | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            266 |      0.00 | 1                    | 2183366        | POINT (-122.206146 47.839957)   | PUGET SOUND ENERGY INC                        | 53061052107       |
| 5YJ3E1EA1J | King        | Redmond           | WA    | 98053       |       2018 | TESLA         | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            215 |      0.00 | 45                   | 474443847      | POINT (-122.030684 47.669552)   | PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA) | 53033032333       |
| 5YJ3E1EA2J | Kitsap      | Port Orchard      | WA    | 98366       |       2018 | TESLA         | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            215 |      0.00 | 26                   | 280785123      | POINT (-122.6064912 47.5236145) | PUGET SOUND ENERGY INC                        | 53035092400       |
| 5YJ3E1EA3P | Kitsap      | Bremerton         | WA    | 98310       |       2023 | TESLA         | MODEL 3       | Battery Electric Vehicle (BEV)         | Eligibility unknown as battery range has not been researched |              0 |      0.00 | 23                   | 230680012      | POINT (-122.6231895 47.5930874) | PUGET SOUND ENERGY INC                        | 53035080102       |
| 5YJ3E1EA4J | Snohomish   | Bothell           | WA    | 98012       |       2018 | TESLA         | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            215 |      0.00 | 1                    | 118035830      | POINT (-122.206146 47.839957)   | PUGET SOUND ENERGY INC                        | 53061052009       |
| 5YJ3E1EA4L | King        | Kent              | WA    | 98030       |       2020 | TESLA         | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            266 |      0.00 | 47                   | 3417746        | POINT (-122.1994204 47.3741045) | PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA) | 53033029507       |
| 5YJ3E1EA6N | Thurston    | Olympia           | WA    | 98501       |       2022 | TESLA         | MODEL 3       | Battery Electric Vehicle (BEV)         | Eligibility unknown as battery range has not been researched |              0 |      0.00 | 22                   | 200610329      | POINT (-122.8733203 47.0133209) | PUGET SOUND ENERGY INC                        | 53067010700       |
| 5YJ3E1EA7J | King        | Seattle           | WA    | 98112       |       2018 | TESLA         | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            215 |      0.00 | 43                   | 318326844      | POINT (-122.300312 47.629782)   | CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)  | 53033006200       |
| 5YJ3E1EA7L | Snohomish   | Bothell           | WA    | 98012       |       2020 | TESLA         | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            266 |      0.00 | 21                   | 127118694      | POINT (-122.206146 47.839957)   | PUGET SOUND ENERGY INC                        | 53061051922       |
| 5YJ3E1EAXJ | Snohomish   | Lynnwood          | WA    | 98087       |       2018 | TESLA         | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            215 |      0.00 | 21                   | 4986026        | POINT (-122.27336 47.861417)    | PUGET SOUND ENERGY INC                        | 53061051803       |
| 5YJ3E1EAXK | Snohomish   | Everett           | WA    | 98208       |       2019 | TESLA         | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            220 |      0.00 | 44                   | 478398959      | POINT (-122.2032349 47.8956271) | PUGET SOUND ENERGY INC                        | 53061041704       |
| 5YJ3E1EB0J | Thurston    | Yelm              | WA    | 98597       |       2018 | TESLA         | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            215 |      0.00 | 2                    | 311913577      | POINT (-122.5715761 46.9095798) | PUGET SOUND ENERGY INC                        | 53067012422       |
| 5YJ3E1EB0K | Yakima      | Yakima            | WA    | 98902       |       2019 | TESLA         | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            220 |      0.00 | 15                   | 476706555      | POINT (-120.530331 46.59534)    | PACIFICORP                                    | 53077001100       |
| 5YJ3E1EB1P | Thurston    | Olympia           | WA    | 98501       |       2023 | TESLA         | MODEL 3       | Battery Electric Vehicle (BEV)         | Eligibility unknown as battery range has not been researched |              0 |      0.00 | 22                   | 224408579      | POINT (-122.8733203 47.0133209) | PUGET SOUND ENERGY INC                        | 53067010700       |
| 5YJ3E1EB2J | King        | Seattle           | WA    | 98134       |       2018 | TESLA         | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            215 |      0.00 | 11                   | 224574647      | POINT (-122.3290729 47.5773571) | CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)  | 53033009300       |
| 5YJ3E1EB2L | Thurston    | Olympia           | WA    | 98501       |       2020 | TESLA         | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            322 |      0.00 | 35                   | 128798624      | POINT (-122.8733203 47.0133209) | PUGET SOUND ENERGY INC                        | 53067011722       |
| 5YJ3E1EB3K | Snohomish   | Lynnwood          | WA    | 98087       |       2019 | TESLA         | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            220 |      0.00 | 21                   | 478641796      | POINT (-122.27336 47.861417)    | PUGET SOUND ENERGY INC                        | 53061041703       |
| 5YJ3E1EB4K | Yakima      | Yakima            | WA    | 98908       |       2019 | TESLA         | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            220 |      0.00 | 14                   | 339439474      | POINT (-120.611068 46.596645)   | PACIFICORP                                    | 53077000401       |
| 5YJ3E1EB5K | Kitsap      | Poulsbo           | WA    | 98370       |       2019 | TESLA         | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            220 |      0.00 | 23                   | 144826083      | POINT (-122.6368884 47.7469547) | PUGET SOUND ENERGY INC                        | 53035091100       |
| 5YJ3E1EB6K | King        | Redmond           | WA    | 98052       |       2019 | TESLA         | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            220 |      0.00 | 48                   | 296777442      | POINT (-122.1207376 47.6705374) | PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA) | 53033022606       |
| 5YJ3E1EB8J | King        | Medina            | WA    | 98039       |       2018 | TESLA         | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            215 |      0.00 | 48                   | 166370725      | POINT (-122.2363532 47.621118)  | PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA) | 53033024200       |
| 5YJ3E1EB8L | King        | Seattle           | WA    | 98115       |       2020 | TESLA         | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            322 |      0.00 | 43                   | 126031790      | POINT (-122.3008235 47.6862671) | CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)  | 53033002600       |
| 5YJ3E1EB9L | Snohomish   | Lake Stevens      | WA    | 98258       |       2020 | TESLA         | MODEL 3       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            322 |      0.00 | 44                   | 9647074        | POINT (-122.0816912 48.0122934) | PUGET SOUND ENERGY INC                        | 53061052605       |
| 5YJ3E1EBXM | Yakima      | Moxee             | WA    | 98936       |       2021 | TESLA         | MODEL 3       | Battery Electric Vehicle (BEV)         | Eligibility unknown as battery range has not been researched |              0 |      0.00 | 15                   | 156750023      | POINT (-120.3552229 46.550869)  | PACIFICORP                                    | 53077001702       |
| 5YJ3E1EBXN | Thurston    | Olympia           | WA    | 98502       |       2022 | TESLA         | MODEL 3       | Battery Electric Vehicle (BEV)         | Eligibility unknown as battery range has not been researched |              0 |      0.00 | 22                   | 252723138      | POINT (-122.943445 47.059252)   | PUGET SOUND ENERGY INC                        | 53067010600       |
| 5YJSA1E21H | King        | Redmond           | WA    | 98052       |       2017 | TESLA         | MODEL S       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            210 |      0.00 | 45                   | 241259105      | POINT (-122.1207376 47.6705374) | PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA) | 53033032321       |
| 5YJSA1E22H | Thurston    | Olympia           | WA    | 98501       |       2017 | TESLA         | MODEL S       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            210 |      0.00 | 22                   | 105283265      | POINT (-122.8733203 47.0133209) | PUGET SOUND ENERGY INC                        | 53067010100       |
| 5YJSA1E22K | King        | Seattle           | WA    | 98112       |       2019 | TESLA         | MODEL S       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            270 |      0.00 | 43                   | 202233958      | POINT (-122.300312 47.629782)   | CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)  | 53033006500       |
| 5YJSA1E26G | Snohomish   | Lake Stevens      | WA    | 98258       |       2016 | TESLA         | MODEL S       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            210 |      0.00 | 44                   | 143610449      | POINT (-122.0816912 48.0122934) | PUGET SOUND ENERGY INC                        | 53061052505       |
| 5YJSA1E27K | Yakima      | Yakima            | WA    | 98902       |       2019 | TESLA         | MODEL S       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            270 |      0.00 | 15                   | 474882180      | POINT (-120.530331 46.59534)    | PACIFICORP                                    | 53077000301       |
| 5YJSA1E2XJ | Snohomish   | Bothell           | WA    | 98012       |       2018 | TESLA         | MODEL S       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            249 |      0.00 | 1                    | 274533472      | POINT (-122.206146 47.839957)   | PUGET SOUND ENERGY INC                        | 53061052010       |
| 5YJSA1H16F | Snohomish   | Lynnwood          | WA    | 98087       |       2015 | TESLA         | MODEL S       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            208 |      0.00 | 21                   | 5999080        | POINT (-122.27336 47.861417)    | PUGET SOUND ENERGY INC                        | 53061041812       |
| 5YJSA1H20F | Snohomish   | Bothell           | WA    | 98012       |       2015 | TESLA         | MODEL S       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            208 |      0.00 | 1                    | 232724670      | POINT (-122.206146 47.839957)   | PUGET SOUND ENERGY INC                        | 53061052107       |
| 5YJXCAE21K | Snohomish   | Everett           | WA    | 98204       |       2019 | TESLA         | MODEL X       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            289 |      0.00 | 21                   | 260985287      | POINT (-122.2507211 47.8976713) | PUGET SOUND ENERGY INC                        | 53061041812       |
| 5YJXCAE22L | Snohomish   | Bothell           | WA    | 98021       |       2020 | TESLA         | MODEL X       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            293 |      0.00 | 1                    | 209983889      | POINT (-122.2107298 47.7977268) | PUGET SOUND ENERGY INC                        | 53061051937       |
| 5YJXCBE21H | Kitsap      | Port Orchard      | WA    | 98367       |       2017 | TESLA         | MODEL X       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            200 |      0.00 | 26                   | 172534043      | POINT (-122.6530052 47.4739066) | PUGET SOUND ENERGY INC                        | 53035092701       |
| 5YJXCBE24L | Thurston    | Olympia           | WA    | 98502       |       2020 | TESLA         | MODEL X       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            293 |      0.00 | 35                   | 6411107        | POINT (-122.943445 47.059252)   | PUGET SOUND ENERGY INC                        | 53067011902       |
| 5YJYGDEE3L | Snohomish   | Mukilteo          | WA    | 98275       |       2020 | TESLA         | MODEL Y       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            291 |      0.00 | 21                   | 112524030      | POINT (-122.29943 47.912654)    | PUGET SOUND ENERGY INC                        | 53061042005       |
| 5YJYGDEE9L | King        | Bothell           | WA    | 98011       |       2020 | TESLA         | MODEL Y       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            291 |      0.00 | 1                    | 116957438      | POINT (-122.201408 47.754528)   | PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA) | 53033021905       |
| 5YJYGDEF3L | Snohomish   | Woodway           | WA    | 98020       |       2020 | TESLA         | MODEL Y       | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            291 |      0.00 | 32                   | 111588669      | POINT (-122.3757836 47.800042)  | PUGET SOUND ENERGY INC                        | 53061050600       |
| 5YJYGDEF8M | Snohomish   | Bothell           | WA    | 98012       |       2021 | TESLA         | MODEL Y       | Battery Electric Vehicle (BEV)         | Eligibility unknown as battery range has not been researched |              0 |      0.00 | 1                    | 262832153      | POINT (-122.206146 47.839957)   | PUGET SOUND ENERGY INC                        | 53061052009       |
| 7SAYGDEE2P | Kitsap      | Bremerton         | WA    | 98312       |       2023 | TESLA         | MODEL Y       | Battery Electric Vehicle (BEV)         | Eligibility unknown as battery range has not been researched |              0 |      0.00 | 35                   | 260336170      | POINT (-122.6961203 47.5759584) | PUGET SOUND ENERGY INC                        | 53035080600       |
| JA4J24A55L | Snohomish   | Everett           | WA    | 98208       |       2020 | MITSUBISHI    | OUTLANDER     | Plug-in Hybrid Electric Vehicle (PHEV) | Not eligible due to low battery range                        |             22 |      0.00 | 44                   | 106207307      | POINT (-122.2032349 47.8956271) | PUGET SOUND ENERGY INC                        | 53061052121       |
| JN1AZ0CP3B | Walla Walla | Walla Walla       | WA    | 99362       |       2011 | NISSAN        | LEAF          | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |             73 |      0.00 | 16                   | 136226352      | POINT (-118.3377489 46.0625736) | PACIFICORP                                    | 53071920200       |
| JN1AZ0CP8C | Kitsap      | Silverdale        | WA    | 98383       |       2012 | NISSAN        | LEAF          | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |             73 |      0.00 | 23                   | 220447041      | POINT (-122.7035285 47.660204)  | PUGET SOUND ENERGY INC                        | 53035091201       |
| JN1AZ0CP9C | Skagit      | Bow               | WA    | 98232       |       2012 | NISSAN        | LEAF          | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |             73 |      0.00 | 40                   | 207825362      | POINT (-122.4202542 48.5607175) | PUGET SOUND ENERGY INC                        | 53057950801       |
| JTDKAMFP8N | Whitman     | Pullman           | WA    | 99163       |       2022 | TOYOTA        | PRIUS PRIME   | Plug-in Hybrid Electric Vehicle (PHEV) | Not eligible due to low battery range                        |             25 |      0.00 | 9                    | 227151375      | POINT (-117.1770648 46.7329687) | AVISTA CORP                                   | 53075000202       |
| JTDKARFP5H | Grant       | Quincy            | WA    | 98848       |       2017 | TOYOTA        | PRIUS PRIME   | Plug-in Hybrid Electric Vehicle (PHEV) | Not eligible due to low battery range                        |             25 |      0.00 | 13                   | 205581071      | POINT (-119.8619179 47.2248994) | PUD NO 2 OF GRANT COUNTY                      | 53025010500       |
| JTDKARFP9K | Kitsap      | Poulsbo           | WA    | 98370       |       2019 | TOYOTA        | PRIUS PRIME   | Plug-in Hybrid Electric Vehicle (PHEV) | Not eligible due to low battery range                        |             25 |      0.00 | 23                   | 340612723      | POINT (-122.6368884 47.7469547) | PUGET SOUND ENERGY INC                        | 53035090502       |
| JTDKN3DP2C | Kitsap      | Poulsbo           | WA    | 98370       |       2012 | TOYOTA        | PRIUS PLUG-IN | Plug-in Hybrid Electric Vehicle (PHEV) | Not eligible due to low battery range                        |              6 |      0.00 | 23                   | 171200151      | POINT (-122.6368884 47.7469547) | PUGET SOUND ENERGY INC                        | 53035090502       |
| JTDKN3DP5D | Kittitas    | Cle Elum          | WA    | 98922       |       2013 | TOYOTA        | PRIUS PLUG-IN | Plug-in Hybrid Electric Vehicle (PHEV) | Not eligible due to low battery range                        |              6 |      0.00 | 13                   | 260551063      | POINT (-120.9347811 47.1944758) | PUGET SOUND ENERGY INC                        | 53037975102       |
| JTMAB3FV1N | Yakima      | Yakima            | WA    | 98908       |       2022 | TOYOTA        | RAV4 PRIME    | Plug-in Hybrid Electric Vehicle (PHEV) | Clean Alternative Fuel Vehicle Eligible                      |             42 |      0.00 | 14                   | 221023589      | POINT (-120.611068 46.596645)   | PACIFICORP                                    | 53077000902       |
| JTMFB3FV6R | Whitman     | Pullman           | WA    | 99163       |       2024 | TOYOTA        | RAV4 PRIME    | Plug-in Hybrid Electric Vehicle (PHEV) | Clean Alternative Fuel Vehicle Eligible                      |             42 |      0.00 | 9                    | 265023391      | POINT (-117.1770648 46.7329687) | AVISTA CORP                                   | 53075000400       |
| KM8K53AG2L | Kitsap      | Port Orchard      | WA    | 98366       |       2020 | HYUNDAI       | KONA          | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            258 |      0.00 | 26                   | 131203187      | POINT (-122.6064912 47.5236145) | PUGET SOUND ENERGY INC                        | 53035092300       |
| KNDPUCAFXP | Yakima      | Yakima            | WA    | 98902       |       2023 | KIA           | SPORTAGE      | Plug-in Hybrid Electric Vehicle (PHEV) | Clean Alternative Fuel Vehicle Eligible                      |             34 |      0.00 | 14                   | 220481411      | POINT (-120.530331 46.59534)    | PACIFICORP                                    | 53077000500       |
| KNDRMDLH3N | Douglas     | East Wenatchee    | WA    | 98802       |       2022 | KIA           | SORENTO       | Plug-in Hybrid Electric Vehicle (PHEV) | Clean Alternative Fuel Vehicle Eligible                      |             32 |      0.00 | 12                   | 183095818      | POINT (-120.2609057 47.4167133) | PUD NO 1 OF DOUGLAS COUNTY                    | 53017950500       |
| KNDRMDLH5P | Thurston    | Olympia           | WA    | 98501       |       2023 | KIA           | SORENTO       | Plug-in Hybrid Electric Vehicle (PHEV) | Clean Alternative Fuel Vehicle Eligible                      |             32 |      0.00 | 35                   | 255390327      | POINT (-122.8733203 47.0133209) | PUGET SOUND ENERGY INC                        | 53067011721       |
| WA1VAAGE8K | Kitsap      | Port Orchard      | WA    | 98367       |       2019 | AUDI          | E-TRON        | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            204 |      0.00 | 26                   | 263134035      | POINT (-122.6530052 47.4739066) | PUGET SOUND ENERGY INC                        | 53035092704       |
| WAUTPBFF3G | Thurston    | Olympia           | WA    | 98513       |       2016 | AUDI          | A3            | Plug-in Hybrid Electric Vehicle (PHEV) | Not eligible due to low battery range                        |             16 |      0.00 | 2                    | 169279939      | POINT (-122.7654699 46.9970624) | PUGET SOUND ENERGY INC                        | 53067012320       |
| WAUTPBFF6H | Kitsap      | Bainbridge Island | WA    | 98110       |       2017 | AUDI          | A3            | Plug-in Hybrid Electric Vehicle (PHEV) | Not eligible due to low battery range                        |             16 |      0.00 | 23                   | 113291041      | POINT (-122.5305071 47.6400595) | PUGET SOUND ENERGY INC                        | 53035090901       |
| WBY1Z2C54F | Grant       | Moses Lake        | WA    | 98837       |       2015 | BMW           | I3            | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |             81 |      0.00 | 13                   | 260665807      | POINT (-119.2958738 47.1384772) | PUD NO 2 OF GRANT COUNTY                      | 53025011102       |
| WBY1Z6C39H | King        | Renton            | WA    | 98056       |       2017 | BMW           | I3            | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |             81 |      0.00 | 11                   | 144155868      | POINT (-122.1819876 47.5098889) | PUGET SOUND ENERGY INC||CITY OF TACOMA - (WA) | 53033025401       |
| WBY73AW09P | Snohomish   | Snohomish         | WA    | 98296       |       2023 | BMW           | I4            | Battery Electric Vehicle (BEV)         | Eligibility unknown as battery range has not been researched |              0 |      0.00 | 1                    | 221273244      | POINT (-122.121841 47.841036)   | PUGET SOUND ENERGY INC                        | 53061052114       |
| WBY8P2C51K | King        | Seattle           | WA    | 98112       |       2019 | BMW           | I3            | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            153 |      0.00 | 43                   | 324226689      | POINT (-122.300312 47.629782)   | CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)  | 53033006300       |
| WDC0G5EB9K | Yakima      | Yakima            | WA    | 98902       |       2019 | MERCEDES-BENZ | GLC-CLASS     | Plug-in Hybrid Electric Vehicle (PHEV) | Not eligible due to low battery range                        |             10 |      0.00 | 14                   | 202971828      | POINT (-120.530331 46.59534)    | PACIFICORP                                    | 53077000800       |
| WMW13DJ0XN | Kitsap      | Bremerton         | WA    | 98312       |       2022 | MINI          | HARDTOP       | Battery Electric Vehicle (BEV)         | Eligibility unknown as battery range has not been researched |              0 |      0.00 | 35                   | 182621386      | POINT (-122.6961203 47.5759584) | PUGET SOUND ENERGY INC                        | 53035092000       |
| WMZYU7C51K | Yakima      | Yakima            | WA    | 98902       |       2019 | MINI          | COUNTRYMAN    | Plug-in Hybrid Electric Vehicle (PHEV) | Not eligible due to low battery range                        |             12 |  36900.00 | 14                   | 146830148      | POINT (-120.530331 46.59534)    | PACIFICORP                                    | 53077001000       |
| WP0AC2Y15L | King        | Seattle           | WA    | 98102       |       2020 | PORSCHE       | TAYCAN        | Battery Electric Vehicle (BEV)         | Clean Alternative Fuel Vehicle Eligible                      |            192 |      0.00 | 43                   | 263047151      | POINT (-122.3212726 47.6296532) | CITY OF SEATTLE - (WA)|CITY OF TACOMA - (WA)  | 53033006100       |
| WVGDMPE24M | Yakima      | Yakima            | WA    | 98903       |       2021 | VOLKSWAGEN    | ID.4          | Battery Electric Vehicle (BEV)         | Eligibility unknown as battery range has not been researched |              0 |      0.00 | 14                   | 151371216      | POINT (-120.5807155 46.5654909) | PACIFICORP                                    | 53077002803       |
| YV4BR0DL8N | Thurston    | Olympia           | WA    | 98502       |       2022 | VOLVO         | XC60          | Plug-in Hybrid Electric Vehicle (PHEV) | Not eligible due to low battery range                        |             18 |      0.00 | 22                   | 192758177      | POINT (-122.943445 47.059252)   | PUGET SOUND ENERGY INC                        | 53067010600       |
| YV4BR0DM8N | Kitsap      | Poulsbo           | WA    | 98370       |       2022 | VOLVO         | XC60          | Plug-in Hybrid Electric Vehicle (PHEV) | Not eligible due to low battery range                        |             18 |      0.00 | 23                   | 182754120      | POINT (-122.6368884 47.7469547) | PUGET SOUND ENERGY INC                        | 53035090501       |
| YV4H60CF8R | Snohomish   | Stanwood          | WA    | 98292       |       2024 | VOLVO         | XC90          | Plug-in Hybrid Electric Vehicle (PHEV) | Clean Alternative Fuel Vehicle Eligible                      |             32 |      0.00 | 10                   | 258940244      | POINT (-122.326873 48.2144825)  | PUGET SOUND ENERGY INC                        | 53061053202       |
+------------+-------------+-------------------+-------+-------------+------------+---------------+---------------+----------------------------------------+--------------------------------------------------------------+----------------+-----------+----------------------+----------------+---------------------------------+-----------------------------------------------+-------------------+
115 rows in set (0.00 sec)

mysql>