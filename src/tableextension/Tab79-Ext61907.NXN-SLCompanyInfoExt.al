tableextension 61907 "NXN SLCompanyInfo Ext" extends "Company Information" //79
{
    fields
    {
        field(61900; "NXN Wine Logo"; Blob)
        {
            DataClassification = CustomerContent;
            Subtype = Bitmap;
            Caption = 'Wine.com Picture';
        }
    }

}