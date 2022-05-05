page 50107 Nutritions
{
    ApplicationArea = All;
    Caption = 'Nutritions';
    PageType = List;
    SourceTable = "Nutrition Header";
    UsageCategory = Lists;
    Editable = false;
    CardPageId = "Nutrition Order";
    
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
                }
                field("Customer No."; Rec."Customer No.")
                {
                    ToolTip = 'Specifies the value of the Vevőkód field.';
                    ApplicationArea = All;
                }
                field("Customer Name"; Rec."Customer Name")
                {
                    ToolTip = 'Specifies the value of the Vevő neve field.';
                    ApplicationArea = All;
                }
                field("Date"; Rec."Date")
                {
                    ToolTip = 'Specifies the value of the Dátum field.';
                    ApplicationArea = All;
                }
                field(Status; Rec.Status)
                {
                    ToolTip = 'Specifies the value of the Státusz field.';
                    ApplicationArea = All;
                }
            }
        }
    }
}
