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

    procedure PostOrder(var NutritionHeader: Record "Nutrition Header")
    var 
        NutritionLine: Record "Nutrition Line";
        PostedNutritionHeader: Record "Posted Nutrition Header";
        PostedNutritionLine: Record "Posted Nutrition Line";
        Setup: Record "No. Series Setup";
        NoSeriesManagement: Codeunit NoSeriesManagement;
        ExitMessage: Label 'Sikeresen könyvelve';
        ShouldBeDeleted: Boolean;

    begin
        NutritionHeader.TestField(Status, NutritionHeader.Status::Released);

        if not Confirm('Szeretné könyvelni a dokumentumot?') then
            exit;
         
        if Confirm('Kívánja törölni a rendelést a könyvelés végeztével?') then
            ShouldBeDeleted := true
        else
            ShouldBeDeleted := false;

        PostedNutritionHeader.Init();
        PostedNutritionHeader.TransferFields(NutritionHeader);
        Setup.Get();
        PostedNutritionHeader."Nutritional No." := NoSeriesManagement.GetNextNo(Setup."No. Series for P-Nutr Orders", WorkDate(), true);
        PostedNutritionHeader.Insert(true);

        NutritionLine.Reset();
        NutritionLine.SetRange("Nutritional No.", NutritionHeader."Nutritional No.");
        if NutritionLine.findSet() then
            repeat
                PostedNutritionLine.Init();
                PostedNutritionLine.TransferFields(NutritionLine);
                PostedNutritionLine."Nutritional No." := PostedNutritionHeader."Nutritional No.";
                PostedNutritionLine.Insert(true);
            
            if ShouldBeDeleted then
                NutritionLine.Delete();
            until NutritionLine.Next() = 0;

        if ShouldBeDeleted then
            NutritionHeader.Delete();
        
        Commit();
        Message(ExitMessage);
        Page.RunModal(Page::"Posted Nutrition Order", PostedNutritionHeader);
    end;

    procedure GetNewSeriesNumber(var NutritionHeader: Record "Nutrition Header")
    var
        Setup: Record "No. Series Setup";
        NoMgmt: Codeunit NoSeriesManagement;
    begin
        if NutritionHeader."Nutritional No." = '' then
        begin
            Setup.Get();
            NutritionHeader."Nutritional No." := NoMgmt.GetNextNo(Setup."No. Series for Nutr Orders", WorkDate(), true);
        end;
        
    end;
}
