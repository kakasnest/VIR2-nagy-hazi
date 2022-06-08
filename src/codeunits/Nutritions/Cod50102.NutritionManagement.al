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

    procedure PostTestOrder(var NutritionHeader: Record "Nutrition Header")
    var
        PostedNutritionHeader: Record "Posted Nutrition Header";
        PostedNutritionLine: Record "Posted Nutrition Line";
        Setup: Record "No. Series Setup";
        NoSeriesManagement: Codeunit NoSeriesManagement;

    begin
        NutritionHeader.TestField(Status, NutritionHeader.Status::Released);
        PostedNutritionHeader.Init();
        PostedNutritionHeader.TransferFields(NutritionHeader);
        PostedNutritionHeader."Nutritional No." := NoSeriesManagement.GetNextNo(Setup."No. Series for P-Nutr Orders", WorkDate(), true);
        PostedNutritionHeader.Insert(true)
    end;
}
