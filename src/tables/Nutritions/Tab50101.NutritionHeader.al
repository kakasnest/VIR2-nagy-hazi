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
            ValidateTableRelation = true;

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
            Editable = false;
        }
        field(5; Status; Enum "Nutrition Document Status")
        {
            Caption = 'Státusz';
            ValuesAllowed = 0, 1;
            DataClassification = CustomerContent;
        }
        field(6; "Total Protein"; Decimal){
            Caption= 'Összesített protein';
            FieldClass = FlowField;
            CalcFormula = Sum("Nutrition Line".Protein Where("Nutritional No." = field("Nutritional No.")));
        }
        field(7; "Total Fat"; Decimal){
            Caption= 'Összesített zsír';
            FieldClass = FlowField;
            CalcFormula = Sum("Nutrition Line".Fat Where("Nutritional No." = field("Nutritional No.")));
        }
        field(8; "Total Carbohydrate"; Decimal){
            Caption= 'Összesített szénhidrát';
            FieldClass = FlowField;
            CalcFormula = Sum("Nutrition Line".Carbohydrate Where("Nutritional No." = field("Nutritional No.")));
        }
        field(9; "Total KJ"; Decimal){
            Caption= 'Összesített KJ';
            FieldClass = FlowField;
            CalcFormula = Sum("Nutrition Line".KJ Where("Nutritional No." = field("Nutritional No.")));
        }
        field(10; "Total Kcal"; Decimal){
            Caption= 'Összesített kalória';
            FieldClass = FlowField;
            CalcFormula = Sum("Nutrition Line".Kcal Where("Nutritional No." = field("Nutritional No.")));
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
        Setup: Record "No. Series Setup";
        NoMgmt: Codeunit NoSeriesManagement;
    begin
        if Rec."Nutritional No." = '' then
        begin
            Setup.Get();
            Rec."Nutritional No." := NoMgmt.GetNextNo(Setup."No. Series for Nutrient", WorkDate(), true);
        end;
        Rec.Date := System.Today();
    end;
}
