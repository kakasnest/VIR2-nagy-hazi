table 50100 Macronutrients
{
    Caption = 'Macronutrients';
    DataClassification = CustomerContent;
    
    fields
    {
        field(1; "Code"; Code[10])
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
        field(7; UnitOfMeasurement; Text[50])
        {
            Caption = 'Mértékegység';
            TableRelation = "Unit of Measure".Description;
            DataClassification = CustomerContent;
        }
        field(8; KJ; Decimal)
        {
            Caption = 'KJ';
            DataClassification = CustomerContent;
        }
        field(9; Kcal; Decimal)
        {
            Caption = 'Kcal';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "Code")
        {
            Clustered = true;
        }
    }
}
