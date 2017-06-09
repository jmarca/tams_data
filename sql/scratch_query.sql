-- scratch for developing runtime queries

-- get all the stations

select  gid,id,site_type,site_name,dep_status,location,the_geom,detector_type,route,startdate, enddate
from lookups.deployed_sites ds
where enddate is null or enddate > CURRENT_DATE - '1 year'::interval
order by id;

  87 |     2 | WIM       | REDDING           |          1 | I-5 @ Old Oregon Trail        | 0101000020E6100000750D3EF42D955EC0540DC5B4AF5B4440 | WIM           |     5 | 2016-12-06 |
 107 |     5 | WIM       | INDIO             |          1 | I-10 @ Tyler                  | 0101000020E61000003B68E107840A5DC0FFDE00AD6BDB4040 | WIM           |    10 | 2

-- need code to construct archive table canonical name

-- \d archive.signaturearchive* will do the trick for getting all of the known
-- tables.  I can then use that to compare detector ids versus the existing tables

-- sometimes there are multiple detector stations in an archive file:

signatures=> select distinct detstaid from archive.signaturearchive_1_2016 ;
 detstaid
----------
    10004
       46
     6003
    10007
     7001
     6001
    10003
     7003
    10005
    10002
     6007
     6004
     6002
    10001
    10006
     6005
      113
     7002
(18 rows)
