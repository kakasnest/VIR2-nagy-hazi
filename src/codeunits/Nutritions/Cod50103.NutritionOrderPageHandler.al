codeunit 50103 "Nutrition Order Page Handler"
{
    [EventSubscriber(ObjectType::Page, Page::"Nutrition Order", 'OnBeforeActionEvent', 'Release', false, false)]
    local procedure OnBeforeActionEvent_ConfirmRelease(var Rec: Record "Nutrition Header")
    begin
        NM.ConfirmStatusChange(Rec);
    end;

    [EventSubscriber(ObjectType::Page, Page::"Nutrition Order", 'OnBeforeActionEvent', 'Reopen', false, false)]
    local procedure OnBeforeActionEvent_ConfirmOpen(var Rec: Record "Nutrition Header")
    begin
        NM.ConfirmStatusChange(Rec);
    end;

    var 
        NM: Codeunit "Nutrition Management"; 
}
