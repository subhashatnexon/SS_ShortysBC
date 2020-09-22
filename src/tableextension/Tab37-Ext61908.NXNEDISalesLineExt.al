tableextension 61908 NXN_Ext_SalesLine extends "Sales Line"
{
    fields
    {
        field(50011; "Web Personalisation"; Text[150])
        {
            DataClassification = CustomerContent;
            Caption = 'Web Personalisation';
        }
    }

    var
        myInt: Integer;
}