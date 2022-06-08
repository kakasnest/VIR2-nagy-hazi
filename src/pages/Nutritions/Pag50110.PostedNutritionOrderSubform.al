page 50110 "Posted Nutrition Order Subform"
{
    Caption = 'Posted Nutrition Subform';
    PageType = ListPart;
    SourceTable = "Posted Nutrition Line";
    Editable = false;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Nutritional No."; Rec."Nutritional No.")
                {
                    ApplicationArea = All;
                }
                field("Serial No."; Rec."Serial No.")
                {
                    ApplicationArea = All;
                }
                field("Nutrition Code"; Rec."Nutrition Code")
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field(Quantity; Rec.Quantity)
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
