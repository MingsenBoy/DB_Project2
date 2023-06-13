CREATE INDEX meet_idx ON meets(meetid);
--DROP INDEX country_idx;

--/*+index(op(sex))*/
SELECT /*+index(m(meetid))*/ op.name, op.sex, op.age, op.bodyweightkg, op.bestsquatkg
FROM openpowerlifting  op, meets  m
WHERE op.meetid = m.meetid AND op.bestsquatkg >= (op.bodyweightkg*3)
    AND m.meetcountry = 'USA' AND op.equipment = 'Raw';
    
-- ⊿硉 907+15+892

CREATE INDEX meetid_inx ON OPENPOWERLIFTING(meetid)

CREATE INDEX name_inx ON OPENPOWERLIFTING(name)

CREATE INDEX meetid_name_inx ON OPENPOWERLIFTING(meetid, name)

SELECT o.name, o.meetid, o.totalkg, m.meettown
FROM OPENPOWERLIFTING o, meets m
WHERE m.meetid = o.meetid AND m.meettown = 'Grand Rapids' AND o.name = 'Richard Acuna'


--﹍琩高Θセ 2715, meetid虫ま琩高Θセ 119, name虫ま琩高Θセ 66, (meeid,name)狡ま琩高Θセ 119

SELECT M.meetname, O.name, O.sex, O.equipmemt
FROM MEETS M
INTER JOIN OPENPOWERLIFTING o ON M.meetID = O.meetID
WHERE M.meetcountry = 'USA' AND O.division = 'Open'

--﹍琩高Θセ 906, meetid虫ま琩高Θセ 1085, (meecountry,meeid)狡ま琩高Θセ 119