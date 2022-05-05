page 50109 "Nutrition Order Subform"
{
    Caption = 'Nutrition Order Subform';
    PageType = ListPart;
    SourceTable = "Nutrition Line";
    AutoSplitKey = true;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Nutritional No."; Rec."Nutritional No.")
                {
                    ToolTip = 'Specifies the value of the Táplálkozási kód field.';
                    ApplicationArea = All;
                    ShowMandatory = true;
                }
                field("Serial No."; Rec."Serial No.")
                {
                    ToolTip = 'Specifies the value of the Sorszám field.';
                    ApplicationArea = All;
                    ShowMandatory = true;
                    
                }
                field("Nutrition Code"; Rec."Nutrition Code")
                {
                    ToolTip = 'Specifies the value of the Tápanyag kód field.';
                    ApplicationArea = All;
                    ShowMandatory = true;
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Megnevezés field.';
                    ApplicationArea = All;
                }
                field(Quantity; Rec.Quantity)
                {
                    ToolTip = 'Specifies the value of the Mennyiség field.';
                    ApplicationArea = All;
                    ShowMandatory = true;
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
