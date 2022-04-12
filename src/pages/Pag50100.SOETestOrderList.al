page 50100 "SOE Test Order List"
{
    ApplicationArea = All;
    Caption = 'SOE Test Order List';
    PageType = List;
    SourceTable = "SOE Test Header";
    UsageCategory = Lists;
    Editable = false;
    CardPageId = "SOE Test Order Card";
    
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