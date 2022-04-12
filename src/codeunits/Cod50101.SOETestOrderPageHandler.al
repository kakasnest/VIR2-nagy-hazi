codeunit 50101 "SOE Test Order Page Handler"
{
    
    [EventSubscriber(ObjectType::Page, Page::"SOE Test Order Card", 'OnBeforeActionEvent', 'ChangeStatus', false, false)]
    local procedure OnBeforeActionEvent_ChangeStatus(var Rec: Record "SOE Test Header")
    begin
        
    end;
    var 
        SOETestManagement: Codeunit "SOE Test Management";
}
