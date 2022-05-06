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
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field(Protein; Rec.Protein)
                {
                    ApplicationArea = All;
                }
                field(Fat; Rec.Fat)
                {
                    ApplicationArea = All;
                }
                field(Carbohydrate; Rec.Carbohydrate)
                {
                    ApplicationArea = All;
                }
                field("Unit of Measure Code"; Rec."Unit of Measure Code")
                {
                    ApplicationArea = All;
                }
                field(KJ; Rec.KJ)
                {
                    ApplicationArea = All;
                }
                field(Kcal; Rec.Kcal)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
