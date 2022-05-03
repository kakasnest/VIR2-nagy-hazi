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
        field(6; "Unit of Measure"; Text[50]){
            Caption = 'Mértékegység';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(7; KJ; Decimal)
        {
            Caption = 'KJ';
            DataClassification = CustomerContent;
        }
        field(8; Kcal; Decimal)
        {
            Caption = 'Kcal';
            DataClassification = CustomerContent;
        }
        field(9; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Mértékegység kódja';
            DataClassification = CustomerContent;
            TableRelation = "Unit of Measure";

            trigger OnValidate()
            var
                Measure: Record "Unit of Measure";
            begin
                if Measure.Get("Unit Of Measure Code") then
                    Rec."Unit of Measure" := Measure.Description
                else
                    Rec."Unit of Measure" := '';
            end;
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
        Setup: Record "Macronutrients Setup";
        NoMgmt: Codeunit NoSeriesManagement;
    begin
        if Rec.Code = '' then
        begin
            Setup.Get();
            Rec.Code := NoMgmt.GetNextNo(Setup."No. Series for Macronutrient", WorkDate(), true);
        end;
    end;
}
