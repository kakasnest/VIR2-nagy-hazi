page 50104 "No. Series Setup"
{
    Caption = 'Számozási körök kezelése (nagy házi)';
    PageType = Card;
    SourceTable = "No. Series Setup";
    UsageCategory = Administration;
    ApplicationArea = All;
    
    layout
    {
        area(content)
        {
            group(General)
            {
                field("No. Series for Nutrient"; Rec."No. Series for Nutrient")
                {
                    ApplicationArea = All;
                }
                field("No. Series for Macronutrient"; Rec."No. Series for Macronutrient")
                {
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
