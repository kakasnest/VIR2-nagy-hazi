table 50105 "No. Series Setup"
{
    Caption = 'No. Series Setup';
    DataClassification = CustomerContent;
    
    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            DataClassification = CustomerContent;
        }
        field(2; "No. Series for Macronutrient"; Code[20])
        {
            Caption = 'Macrotápanyagok számozási köre';
            DataClassification = CustomerContent;
            TableRelation = "No. Series".Code;
            ValidateTableRelation = true;
        }
        field(3; "No. Series for Nutr Orders"; Code[20])
        {
            Caption = 'Tápanyag rendelések számozási köre';
            DataClassification = CustomerContent;
            TableRelation = "No. Series".Code;
            ValidateTableRelation = true;
        }
        field(4; "No. Series for P-Nutr Orders"; Code[20])
        {
            Caption = 'Könyvelt tápanyag rendelések számozási köre';
            DataClassification = CustomerContent;
            TableRelation = "No. Series".Code;
            ValidateTableRelation = true;
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
