report 50100 CustomerCategoryList
{
    RDLCLayout = 'Layout\CustomerCategoryListRDLC.rdl';
    WordLayout = 'Layout\CustomerCategoryListWord.docx';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'Customer Category List';
    dataset
    {
        dataitem(CustomerCategory; "Customer Category")
        {
            column(No; No) { }
            column(Description; Description) { }
            column(TotalCustomersForCategory; TotalCustomersForCategory) { }
            column(FreeGiftsAvailable; FreeGiftsAvailable) { }

            trigger OnAfterGetRecord()
            var

            begin
                CalcFields(TotalCustomersForCategory);
            end;

        }
    }

}