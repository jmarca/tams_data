signatures=> \d archive.signaturearchive_201703_61
        Table "archive.signaturearchive_201703_61"
     Column     |            Type             | Modifiers
----------------+-----------------------------+-----------
 id             | integer                     | not null
 detstaid       | integer                     | not null
 dettype        | smallint                    |
 lane           | smallint                    | not null
 lane_dir       | smallint                    | not null
 timestamp      | integer                     |
 timestamp_sys  | integer                     |
 timestamp_full | timestamp without time zone | not null
 samples        | smallint                    |
 vehicle_count  | integer                     |
 duration       | double precision            |
 reserved       | integer                     |
 psr            | double precision[]          |
 interpsig      | integer[]                   |
 rawsig         | integer[]                   |
 n_sample_count | bigint[]                    |
Indexes:
    "signaturearchive_201703_61_pkey" PRIMARY KEY, btree (id, detstaid, lane_dir, lane, timestamp_full)




     Column     |            Type             | Modifiers
----------------+-----------------------------+-----------
 id             | integer                     | not null
 detstaid       | integer                     | not null
 dettype        | smallint                    |
 lane           | smallint                    | not null
 lane_dir       | smallint                    | not null
 timestamp      | integer                     |
 timestamp_sys  | integer                     |
 timestamp_full | timestamp without time zone | not null
 samples        | smallint                    |
 vehicle_count  | integer                     |
 duration       | double precision            |
 reserved       | smallint                    |
 psr            | double precision[]          |
 interpsig      | integer[]                   |
 rawsig         | integer[]                   |
 n_sample_count | bigint[]                    |
Indexes:
    "signaturearchive_201601_7003_pkey" PRIMARY KEY, btree (id, detstaid, lane_dir, lane, timestamp_full)


signatures=> \dt lookups.
lookups.caltrans_districts
lookups.caltrans_districts_3
lookups.carb_airbasins_3310
lookups.corridor_lines
lookups.counties
lookups."D11 Deployed Advanced Loop Detection Sites for Truck AADT Data "
* lookups.deployedild
lookups.deployedsignatures
* lookups.deployed_sites
lookups.deployedwim
lookups.directions
lookups.emfac_class_lookup
lookups.fhwa_body_class_lookup
lookups.fhwa_lookup
lookups.industry_bodygroupclass_crosswalk
lookups.industry_lookup
lookups.mpo2013_4269
lookups.rail_facilities
lookups.rail_facility_lookup
lookups.regions
lookups.screenline_correspondence
lookups.screenlines
lookups.stateca4269
* lookups.tier2_lookup
lookups.trucktypes
lookups.trucktypes_crosswalk
lookups.vds_body_class_group_lookup
* lookups.vds_body_class_lookup
lookups.wim_sig_timeoffset


-- calvad account able to look at

* lookups.deployedild
* lookups.deployed_sites
* lookups.tier2_lookup
* lookups.vds_body_class_lookup


signatures=> \d vds_body_classification_predictions
Table "public.vds_body_classification_predictions"
      Column      |  Type   | Modifiers
------------------+---------+-----------
 sig_id           | integer | not null
 final_prediction | integer |
 model1           | integer |
 model2           | integer |
 model3           | integer |
 model4           | integer |
 model5           | integer |
Indexes:
    "body_classification_predictions_pkey" PRIMARY KEY, btree (sig_id)
    "idx_sigid_class" btree (sig_id, final_prediction), tablespace "arbtrucks"


signatures=> select count(*) from vds_body_classification_predictions ;
   count
------------
 1554155156
(1 row)


signatures=> select * from public.vds_body_classification_predictions limit 10;
  sig_id  | final_prediction | model1 | model2 | model3 | model4 | model5
