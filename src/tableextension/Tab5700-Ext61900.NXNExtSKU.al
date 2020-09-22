tableextension 61900 "NXN SKU Ext" extends "Stockkeeping Unit"
{
    fields
    {
        // Add changes to table fields here
        field(61900; "NXN DropShip Purchase Code"; Code[10])
        {
            Caption = 'DropShip Purchase Code';
            DataClassification = CustomerContent;
            TableRelation = Purchasing;
        }
    }

    var
        myInt: Integer;
}