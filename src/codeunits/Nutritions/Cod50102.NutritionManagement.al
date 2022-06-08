codeunit 50102 "Nutrition Management"
{
    procedure ChangeStatus(NutrtionHeader: Record "Nutrition Header"; Status: Enum "Nutrition Document Status")
    begin
        NutrtionHeader.TestField(NutrtionHeader."Customer No.");
        NutrtionHeader.Status := Status;
        NutrtionHeader.Modify();
    end;

    procedure ConfirmStatusChange(var Rec: Record "Nutrition Header")
    var 
        ConfirmMessage : label 'Biztosan szeretné megváltoztatni a státuszt?';
        DeclineMessage: label 'Státuszváltoztatás megszakítva';
    begin
        if not Confirm(ConfirmMessage) then
        Error(DeclineMessage)
    end;


}
