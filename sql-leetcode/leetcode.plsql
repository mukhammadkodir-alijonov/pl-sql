create function getnthhighestsalary (
   n in number
) return number is
   result number;
begin
    /* Write your PL/SQL query statement below */
   select distinct salary
     into result
     from (
      select salary,
             dense_rank()
             over(
                 order by salary desc
             ) as r
        from employee
   )
    where r = n;
   return result;
end;