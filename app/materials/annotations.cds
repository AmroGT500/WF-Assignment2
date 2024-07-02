using Whole_Foods_Service as service from '../../srv/service';

annotate service.Materials with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : MATNR,
            Label : '{i18n>Matnr}',
        },
        {
            $Type : 'UI.DataField',
            Value : MATKL,
            Label : '{i18n>Matkl}',
        },
        {
            $Type : 'UI.DataField',
            Value : MTART,
            Label : '{i18n>Mtart}',
        },
        {
            $Type : 'UI.DataField',
            Value : UOM,
            Label : '{i18n>Uom}',
        },
        {
            $Type : 'UI.DataField',
            Value : MAKTX,
            Label : '{i18n>Maktx}',
        },
        {
            $Type : 'UI.DataField',
            Value : createdAt,
            Label : '{i18n>Createdat}',
        },
        {
            $Type : 'UI.DataField',
            Value : createdBy,
            Label : '{i18n>Createdby}',
        },
        {
            $Type : 'UI.DataField',
            Value : modifiedAt,
            Label : '{i18n>Modifiedat}',
        },
        {
            $Type : 'UI.DataField',
            Value : modifiedBy,
            Label : '{i18n>Modifiedby}',
        },
    ]
);
annotate service.Materials with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Materials',
            ID : 'Materials',
            Target : '@UI.FieldGroup#Materials',
        },
    ],
    UI.FieldGroup #Materials : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : createdAt,
                Label : '{i18n>Createdat}',
            },{
                $Type : 'UI.DataField',
                Value : createdBy,
                Label : '{i18n>Createdby}',
            },{
                $Type : 'UI.DataField',
                Value : GROUP_MATKL,
                Label : '{i18n>Groupmatkl}',
            },{
                $Type : 'UI.DataField',
                Value : MAKTX,
                Label : '{i18n>Maktx}',
            },{
                $Type : 'UI.DataField',
                Value : MATNR,
                Label : '{i18n>Matnr}',
            },{
                $Type : 'UI.DataField',
                Value : modifiedAt,
                Label : '{i18n>Modifiedat}',
            },{
                $Type : 'UI.DataField',
                Value : modifiedBy,
                Label : '{i18n>Modifiedby}',
            },{
                $Type : 'UI.DataField',
                Value : MTART,
                Label : '{i18n>Mtart}',
            },{
                $Type : 'UI.DataField',
                Value : UOM,
                Label : '{i18n>Uom}',
            },],
    }
);
