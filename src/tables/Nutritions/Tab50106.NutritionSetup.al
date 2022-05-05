table 50106 "Nutrition Setup"
{
    Caption = 'Nutrition Setup';
    DataClassification = CustomerContent;
    
    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            DataClassification = CustomerContent;
        }
        field(2; "No. Series for Nutrient"; Code[20])
        {
            Caption = 'No. Series for Nutrient';
            DataClassification = CustomerContent;
            TableRelation = "No. Series".Code;
        }
    }
    keys
    {
        key(PK; "Code")
        {
            Clustered = true;
        }
    }
}
