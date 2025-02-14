class AppEndpoints {
  AppEndpoints._();
  static const String BASE_URL = "https://accountspro.eu/api/";
  static const String login = "${BASE_URL}user/userLogin";
  static const String clientInvoice = "${BASE_URL}invoice/getInvoiceClient?page=&limit=&search=";
  static const String createCustomerDocument = "${BASE_URL}invoice/createCustomerDocument";
  static const String getCustomerDocuments = "${BASE_URL}invoice/getDocuments?page=&limit=&search=";
  static const String deleteCustomerDocuments = "${BASE_URL}invoice/deleteDocument";
}