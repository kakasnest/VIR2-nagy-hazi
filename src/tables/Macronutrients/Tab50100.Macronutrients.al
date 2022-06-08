table 50100 Macronutrients
{
    Caption = 'Macronutrients';
    DataClassification = CustomerContent;
    
    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Kód';
            DataClassification = CustomerContent;
        }
        field(2; Description; Text[100])
        {
            Caption = 'Leírás';
            DataClassification = CustomerContent;
        }
        field(3; Protein; Decimal)
        {
            Caption = 'Fehérje';
            DataClassification = CustomerContent;
        }
        field(4; Fat; Decimal)
        {
            Caption = 'Zsír';
            DataClassification = CustomerContent;
        }
        field(5; Carbohydrate; Decimal)
        {
            Caption = 'Szénhidrát';
            DataClassification = CustomerContent;
        }
        field(6; KJ; Decimal)
        {
            Caption = 'KJ';
            DataClassification = CustomerContent;
        }
        field(7; Kcal; Decimal)
        {
            Caption = 'Kcal';
            DataClassification = CustomerContent;
        }
        field(8; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Mértékegység';
            DataClassification = CustomerContent;
            TableRelation = "Unit of Measure";
        }
    }
    keys
    {
        key(PK; "Code")
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    var
        MacronutrientManagement: Codeunit "Macronutrient Management";
    begin
        MacronutrientManagement.GetNewSeriesNumber(Rec);
    end;
}
