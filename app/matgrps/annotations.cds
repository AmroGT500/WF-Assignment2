using Whole_Foods_Service as service from '../../srv/service';

annotate service.MATGRPS with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : MATKL,
            Label : '{i18n>Matkl}',
        },
        {
            $Type : 'UI.DataField',
            Value : MATKLTX,
            Label : '{i18n>Matkltx}',
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
annotate service.MATGRPS with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Material Groups',
            ID : 'MaterialGroups',
            Target : '@UI.FieldGroup#MaterialGroups',
        },
    ],
    UI.FieldGroup #MaterialGroups : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : MATKL,
                Label : '{i18n>Matkl}',
            },{
                $Type : 'UI.DataField',
                Value : MATKLTX,
                Label : '{i18n>Matkltx}',
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
                Value : createdBy,
                Label : '{i18n>Createdby}',
            },{
                $Type : 'UI.DataField',
                Value : createdAt,
                Label : '{i18n>Createdat}',
            },],
    }
);
