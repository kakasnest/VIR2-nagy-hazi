page 50104 "Nutrition Setup"
{
    Caption = 'Nutrition Setup';
    PageType = Card;
    SourceTable = "Nutrition Setup";
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
            }
        }
    }
    trigger OnOpenPage()
    begin
        if Rec.IsEmpty() then
            Rec.Insert();
    end;
}
