codeunit 50104 "Macronutrient Management"
{
    procedure GetNewSeriesNumber(var Macronutrients: Record Macronutrients)
    var
        Setup: Record "No. Series Setup";
        NoMgmt: Codeunit NoSeriesManagement;
    begin
        if Macronutrients.Code = '' then
        begin
            Setup.Get();
            Macronutrients.Code := NoMgmt.GetNextNo(Setup."No. Series for Macronutrient", WorkDate(), true);
        end;
        
    end;
}
