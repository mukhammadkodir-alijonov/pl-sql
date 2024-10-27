create or replace package Ln_Alijonov_Crud_Test is

  -- create a new user
  Procedure Create_Record
  (
    i_First_Name in varchar2;
    i_Last_Name  in varchar2;
    i_Age        in number;
    i_Salary     in number;
  );

  -- get all records
  Function Get_All_Record return sys_refcursor;

  -- update user
  Procedure Update_Record
  (
    i_Ln_Id      in number;
    i_First_Name in varchar2;
    i_Last_Name  in varchar2;
    i_Age        in number;
    i_Salary     in number;
  );

  -- delete user
  Procedure Delete_Record(i_Ln_Id in number);

  -- get record by ln_id
  Function Get_Record_By_Id(i_Ln_Id in number) return varchar2;

  -- get record by name
  Function Get_Record_By_Name(i_First_Name in varchar2) return varchar2;

end Ln_Alijonov_Crud_Test;
