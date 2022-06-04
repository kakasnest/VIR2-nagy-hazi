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
                    Editable = false;
                }
                field("Total Fat"; Rec."Total Fat")
                {
                    ApplicationArea = All;
                    Editable = false;

                }
                field("Total Carbohydrate"; Rec."Total Carbohydrate")
                {
                    ApplicationArea = All;
                    Editable = false;

                }
                field("Total KJ"; Rec."Total KJ")
                {
                    ApplicationArea = All;
                    Editable = false;

                }
                field("Total Kcal"; Rec."Total Kcal")
                {
                    ApplicationArea = All;
                    Editable = false;

                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
            }
            part(Lines; "Nutrition Order Subform"){
                SubPageLink = "Nutritional No." = field("Nutritional No.");
                ApplicationArea = All;
            }
        }
    }
    actions{
         area(Processing){
            action(Release){
                Caption = 'Lezár';
                Image = Stages;
                ApplicationArea = All;
                Promoted = true;
                PromotedOnly = true;
                PromotedIsBig = true;
                trigger OnAction()
                begin
                    NM.ChangeStatus(Rec, Rec.Status::Released);
                end;
            }
            action(Reopen){
                Caption = 'Újranyit';
                Image = Stages;
                ApplicationArea = All;
                Promoted = true;
                PromotedOnly = true;
                PromotedIsBig = true;
                trigger OnAction()
                begin
                    NM.ChangeStatus(Rec, Rec.Status::Open);
                end;
            }
            action("Export to XML"){
                Caption = 'Exportálás XML formátumban';
                Image = Export;
                ApplicationArea = All;
                Promoted = true;
                PromotedOnly = true;
                PromotedIsBig = true;
                PromotedCategory = Report;

                trigger OnAction()
                begin
                    CurrPage.SetSelectionFilter(Rec);
                    Xmlport.Run(50100, false, false, Rec);
                end;
            }
        }
    }
    trigger OnOpenPage()
    begin
        PageEditable := Rec.Status = Rec.Status::Open;
        CurrPage.Editable(PageEditable)
    end;
    var
    PageEditable: Boolean;
    NM : Codeunit "Nutrition Management";
}
