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
                    ApplicationArea = All;
                    ShowMandatory = true;
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
                field("Total Protein"; Rec."Total Protein")
                {
                    ApplicationArea = All;
                    DrillDown = true;
                    Editable = false;

                    trigger OnDrillDown()
                    var
                        LinesR: Record "Nutrition Line";
                        LinesP: Page "Nutrition Order Lines";

                    begin
                        LinesR.SetRange("Nutritional No.", Rec."Nutritional No.");
                        LinesP.SetRecord(LinesR);
                        LinesP.Run()
                    end;
                }
                field("Total Fat"; Rec."Total Fat")
                {
                    ApplicationArea = All;
                    Editable = false;
                    DrillDown = true;

                    trigger OnDrillDown()
                    var
                        LinesR: Record "Nutrition Line";
                        LinesP: Page "Nutrition Order Lines";

                    begin
                        LinesR.SetRange("Nutritional No.", Rec."Nutritional No.");
                        LinesP.SetRecord(LinesR);
                        LinesP.Run()
                    end;
                }
                field("Total Carbohydrate"; Rec."Total Carbohydrate")
                {
                    ApplicationArea = All;
                    Editable = false;
                    DrillDown = true;

                    trigger OnDrillDown()
                    var
                        LinesR: Record "Nutrition Line";
                        LinesP: Page "Nutrition Order Lines";

                    begin
                        LinesR.SetRange("Nutritional No.", Rec."Nutritional No.");
                        LinesP.SetRecord(LinesR);
                        LinesP.Run()
                    end;
                }
                field("Total KJ"; Rec."Total KJ")
                {
                    ApplicationArea = All;
                    Editable = false;
                    DrillDown = true;

                    trigger OnDrillDown()
                    var
                        LinesR: Record "Nutrition Line";
                        LinesP: Page "Nutrition Order Lines";

                    begin
                        LinesR.SetRange("Nutritional No.", Rec."Nutritional No.");
                        LinesP.SetRecord(LinesR);
                        LinesP.Run()
                    end;
                }
                field("Total Kcal"; Rec."Total Kcal")
                {
                    ApplicationArea = All;
                    Editable = false;
                    DrillDown = true;

                    trigger OnDrillDown()
                    var
                        LinesR: Record "Nutrition Line";
                        LinesP: Page "Nutrition Order Lines";

                    begin
                        LinesR.SetRange("Nutritional No.", Rec."Nutritional No.");
                        LinesP.SetRecord(LinesR);
                        LinesP.Run()
                    end;
                }
            }
            part(Lines; "Nutrition Order Subform"){
                SubPageLink = "Nutritional No." = field("Nutritional No.");
                ApplicationArea = All;
            }
        }
    }
}
