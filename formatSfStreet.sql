create or replace package body DML_PKG as
        function formatSfStreet( addrLine1 IN varchar2, addrLine2 IN varchar2, addrLine3 IN varchar2 ) return varchar2
        is
            -- Docs
            /*
                Takes 3 input strings:
                     addrLine1: varchar2
                     addrLine2: varchar2
                     addrLine3: varchar3

                Returns 256char string

                Builds single string for instant address street by inserting carriage return & line feed between lines of address.
            */
            vReturn varchar2(256);
            ex_location varchar2(50);
            ex_msg varchar2(50);
        begin
            vReturn := trim(trim(addrLine1)||chr(13)||chr(10)||trim(addrLine2)||chr(13)||chr(10)||trim(addrLine3));
        return vReturn;
        exception
            when others then
                ex_location := 'DML_PKG';
                ex_msg      := 'Formatting address for SF failure';
                log_proc_prc(ex_location, ex_msg);
        end;
end DML_PKG;