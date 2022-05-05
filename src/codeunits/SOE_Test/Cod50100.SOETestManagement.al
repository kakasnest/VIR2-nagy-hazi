codeunit 50100 "SOE Test Management"
{
    

    internal procedure ChangeStatus(TestHeader: Record "SOE Test Header"; Status: Enum "Sales Document Status")
    begin
        TestHeader.TestField(TestHeader."Customer No.");
        TestHeader.Status := Status;
        TestHeader.Modify();
    end;
}
