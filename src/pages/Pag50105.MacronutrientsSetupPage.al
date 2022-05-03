page 50105 "Macronutrients Setup Page"
{
    Caption = 'Macronutrients Setup Page';
    PageType = Card;
    SourceTable = "Macronutrients Setup";
    UsageCategory = Administration;
    ApplicationArea = All;
    
    layout
    {
        area(content)
        {
            group(General)
            {
                field("No. Series for Macronutrient"; Rec."No. Series for Macronutrient")
                {
                    ToolTip = 'Specifies the value of the No. Series for Macronutrient field.';
                    ApplicationArea = All;
                }
            }
        }
    }
    trigger OnOpenPage()
    begin
        if Rec.IsEmpty() then
            Rec.Insert();
    end;
}
