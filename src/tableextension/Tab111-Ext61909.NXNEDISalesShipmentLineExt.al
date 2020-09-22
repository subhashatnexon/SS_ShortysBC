tableextension 61909 NXN_Ext_SalesShipmentLine extends "Sales Shipment Line"
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