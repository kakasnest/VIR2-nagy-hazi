page 50101 "SOE Test Order Card"
{
    Caption = 'SOE Test Order Card';
    PageType = Document;
    SourceTable = "SOE Test Header";
    
    layout
    {
        area(content)
        {
            group(General)
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
                field(Status;Rec.Status){
                    ApplicationArea = All;
                    Editable = false;
                }
            }
            part(Lines; "SOE Test Order Subpage"){
                SubPageLink = "Document No." = field("Document No.");
                ApplicationArea = All;
            }
        }
    }
    actions{

        area(Processing){
            action(ChangeStatus){
                Caption = 'Change Status';
                Image = Stages;
                ApplicationArea = All;
                Promoted = true;
                PromotedOnly = true;
                PromotedIsBig = true;
                trigger OnAction()
                var
                    NotImplementedErr: Label 'Not implemented %1';
                begin
                    // Message(NotImplementedErr, UserId());
                    SOETestManagement.ChangeStatus(Rec, Rec.Status::Released)
                end;
            }
            action(Reopen){
                Caption = 'Reopen';
                Image = Stages;
                ApplicationArea = All;
                Promoted = true;
                PromotedOnly = true;
                PromotedIsBig = true;
                trigger OnAction()
                var
                    NotImplementedErr: Label 'Not implemented %1';
                begin
                    // Message(NotImplementedErr, UserId());
                    SOETestManagement.ChangeStatus(Rec, Rec.Status::Open)
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
        SOETestManagement: Codeunit "SOE Test Management";
}