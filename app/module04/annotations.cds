using RiskService as service from '../../srv/schema';
annotate service.Risks with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'title',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Label : 'owner',
                Value : owner,
            },
            {
                $Type : 'UI.DataField',
                Label : 'prio_code',
                Value : prio_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'descr',
                Value : descr,
            },
            {
                $Type : 'UI.DataField',
                Label : 'impact',
                Value : impact,
            },
            {
                $Type : 'UI.DataField',
                Label : 'criticality',
                Value : criticality,
            },
            {
                $Type : 'UI.DataField',
                Label : 'PrioCriticality',
                Value : PrioCriticality,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.CollectionFacet',
            Label : 'Risk Details',
            ID : 'RiskDetails',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'Form1',
                    ID : 'Form1',
                    Target : '@UI.FieldGroup#Form1',
                },
            ],
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Title}',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Owner}',
            Value : owner,
            ![@UI.Importance] : #High,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Prority}',
            Value : prio_code,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Description}',
            Value : descr,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Impace',
            Value : impact,
        },
    ],
    UI.SelectionFields : [
        prio_code,
    ],
    UI.FieldGroup #Form1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : miti.ID,
                Label : 'ID',
            },
            {
                $Type : 'UI.DataField',
                Value : miti.owner,
                Label : 'owner',
            },
            {
                $Type : 'UI.DataField',
                Value : miti.timeline,
                Label : 'timeline',
            },
        ],
    },
);

annotate service.Risks with {
    prio @Common.Label : '{i18n>Priority}'
};

