using Whole_Foods_Service as service from '../../srv/service';

annotate service.Plants with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : WERKS,
            Label : '{i18n>Werks}',
        },
        {
            $Type : 'UI.DataField',
            Value : NAME1,
            Label : '{i18n>Name1}',
        },
        {
            $Type : 'UI.DataField',
            Value : STRAS,
            Label : '{i18n>Stras}',
        },
        {
            $Type : 'UI.DataField',
            Value : PSTLZ,
            Label : '{i18n>Pstlz}',
        },
        {
            $Type : 'UI.DataField',
            Value : ORT01,
            Label : '{i18n>Ort01}',
        },
        {
            $Type : 'UI.DataField',
            Value : LANDX,
            Label : '{i18n>Landx}',
        },
        {
            $Type : 'UI.DataField',
            Value : CNTACT,
            Label : '{i18n>Cntact}',
        },
        {
            $Type : 'UI.DataField',
            Value : createdBy,
            Label : '{i18n>Createdby}',
        },
        {
            $Type : 'UI.DataField',
            Value : createdAt,
            Label : '{i18n>Createdat}',
        },
        {
            $Type : 'UI.DataField',
            Value : modifiedBy,
            Label : '{i18n>Modifiedby}',
        },
        {
            $Type : 'UI.DataField',
            Value : modifiedAt,
            Label : '{i18n>Modifiedat}',
        },
    ]
);