----------+------------------+--------+--------+--------+--------+--------
 28327962 |                6 |      6 |     19 |      6 |     10 |
 28322818 |                1 |      1 |    -99 |    -99 |    -99 |
 28324326 |                1 |      1 |    -99 |    -99 |    -99 |
 28324801 |                1 |      1 |    -99 |    -99 |    -99 |
 28328504 |                1 |      1 |    -99 |    -99 |    -99 |
 28324803 |                1 |      1 |    -99 |    -99 |    -99 |
 28323368 |                1 |      1 |    -99 |    -99 |    -99 |
 28328501 |                1 |      1 |    -99 |    -99 |    -99 |
 28326738 |                1 |      1 |    -99 |    -99 |    -99 |
 28328490 |                1 |      1 |    -99 |    -99 |    -99 |
(10 rows)


     id     | detstaid | dettype | lane | lane_dir | timestamp | timestamp_sys |     timestamp_full      | samples | vehicle_count | duration | reserved | psr | interpsig |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           rawsig                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            | n_sample_count
------------+----------+---------+------+----------+-----------+---------------+-------------------------+---------+---------------+----------+----------+-----+-----------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------
 1512628979 |    12002 |     111 |    5 |        2 |         0 |             0 | 2017-04-30 20:06:19.868 |     165 |          8438 |    0.165 |       82 | {}  | {}        | {44,48,48,52,56,60,60,64,68,72,72,76,80,84,84,88,92,92,96,96,100,100,104,104,108,108,112,112,112,116,116,116,120,120,120,124,124,128,128,132,132,132,136,140,140,140,144,144,148,148,152,152,152,156,156,156,156,160,160,160,160,160,160,164,164,164,164,164,164,160,164,160,160,160,160,160,160,160,156,156,156,156,152,152,152,148,148,148,144,144,144,144,140,140,140,140,136,136,136,132,132,128,128,124,124,120,120,116,116,112,112,108,104,104,100,96,92,88,84,84,80,76,72,72,68,64,60,60,56,56,52,48,48,44,44,40,40,36,36,32,32,32,28,28,28,24,24,24,20,20,20,16,16,16,16,16,16,12,12,12,12,12,12,8,8}
                                              | {}
 1512629321 |    12002 |     111 |    5 |        2 |         0 |             0 | 2017-04-30 20:06:26.425 |     281 |          8440 |    0.281 |     1336 | {}  | {}        | {48,52,60,64,68,76,80,84,92,100,104,112,116,124,132,136,144,152,160,164,176,184,196,208,220,236,252,272,292,312,332,356,380,404,432,464,492,520,552,584,616,652,684,720,752,788,824,864,896,936,972,1008,1044,1084,1120,1160,1200,1240,1280,1324,1360,1400,1444,1484,1524,1568,1608,1648,1692,1736,1772,1812,1852,1888,1920,1956,1984,2012,2040,2068,2088,2108,2132,2148,2168,2192,2208,2224,2244,2268,2284,2300,2316,2336,2352,2368,2384,2400,2416,2432,2448,2460,2472,2488,2500,2508,2524,2536,2548,2560,2572,2584,2596,2608,2620,2632,2644,2648,2660,2664,2668,2672,2672,2672,2668,2668,2660,2652,2644,2636,2620,2608,2596,2580,2568,2552,2536,2520,2504,2492,2476,2464,2448,2436,2424,2416,2400,2384,2376,2372,2360,2352,2344,2328,2324,2316,2304,2292,2272,2260,2244,2232,2216,2196,2176,2156,2140,2120,2104,2084,2064,2048,2028,2008,1988,1964,1940,1920,1896,1868,1840,1816,1784,1756,1724,1692,1660,1628,1596,1560,1524,1488,1456,1420,1384,1352,1316,1280,1248,1212,1180,1148,1116,1084,1048,1016,984,952,920,892,860,828,800,772,744,712,688,660,632,608,584,560,536,516,492,472,448,428,404,384,364,344,328,308,288,272,256,240,224,208,196,180,168,160,148,136,128,116,108,100,92,84,80,76,68,64,60,56,48,48,44,40,36,32,32,28,28,24,24,20,20,20,16,16,16,12,12,12,12,8,8}                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      | {}
 1512629164 |    12002 |     111 |    5 |        2 |         0 |             0 | 2017-04-30 20:06:23.466 |     259 |          8439 |    0.259 |     1016 | {}  | {}        | {48,52,56,60,68,72,80,88,92,100,108,112,124,132,140,148,156,168,176,188,200,216,228,244,264,280,300,324,348,372,400,432,460,496,528,564,600,640,676,712,752,788,828,864,900,936,972,1008,1040,1072,1108,1140,1172,1204,1236,1268,1300,1332,1364,1392,1424,1456,1484,1512,1540,1568,1592,1616,1640,1660,1680,1696,1712,1728,1744,1756,1764,1776,1784,1792,1796,1800,1804,1812,1812,1816,1820,1824,1828,1836,1840,1844,1848,1856,1860,1868,1880,1888,1896,1908,1920,1928,1940,1952,1964,1972,1984,1992,2000,2008,2016,2020,2024,2028,2032,2032,2032,2032,2028,2024,2020,2016,2012,2004,2000,1992,1984,1976,1968,1956,1948,1940,1932,1924,1916,1908,1900,1892,1888,1876,1868,1860,1852,1844,1832,1824,1812,1800,1788,1776,1768,1756,1744,1732,1720,1708,1696,1684,1672,1660,1648,1632,1620,1604,1588,1572,1552,1536,1516,1496,1472,1448,1424,1400,1372,1344,1312,1284,1252,1224,1192,1160,1124,1092,1060,1028,996,960,928,896,864,832,800,768,736,704,672,644,612,584,556,528,500,472,444,420,396,368,348,324,300,280,260,244,224,208,192,180,168,156,144,136,128,120,112,108,100,96,92,84,80,76,72,68,64,60,56,52,52,48,44,40,36,36,32,28,28,24,24,20,20,16,16,16,12,12,12,8,8}

