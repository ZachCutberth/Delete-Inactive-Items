alter table rps.INVN_SBS_PRICE
  drop constraint INVN_SBS_ITEM_INVNSBSPRICE;

alter table rps.INVN_SBS_PRICE
  add constraint INVN_SBS_ITEM_INVNSBSPRICE foreign key (INVN_SBS_ITEM_SID)
  references rps.INVN_SBS_ITEM (SID) ON DELETE CASCADE;


alter table rps.INVN_SBS_EXTEND
  drop constraint INVN_SBS_ITEM_INVN_SBS_EXTEND;

alter table rps.INVN_SBS_EXTEND
  add constraint INVN_SBS_ITEM_INVN_SBS_EXTEND foreign key (INVN_SBS_ITEM_SID)
  references rps.INVN_SBS_ITEM (SID) ON DELETE CASCADE;


alter table rps.INVN_ITEM_IMAGE
  drop constraint INVNSBSITEM_INVN_ITEM_IMAGE;

alter table rps.INVN_ITEM_IMAGE
  add constraint INVNSBSITEM_INVN_ITEM_IMAGE foreign key (INVN_ITEM_UID)
  references rps.INVN_SBS_ITEM (SID) ON DELETE CASCADE;


alter table rps.INVN_MEDIA
  drop constraint INVNSBSITEM2_INVN_MEDIA;

alter table rps.INVN_MEDIA
  add constraint INVNSBSITEM2_INVN_MEDIA foreign key (INVN_SBS_ITEM_SID)
  references rps.INVN_SBS_ITEM (SID) ON DELETE CASCADE;


alter table rps.INVN_SBS_ITEM_LOT
  drop constraint INVN_INVN_SBS_ITEM_LOT;

alter table rps.INVN_SBS_ITEM_LOT
  add constraint INVN_INVN_SBS_ITEM_LOT foreign key (INVN_SBS_ITEM_SID)
  references rps.INVN_SBS_ITEM (SID) ON DELETE CASCADE;


alter table rps.INVN_SBS_ITEM_LTY
  drop constraint INVNSBSITEM_INVNSBSITEM_LTY;

alter table rps.INVN_SBS_ITEM_LTY
  add constraint INVNSBSITEM_INVNSBSITEM_LTY foreign key (INVN_SBS_ITEM_SID)
  references rps.INVN_SBS_ITEM (SID) ON DELETE CASCADE;


alter table rps.INVN_SBS_VENDOR
  drop constraint INVNSBSITEM2_INVNSBSVENDOR;

alter table rps.INVN_SBS_VENDOR
  add constraint INVNSBSITEM2_INVNSBSVENDOR foreign key (INVN_SBS_ITEM_SID)
  references rps.INVN_SBS_ITEM (SID) ON DELETE CASCADE;

delete from invn_sbs_item where active = 0;

commit;

alter table rps.INVN_SBS_PRICE
  drop constraint INVN_SBS_ITEM_INVNSBSPRICE;

alter table rps.INVN_SBS_PRICE
  add constraint INVN_SBS_ITEM_INVNSBSPRICE foreign key (INVN_SBS_ITEM_SID)
  references rps.INVN_SBS_ITEM (SID);


alter table rps.INVN_SBS_EXTEND
  drop constraint INVN_SBS_ITEM_INVN_SBS_EXTEND;

alter table rps.INVN_SBS_EXTEND
  add constraint INVN_SBS_ITEM_INVN_SBS_EXTEND foreign key (INVN_SBS_ITEM_SID)
  references rps.INVN_SBS_ITEM (SID);


alter table rps.INVN_ITEM_IMAGE
  drop constraint INVNSBSITEM_INVN_ITEM_IMAGE;

alter table rps.INVN_ITEM_IMAGE
  add constraint INVNSBSITEM_INVN_ITEM_IMAGE foreign key (INVN_ITEM_UID)
  references rps.INVN_SBS_ITEM (SID);


alter table rps.INVN_MEDIA
  drop constraint INVNSBSITEM2_INVN_MEDIA;

alter table rps.INVN_MEDIA
  add constraint INVNSBSITEM2_INVN_MEDIA foreign key (INVN_SBS_ITEM_SID)
  references rps.INVN_SBS_ITEM (SID);


alter table rps.INVN_SBS_ITEM_LOT
  drop constraint INVN_INVN_SBS_ITEM_LOT;

alter table rps.INVN_SBS_ITEM_LOT
  add constraint INVN_INVN_SBS_ITEM_LOT foreign key (INVN_SBS_ITEM_SID)
  references rps.INVN_SBS_ITEM (SID);


alter table rps.INVN_SBS_ITEM_LTY
  drop constraint INVNSBSITEM_INVNSBSITEM_LTY;

alter table rps.INVN_SBS_ITEM_LTY
  add constraint INVNSBSITEM_INVNSBSITEM_LTY foreign key (INVN_SBS_ITEM_SID)
  references rps.INVN_SBS_ITEM (SID);


alter table rps.INVN_SBS_VENDOR
  drop constraint INVNSBSITEM2_INVNSBSVENDOR;

alter table rps.INVN_SBS_VENDOR
  add constraint INVNSBSITEM2_INVNSBSVENDOR foreign key (INVN_SBS_ITEM_SID)
  references rps.INVN_SBS_ITEM (SID);