tableextension 61911 NXN_Ext_SalesCrMemotLine extends "Sales Cr.Memo Line"
{
    fields
    {

        field(50011; "Web Personalization"; Text[250])
        {
            DataClassification = CustomerContent;
            Caption = 'Web Personalization';
            Editable = false;
        }

    }

    var
        myInt: Integer;
}