signatures=> select distinct detstaid,dettype,lane,lane_dir from archive.signaturearchive_201705_12002 ;
 detstaid | dettype | lane | lane_dir
----------+---------+------+----------
    12002 |     111 |    5 |        2
    12002 |     111 |    5 |        1
    12002 |     111 |    4 |        2
    12002 |     111 |    4 |        1
(4 rows)

-- so lane is likely the actual lane, lane_dir is the direction, but not sure NSEW yet

-- calvad account able to look at

* lookups.deployedild
* lookups.deployed_sites
* lookups.tier2_lookup
* lookups.vds_body_class_lookup


signatures=> \d lookups.deployedild
          Table "lookups.deployedild"
     Column     |       Type        | Modifiers
----------------+-------------------+-----------
 detstaid       | smallint          | not null
 lane           | smallint          | not null
 lane_dir       | smallint          | not null
 lane_desc      | character varying |
 deployedstatus | boolean           |
Indexes:
    "deployedild_pkey" PRIMARY KEY, btree (detstaid, lane_dir, lane)


signatures=> select * from lookups.deployedild where detstaid = 12002;
 detstaid | lane | lane_dir | lane_desc | deployedstatus
----------+------+----------+-----------+----------------
    12002 |    4 |        1 | ML 3      | t
    12002 |    5 |        1 | ML 4      | t
    12002 |    4 |        2 | ML 3      | t
    12002 |    5 |        2 | ML 4      | t
    12002 |    1 |        1 | HOV 1     | f
    12002 |    2 |        1 | ML 1      | f
    12002 |    3 |        1 | ML 2      | f
    12002 |    1 |        2 | HOV 1     | f
    12002 |    2 |        2 | ML 1      | f
    12002 |    3 |        2 | ML 2      | f
(10 rows)

signatures=> \d lookups.lookups.deployed_sites
                                         Table "lookups.deployed_sites"
     Column      |          Type          |                              Modifiers
