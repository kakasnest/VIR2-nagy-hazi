page 50100 "SOE Test Orders"
{
    ApplicationArea = All;
    Caption = 'SOE Test Orders';
    PageType = List;
    SourceTable = "SOE Test Header";
    UsageCategory = Lists;
    Editable = false;
    CardPageId = "SOE Test Order";
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Document No."; Rec."Document No.")
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
                field("Created by"; Rec."Created by")
                {
                    ApplicationArea = All;
                }
                field("Created DateTime"; Rec."Created DateTime")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}