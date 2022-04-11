table 50102 NutritionLine
{
    Caption = 'NutritionLine';
    DataClassification = CustomerContent;
    
    fields
    {   
        field(1; NutritionalNumber; Code[10])
        {
            Caption = 'Táplálkozási kód';
            DataClassification = CustomerContent;
        }
        field(2; SerialNumber; Code[20])
        {
            Caption = 'Sorszám';
            DataClassification = CustomerContent;
        }
        field(3; NutritionCode; Code[10])
        {
            Caption = 'Tápanyag kód';
            DataClassification = CustomerContent;
            TableRelation = Macronutrients."Code";

            trigger OnValidate()
            var
                Nutrient: Record Macronutrients;
            begin
                if Nutrient.Get(NutritionCode) then
                    Rec."Description" := Nutrient.Description
                else
                    Rec."Description" := '';
            end;
        }
        field(4; Description; Text[100])
        {
            Caption = 'Megnevezés';
            DataClassification = CustomerContent;
        }
        field(5; Quantity; Integer)
        {
            Caption = 'Mennyiség';
            DataClassification = CustomerContent;

            trigger OnValidate()
            var
                Nutrient: Record Macronutrients;
            begin
                if Nutrient.Get(NutritionCode) then
                    begin
                    Rec.Protein := Nutrient.Protein * Quantity;
                    Rec.Fat := Nutrient.Fat * Quantity;
                    Rec.Carbohydrate := Nutrient.Carbohydrate * Quantity;
                    Rec.KJ := Nutrient.KJ * Quantity;
                    Rec.Kcal := Nutrient.Kcal * Quantity;
                    end
                else
                    begin
                    Rec.Protein := 0;
                    Rec.Fat := 0;
                    Rec.Carbohydrate := 0;
                    Rec.KJ := 0;
                    Rec.Kcal := 0;
                    end
            end;
        }
        field(6; Protein; Decimal)
        {
            Caption = 'Fehérje';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(7; Fat; Decimal)
        {
            Caption = 'Zsír';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(8; Carbohydrate; Decimal)
        {
            Caption = 'Szénhidrát';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(9; KJ; Decimal)
        {
            Caption = 'KJ';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(10; Kcal; Decimal)
        {
            Caption = 'Kcal';
            DataClassification = CustomerContent;
            Editable = false;
        }
    }
    keys
    {
        key(PK; SerialNumber)
        {
            Clustered = true;
        }
    }
}
