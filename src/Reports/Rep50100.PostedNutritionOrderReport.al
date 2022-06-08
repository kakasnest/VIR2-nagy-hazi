report 50100 "Posted Nutrition Order Report"
{
    ApplicationArea = All;
    Caption = 'Posted Nutrition Order Report';
    UsageCategory = ReportsAndAnalysis;
    dataset
    {
        dataitem(PostedNutritionHeader; "Posted Nutrition Header")
        {
            column(NutritionalNo; "Nutritional No.")
            {
            }
            column(CustomerNo; "Customer No.")
            {
            }
            column(CustomerName; "Customer Name")
            {
            }
            column(Date; "Date")
            {
            }
            column(Status; Status)
            {
            }
            column(TotalProtein; "Total Protein")
            {
            }
            column(TotalFat; "Total Fat")
            {
            }
            column(TotalCarbohydrate; "Total Carbohydrate")
            {
            }
            column(TotalKJ; "Total KJ")
            {
            }
            column(TotalKcal; "Total Kcal")
            {
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
