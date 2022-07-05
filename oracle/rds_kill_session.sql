undefine sessionsid
define sessionsid=&sessionsid

undefine sessionserial
define sessionserial=&sessionserial
begin
    rdsadmin.rdsadmin_util.kill(
        sid    => &sessionsid, 
        serial => &sessionserial,
        method => 'IMMEDIATE');
end;
/

-- use PROCESS if the procedure fails
--  method => 'PROCESS');
