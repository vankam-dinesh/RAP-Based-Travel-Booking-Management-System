
@EndUserText.label : 'Travel Booking Table'
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #RESTRICTED
define table ztb_travel_booking {

  key mandt        : abap.clnt not null;
  key travel_id    : abap.numc(10) not null;

  customer_id      : abap.numc(10);
  booking_date     : abap.dats;
  flight_date      : abap.dats;

  flight_price     : abap.curr(15,2)
                     with currency currency_code;

  currency_code    : abap.cuky;
  status           : abap.char(20);

  created_by       : abp_creation_user;
  created_at       : abp_creation_tstmpl;
  last_changed_by  : abp_locinst_lastchange_user;
  last_changed_at  : abp_locinst_lastchange_tstmpl;
}
