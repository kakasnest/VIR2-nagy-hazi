page 50107 "Nutrition Orders"
{
    ApplicationArea = All;
    Caption = 'Nutrition Orders';
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
                    ApplicationArea = All;
                }
                field("Customer No."; Rec."Customer No.")
                {
                    ApplicationArea = All;
                }
                field("Customer Name"; Rec."Customer Name")
                {
                    ApplicationArea = All;
                }
                field("Date"; Rec."Date")
                {
                    ApplicationArea = All;
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
