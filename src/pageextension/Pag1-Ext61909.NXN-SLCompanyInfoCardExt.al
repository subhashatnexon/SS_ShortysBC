pageextension 61909 "NXN SLCompanyInfo Card" extends "Company Information" //1
{
    layout
    {
        addlast("System Indicator")
        {
            group("Wine.com.au")
            {

                field("NXN Wine Picture"; "NXN Wine Logo")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Wine Picture field';
                    trigger OnValidate()
                    begin
                        CurrPage.SaveRecord();
                    end;
                }
            }
        }
    }

    actions
    {
    }
}