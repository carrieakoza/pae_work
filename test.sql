declare
    string1 varchar2(256);
    string2 varchar2(256);
    string3 varchar2(256);
    
    string4 varchar2(256);
    output varchar2(5000);
begin
    dbms_output.put_line('Tests');
    string1 := 'Some Street 123 ';
    string2 := 'Apt 123';
    string3 := 'third line here ';
    
    output := dml_pkg.formatSfStreet(string1, string2, string3);
    dbms_output.put_line(output);

    
    dbms_output.put_line(string1||' '||string2||' '||string3);
    dbms_output.put_line(string1||string2||string3);
    dbms_output.put_line('-----------');
    dbms_output.put_line('Just line 1');
    dbms_output.put_line('-----------');
    string2 := null;
    string3 := null;
    
    output := dml_pkg.formatSfStreet(string1, string2, string3);
    dbms_output.put_line(output);
    dbms_output.put_line('-----------');
    dbms_output.put_line('line 1 & 2 ');
    dbms_output.put_line('-----------');
    string2 := 'Apt 456';
    string3 := null;
    
    output := dml_pkg.formatSfStreet(string1, string2, string3);
    dbms_output.put_line(output);
    dbms_output.put_line('-----------');
    dbms_output.put_line('Line 1 & 3 '); 
    dbms_output.put_line('-----------');
    string2 := null;
    string3 := 'Line 3 filled';
    
    output := dml_pkg.formatSfStreet(string1, string2, string3);
    dbms_output.put_line(output);
end;
/