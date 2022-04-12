table 50101 NutritionHeader
{
    Caption = 'NutritionHeader';
    DataClassification = CustomerContent;
    
    fields
    {
        field(1; NutritionalNumber; Code[20])
        {
            Caption = 'Táplálkozási kód';
            DataClassification = CustomerContent;
        }
        field(2; CustomerNumber; Code[20])
        {
            Caption = 'Vevőkód';
            DataClassification = CustomerContent;
            TableRelation = Customer."No.";

            trigger OnValidate()
            var
                Customer: Record Customer;
            begin
                if Customer.Get(CustomerNumber) then
                    Rec.CustomerName := Customer.Name
                else
                    Rec.CustomerName := '';
            end;
        }
        field(3; CustomerName; Text[100])
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
        key(PK; NutritionalNumber)
        {
            Clustered = true;
        }
    }
}
