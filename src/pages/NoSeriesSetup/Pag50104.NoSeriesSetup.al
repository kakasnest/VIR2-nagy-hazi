page 50104 "No. Series Setup"
{
    Caption = 'No. Series Setup (nagy házi)';
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
                field("No. Series for Nutr Orders"; Rec."No. Series for Nutr Orders")
                {
                    ApplicationArea = All;
                }
                field("No. Series for Macronutrient"; Rec."No. Series for Macronutrient")
                {
                    ApplicationArea = All;
                }
                field("No. Series for P-Nutr Orders"; Rec."No. Series for P-Nutr Orders")
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