-----------------+------------------------+----------------------------------------------------------------------
 gid             | integer                | not null default nextval('lookups.deployed_sites_gid_seq'::regclass)
 id              | integer                |
 site_type       | character varying(10)  |
 site_name       | character varying(32)  |
 site_desc       | character varying(128) |
 dep_status      | integer                |
 location        | character varying(32)  |
 county          | character varying(16)  |
 ct_dist         | integer                |
 pems_id         | integer                |
 the_geom        | geometry(Point,4326)   |
 detector_type   | character varying(16)  |
 route           | integer                |
 IDX_scrl        | smallint               |
 IDX_candi       | smallint               |
 tel_number      | bigint                 |
 machine_name    | character varying      |
 IDX_reid        | smallint               |
 sigclientver    | numeric                |
 startdate       | date                   |
 enddate         | date                   |
 loopsdepperlane | integer                |
Indexes:
    "deployed_sites_pkey" PRIMARY KEY, btree (gid)


signatures=> select * from lookups.deployed_sites where id = 12002;

 gid |  id   | site_type | site_name  |     site_desc     | dep_status |     location      | county | ct_dist | pems_id |                      the_geom                      | detector_type | route | IDX_scrl | IDX_candi | tel_number | machine_name  | IDX_reid | sigclientver | startdate  | enddate | loopsdepperlane
-----+-------+-----------+------------+-------------------+------------+-------------------+--------+---------+---------+----------------------------------------------------+---------------+-------+----------+-----------+------------+---------------+----------+--------------+------------+---------+-----------------
  50 | 12002 | VDS       | I5_WESTERN | I-5 @ Western Ave |          1 | I-5 @ Western Ave | Orange |      12 |         | 0101000020E61000006FB16FED4E805DC0A8B8B35F4EEF4040 | ILD           |     5 |          |           |            | ITS-AKASA-033 |          |          2.2 | 2016-06-20 |         |               1
(1 row)

signatures=> select st_asewkt(the_geom) from lookups.deployed_sites where id = 12002;
                      st_asewkt
-----------------------------------------------------
 SRID=4326;POINT(-118.004817351413 33.8695792796655)
(1 row)


signatures=> \d  lookups.tier2_lookup
            Table "lookups.tier2_lookup"
     Column     |         Type          | Modifiers
----------------+-----------------------+-----------
 tier2_class_id | integer               | not null
 tier2_class    | character varying(32) | not null
 description    | character varying(32) |
Indexes:
    "tier2_lookup_pkey" PRIMARY KEY, btree (tier2_class_id)
Referenced by:
    TABLE "lookups.trucktypes" CONSTRAINT "trucktypes_tier2_class_id_fkey" FOREIGN KEY (tier2_class_id) REFERENCES lookups.tier2_lookup(tier2_class_id)

--  turns out this is just a 5 row table

signatures=> select * from lookups.tier2_lookup ;

tier2_class_id | tier2_class |           description
----------------+-------------+---------------------------------
              1 | PC          | Passenger Vehicle
              2 | SU          | Single Unit Truck
              3 | Single      | Truck with Single Trailer
              5 | Multi       | Tractor with Multuiple Trailers
              4 | Semi        | Tractor with Semi-Trailer
(5 rows)



signatures=> \d lookups.vds_body_class_lookup
          Table "lookups.vds_body_class_lookup"
       Column        |         Type          | Modifiers
---------------------+-----------------------+-----------
 tier1_class         | character varying(4)  |
 body_class_name     | character varying(64) |
 body_class_id       | integer               | not null
 body_class_group    | character varying(32) |
 body_class_group_id | integer               |
 tier2_class         | character varying(32) |
Indexes:
    "vds_body_class_lookup_pkey" PRIMARY KEY, btree (body_class_id)
Referenced by:
    TABLE "classification" CONSTRAINT "classification_class_id_fkey" FOREIGN KEY (class_id) REFERENCES lookups.vds_body_class_lookup(body_class_id)

