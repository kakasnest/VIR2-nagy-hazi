table 50105 "Macronutrients Setup"
{
    Caption = 'No. Series Macronutrients';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            DataClassification = CustomerContent;
        }
        field(2; "No. Series for Macronutrient"; Code[20])
        {
            Caption = 'No. Series for Macronutrient';
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
