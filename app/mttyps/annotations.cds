using Whole_Foods_Service as service from '../../srv/service';

annotate service.MTTYPS with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : MTART,
            Label : '{i18n>Mtart}',
        },
        {
            $Type : 'UI.DataField',
            Value : MTARTTX,
            Label : '{i18n>Mtarttx}',
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
annotate service.MTTYPS with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Material Types',
            ID : 'MaterialTypes',
            Target : '@UI.FieldGroup#MaterialTypes',
        },
    ],
    UI.FieldGroup #MaterialTypes : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : MTARTTX,
                Label : '{i18n>Mtarttx}',
            },{
                $Type : 'UI.DataField',
                Value : MTART,
                Label : '{i18n>Mtart}',
            },{
                $Type : 'UI.DataField',
                Value : createdAt,
                Label : '{i18n>Createdat}',
            },{
                $Type : 'UI.DataField',
                Value : createdBy,
                Label : '{i18n>Createdby}',
            },{
                $Type : 'UI.DataField',
                Value : modifiedAt,
                Label : '{i18n>Modifiedat}',
            },{
                $Type : 'UI.DataField',
                Value : modifiedBy,
                Label : '{i18n>Modifiedby}',
            },],
    }
);
