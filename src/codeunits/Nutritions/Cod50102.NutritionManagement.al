codeunit 50102 "Nutrition Management"
{
    internal procedure ChangeStatus(NutrtionHeader: Record "Nutrition Header"; Status: Enum "Nutrition Document Status")
    begin
        NutrtionHeader.TestField(NutrtionHeader."Customer No.");
        NutrtionHeader.Status := Status;
        NutrtionHeader.Modify();
    end;

    internal procedure ConfirmStatusChange(var Rec: Record "Nutrition Header")
    var 
        ConfirmMessage : label 'Biztosan szeretné megváltoztatni a státuszt?';
    begin
        if not Confirm(ConfirmMessage) then
        exit
    end;


}
