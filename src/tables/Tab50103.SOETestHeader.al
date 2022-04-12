table 50103 "SOE Test Header"
{
    Caption = 'SOE Test Header';
    DataClassification = CustomerContent;
    
    fields
    {
        field(1; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            DataClassification = CustomerContent;
        }
        field(2; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            DataClassification = CustomerContent;
            TableRelation = Customer."No.";
            // ValidateTableRelation = false;
            trigger OnValidate()
            var
                Customer: Record Customer;
            begin
                if Customer.Get("Customer No.") then
                    Rec."Customer Name" := Customer.Name
                else
                    Rec."Customer Name" := '';
            end;
        }
        field(3; "Customer Name"; Text[100])
        {
            Caption = 'Customer Name';
            DataClassification = CustomerContent;
        }
        field(4; "Created by"; Code[35])
        {
            Caption = 'Created by';
            DataClassification = CustomerContent;
        }
        field(5; "Created DateTime"; DateTime)
        {
            Caption = 'Created DateTime';
            DataClassification = CustomerContent;
        }
        field(6; "Status"; enum "Sales Document Status"){
            Caption = 'Status';
            ValuesAllowed = 0, 1;
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "Document No.")
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    begin
        Rec."Created by" := UserId();
        Rec."Created DateTime" := CurrentDateTime();
    end;
}