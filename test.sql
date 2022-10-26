declare
    string1 varchar2(256);
    string2 varchar2(256);
    string3 varchar2(256);
    output varchar2(5000);
begin
    string1 := 'Some Street 123 ';
    string2 := 'Apt 123';
    string3 := 'third line here ';
    
    output := dml_pkg.formatSfStreet(string1, string2, string3);
    dbms_output.put_line(output);
end;
/