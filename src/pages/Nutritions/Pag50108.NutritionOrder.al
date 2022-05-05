page 50108 "Nutrition Order"
{
    Caption = 'Nutrition Order';
    PageType = Document;
    SourceTable = "Nutrition Header";
    
    layout
    {
        area(content)
        {
            group(General)
            {
                field("Nutritional No."; Rec."Nutritional No.")
                {
                    ToolTip = 'Specifies the value of the Táplálkozási kód field.';
                    ApplicationArea = All;
                    ShowMandatory = true;
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
            part(Lines; "Nutrition Order Subform"){
                SubPageLink = "Nutritional No." = field("Nutritional No.");
                ApplicationArea = All;
            }
        }
    }
}
