/// <summary>
/// XmlPort Nutrition Order (ID 50100).
/// </summary>
xmlport 50100 "Nutrition Order"
{
    Caption = 'Nutrition Order';
    schema
    {
        textelement(RootNodeName)
        {
            tableelement(NutritionHeader; "Nutrition Header")
            {
                fieldelement(NutritionalNo; NutritionHeader."Nutritional No.")
                {
                }
                fieldelement(CustomerNo; NutritionHeader."Customer No.")
                {
                }
                fieldelement(CustomerName; NutritionHeader."Customer Name")
                {
                }
                fieldelement(Date; NutritionHeader."Date")
                {
                }
                fieldelement(Status; NutritionHeader.Status)
                {
                }
                fieldelement(TotalProtein; NutritionHeader."Total Protein")
                {
                }
                fieldelement(TotalFat; NutritionHeader."Total Fat")
                {
                }
                fieldelement(TotalCarbohydrate; NutritionHeader."Total Carbohydrate")
                {
                }
                fieldelement(TotalKJ; NutritionHeader."Total KJ")
                {
                }
                fieldelement(TotalKcal; NutritionHeader."Total Kcal")
                {
                }
                tableelement(NutritionLine;"Nutrition Line"){
                    LinkTable = NutritionHeader;
                    LinkFields = "Nutritional No." = field("Nutritional No.");

                    fieldelement(NutritionalNo; NutritionLine."Nutritional No.")
                    {
                    }
                    fieldelement(SerialNo; NutritionLine."Serial No.")
                    {
                    }
                    fieldelement(NutritionCode; NutritionLine."Nutrition Code")
                    {
                    }
                    fieldelement(Description; NutritionLine.Description)
                    {
                    }
                    fieldelement(Quantity; NutritionLine.Quantity)
                    {
                    }
                    fieldelement(Protein; NutritionLine.Protein)
                    {
                    }
                    fieldelement(Fat; NutritionLine.Fat)
                    {
                    }
                    fieldelement(Carbohydrate; NutritionLine.Carbohydrate)
                    {
                    }
                    fieldelement(KJ; NutritionLine.KJ)
                    {
                    }
                    fieldelement(Kcal; NutritionLine.Kcal)
                    {
                    }
                }
            }
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
}
