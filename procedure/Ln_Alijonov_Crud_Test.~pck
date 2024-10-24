create or replace package Ln_Alijonov_Crud_Test is

  -- create a new user
  Procedure Create_Record
  (
    i_First_Name in varchar2(50),
    i_Last_Name  in varchar2(50),
    i_Age        in number,
    i_Salary     in number
  );

  -- get all records
  Function Get_All_Record return sys_refcursor;

  -- update user
  Procedure Update_Record
  (
    i_Ln_Id      in number,
    i_First_Name in varchar2(50),
    i_Last_Name  in varchar2(50),
    i_Age        in number,
    i_Salary     in number
  );

  -- delete user
  Procedure Delete_Record(i_Ln_Id in number);

  -- get record by ln_id
  Function Get_Record_By_Id(i_Ln_Id in number) return varchar2;

  -- get record by name
  Function Get_Record_By_Name(i_First_Name in varchar2(50)) return varchar2;

end Ln_Alijonov_Crud_Test;
/
create or replace package body Ln_Alijonov_Crud_Test is

  -- create a new user
  Procedure Create_Record
  (
    i_First_Name in varchar2(50),
    i_Last_Name  in varchar2(50),
    i_Age        in number,
    i_Salary     in number
  ) is
  begin
    insert into Ln_Alijonov_Test
      (First_Name, Last_Name, Age, Created_At, Lastupdated_At, Salary)
    values
      (i_First_Name, i_Last_Name, i_Age, sysdate, sysdate, i_Salary);
  exception
    when No_Data_Found then
      return null;
    when others then
      Raise_Application_Error(-20003, 'Error fetching records: ' || sqlerrm);
  end Create_Record;

  -- get all records
  Function Get_All_Record return sys_refcursor is
    v_All_Record sys_refcursor;
  begin
    open v_All_Record for
      select Ln_Id, First_Name, Last_Name, Age, Salary
        from Ln_Alijonov_Test;
  
    return v_All_Record;
  
  exception
    when No_Data_Found then
      return null;
    when others then
      Raise_Application_Error(-20003, 'Error fetching records: ' || sqlerrm);
  end Get_All_Record;

  -- update user
  Procedure Update_Record
  (
    i_Ln_Id      in number,
    i_First_Name in varchar2(50),
    i_Last_Name  in varchar2(50),
    i_Age        in number,
    i_Salary     in number
  ) is
  begin
    update Ln_Alijonov_Test
       set First_Name     = i_First_Name,
           Last_Name      = i_Last_Name,
           Age            = i_Age,
           Salary         = i_Salary,
           Lastupdated_At = sysdate
     where Ln_Id = i_Ln_Id;
  
    if sql%rowcount = 0 then
      Raise_Application_Error(-20001, 'No record found for ID: ' || i_Ln_Id);
    end if;
  
  exception
    when others then
      Raise_Application_Error(-20002, 'Error updating record: ' || sqlerrm);
  end Update_Record;

  -- delete user
  Procedure Delete_Record(i_Ln_Id in number) is
  begin
    delete from Ln_Alijonov_Test
     where Ln_Id = i_Ln_Id;
  
    if sql%rowcount = 0 then
      Raise_Application_Error(-20001, 'No record found for ID: ' || i_Ln_Id);
    end if;
  
  exception
    when others then
      Raise_Application_Error(-20002, 'Error deleting record: ' || sqlerrm);
  end Delete_Record;

  -- get record by ln_id
  Function Get_Record_By_Id(i_Ln_Id in number) return varchar2 is
    v_Record varchar2(4000);
  begin
    select 'ID: ' || Ln_Id || ', Name: ' || First_Name || ' ' || Last_Name || ', Age: ' || Age ||
           ', Salary: ' || Salary
      into v_Record
      from Ln_Alijonov_Test
     where Ln_Id = i_Ln_Id;
  
    return v_Record;
  
  exception
    when No_Data_Found then
      return 'No record found for ID: ' || i_Ln_Id;
    when others then
      Raise_Application_Error(-20003, 'Error fetching record by ID: ' || sqlerrm);
  end Get_Record_By_Id;

  -- get record by name
  Function Get_Record_By_Name(i_First_Name in varchar2(50)) return varchar2 is
    v_Record_Name varchar2(4000);
  begin
    select 'Name: ' || First_Name || ' ' || Last_Name
      into v_Record_Name
      from Ln_Alijonov_Test
     where First_Name = i_First_Name;
  
    return v_Record_Name;
  
  exception
    when No_Data_Found then
      return 'No record found for First_Name: ' || i_First_Name;
    when others then
      Raise_Application_Error(-20003, 'Error fetching record by name: ' || sqlerrm);
  end Get_Record_By_Name;

end Ln_Alijonov_Crud_Test;
/
