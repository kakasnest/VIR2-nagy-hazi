page 50103 "Macronutrients"
{
    ApplicationArea = All;
    Caption = 'Macronutrients';
    PageType = List;
    SourceTable = Macronutrients;
    UsageCategory = Lists;
    Editable = false;
    CardPageId = "Macronutrient Entry";
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Code"; Rec."Code")
                {
                    ToolTip = 'Specifies the value of the Kód field.';
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Leírás field.';
                    ApplicationArea = All;
                }
                field(Protein; Rec.Protein)
                {
                    ToolTip = 'Specifies the value of the Fehérje field.';
                    ApplicationArea = All;
                }
                field(Fat; Rec.Fat)
                {
                    ToolTip = 'Specifies the value of the Zsír field.';
                    ApplicationArea = All;
                }
                field(Carbohydrate; Rec.Carbohydrate)
                {
                    ToolTip = 'Specifies the value of the Szénhidrát field.';
                    ApplicationArea = All;
                }
                field("Unit of Measure Code"; Rec."Unit of Measure Code")
                {
                    ToolTip = 'Specifies the value of the Mértékegység kódja field.';
                    ApplicationArea = All;
                }
                field(KJ; Rec.KJ)
                {
                    ToolTip = 'Specifies the value of the KJ field.';
                    ApplicationArea = All;
                }
                field(Kcal; Rec.Kcal)
                {
                    ToolTip = 'Specifies the value of the Kcal field.';
                    ApplicationArea = All;
                }
            }
        }
    }
}
