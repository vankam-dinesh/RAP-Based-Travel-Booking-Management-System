
@EndUserText.label: 'Travel Booking Root View'
define root view entity ZI_TRAVEL_BOOKING
  as select from ztb_travel_booking
{
  key travel_id,
      customer_id,
      booking_date,
      flight_date,

  @Semantics.amount.currencyCode: 'CurrencyCode'
      flight_price   as FlightPrice,

      currency_code  as CurrencyCode,
      status
}
