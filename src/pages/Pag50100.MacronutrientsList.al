page 50100 MacronutrientsList
{
    ApplicationArea = All;
    Caption = 'MacronutrientsList';
    PageType = List;
    SourceTable = Macronutrients;
    UsageCategory = Lists;
    
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
                field(UnitOfMeasurement; Rec.UnitOfMeasurement)
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
