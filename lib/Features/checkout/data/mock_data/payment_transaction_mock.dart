import 'package:payment_app/Features/checkout/data/models/paybal/amount_details_model.dart';
import 'package:payment_app/Features/checkout/data/models/paybal/amount_model.dart';
import 'package:payment_app/Features/checkout/data/models/paybal/item_list_model.dart';
import 'package:payment_app/Features/checkout/data/models/paybal/item_model.dart';
import 'package:payment_app/Features/checkout/data/models/paybal/payment_transaction_model.dart';

class PaymentTransactionMock {
  static PaymentTransactionModel get mockPaymentTransactionModel =>
      PaymentTransactionModel(
        amount: AmountModel(
          total: "100",
          currency: "USD",
          details: AmountDetailsModel(
            subtotal: "100",
            shipping: "0",
            shippingDiscount: 0,
          ),
        ),
        description: "The payment transaction description.",
        itemList: ItemListModel(
          items: [
            ItemModel(name: "Apple", quantity: 4, price: "10", currency: "USD"),
            ItemModel(
              name: "Pineapple",
              quantity: 5,
              price: "12",
              currency: "USD",
            ),
          ],
        ),
      );
}