signatures=> select count(*) from lookups.vds_body_class_lookup ;
 count
-------
    91
(1 row)

signatures=> select * from lookups.vds_body_class_lookup order by body_class_id, body_class_group_id limit 10;
 tier1_class |  body_class_name  | body_class_id | body_class_group  | body_class_group_id | tier2_class
-------------+-------------------+---------------+-------------------+---------------------+-------------
 SU          | Passenger Vehicle |             1 | Passenger Vehicle |                 101 | PC
 SU          | 20ft Bus          |             2 | 20ft Bus          |                 102 | SU
 SU          | 30ft Bus          |             3 | 30ft Bus          |                 103 | SU
 SU          | Beverage          |             4 | Beverage          |                 104 | SU
 SU          | Bobtail           |             5 | Bobtail           |                 105 | SU
 SU          | Cab Over Van      |             6 | Van/Platform      |                 106 | SU
 SU          | Concrete          |             7 | Concrete          |                 107 | SU
 SU          | Conv. Van         |             8 | Van/Platform      |                 106 | SU
 SU          | Crane/Winch       |             9 | Utility/Service   |                 108 | SU
 SU          | Dump_Single       |            10 | Dump/Tank         |                 109 | SU
(10 rows)


signatures=> select * from lookups.vds_body_class_lookup where tier1_class = 'SU' order by body_class_id;

 tier1_class |  body_class_name   | body_class_id | body_class_group  | body_class_group_id | tier2_class
-------------+--------------------+---------------+-------------------+---------------------+-------------
 SU          | Passenger Vehicle  |             1 | Passenger Vehicle |                 101 | PC
 SU          | 20ft Bus           |             2 | 20ft Bus          |                 102 | SU
 SU          | 30ft Bus           |             3 | 30ft Bus          |                 103 | SU
 SU          | Beverage           |             4 | Beverage          |                 104 | SU
 SU          | Bobtail            |             5 | Bobtail           |                 105 | SU
 SU          | Cab Over Van       |             6 | Van/Platform      |                 106 | SU
 SU          | Concrete           |             7 | Concrete          |                 107 | SU
 SU          | Conv. Van          |             8 | Van/Platform      |                 106 | SU
 SU          | Crane/Winch        |             9 | Utility/Service   |                 108 | SU
 SU          | Dump_Single        |            10 | Dump/Tank         |                 109 | SU
 SU          | Dump_Tandem        |            11 | Dump/Tank         |                 109 | SU
 SU          | Dump_Triple        |            12 | Dump Triple Rear  |                 110 | SU
 SU          | Dumpster Transport |            13 | Dump/Tank         |                 109 | SU
 SU          | Firetruck          |            14 | Utility/Service   |                 108 | SU
 SU          | Garbage            |            15 | Utility/Service   |                 108 | SU
 SU          | Light Van          |            16 | Van/Platform      |                 106 | SU
 SU          | Multi-stop van     |            17 | Multi Stop Van/RV |                 111 | SU
 SU          | Platform_0         |            18 | Van/Platform      |                 106 | SU
 SU          | Platform_1         |            19 | Van/Platform      |                 106 | SU
 SU          | Platform_2         |            20 | Van/Platform      |                 106 | SU
 SU          | RV                 |            21 | Multi Stop Van/RV |                 111 | SU
 SU          | Street Sweeper     |            22 | Street Sweeper    |                 112 | SU
 SU          | Tank               |            23 | Dump/Tank         |                 109 | SU
 SU          | Tow Truck          |            24 | Utility/Service   |                 108 | SU
 SU          | Utility_0          |            25 | Utility/Service   |                 108 | SU
 SU          | Utility_1          |            26 | Utility/Service   |                 108 | SU
 SU          | Utility_2          |            27 | Utility/Service   |                 108 | SU
 SU          | Wrecker            |            28 | Utility/Service   |                 108 | SU
(28 rows)
