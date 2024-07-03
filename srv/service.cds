using { Whole_Foods as wf } from '../db/schema';

service Whole_Foods_Service {
    @odata.draft.enabled entity Plants as projection on wf.Plants;

    @odata.draft.enabled entity Materials as projection on wf.Materials;

    @odata.draft.enabled entity MATGRPS as projection on wf.MATGRPS;

    @odata.draft.enabled entity MTTYPS as projection on wf.MTTYPS;

    @odata.draft.enabled entity PartnerInfo as projection on wf.PartnerInfo;

    @odata.draft.enabled entity PartnerType as projection on wf.PartnerType;

    @odata.draft.enabled entity Roles as projection on wf.Roles;

    @odata.draft.enabled entity PartnerRole as projection on wf.PartnerRole;
}