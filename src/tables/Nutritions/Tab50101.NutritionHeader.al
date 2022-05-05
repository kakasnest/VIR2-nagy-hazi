table 50101 "Nutrition Header"
{
    Caption = 'Nutrition Header';
    DataClassification = CustomerContent;
    
    fields
    {
        field(1; "Nutritional No."; Code[20])
        {
            Caption = 'Táplálkozási kód';
            DataClassification = CustomerContent;
        }
        field(2; "Customer No."; Code[20])
        {
            Caption = 'Vevőkód';
            DataClassification = CustomerContent;
            TableRelation = Customer."No.";

            trigger OnValidate()
            var
                Customer: Record Customer;
            begin
                if Customer.Get("Customer No.") then
                    Rec."Customer Name" := Customer.Name
                else
                    Rec."Customer Name" := '';
            end;
        }
        field(3; "Customer Name"; Text[100])
        {
            Caption = 'Vevő neve';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(4; "Date"; Date)
        {
            Caption = 'Dátum';
            DataClassification = CustomerContent;
        }
        field(5; Status; Enum NutritionDocumentStatus)
        {
            Caption = 'Státusz';
            ValuesAllowed = 0, 1;
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "Nutritional No.")
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    var
        Setup: Record "Nutrition Setup";
        NoMgmt: Codeunit NoSeriesManagement;
    begin
        if Rec."Nutritional No." = '' then
        begin
            Setup.Get();
            Rec."Nutritional No." := NoMgmt.GetNextNo(Setup."No. Series for Nutrient", WorkDate(), true);
        end;
    end;
}
