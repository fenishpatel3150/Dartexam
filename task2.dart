class BankAccount {
  String _accountNumber;
  int _balance;
  String _ownerName;

  BankAccount(this._accountNumber, this._balance, this._ownerName);

  void credit(int amount) {
    _balance += amount;
  }

  bool debit(int amount) {
    if (_balance >= amount) {
      _balance -= amount;
      return true;
    } else {
      return false;
    }
  }

  void displyed() {
    print(_accountNumber);
    print(_balance);
    print(_ownerName);
  }
}

void main() {
  BankAccount account = BankAccount('25585566', 5000, "fenish");

  account.credit(200);

  if (account.debit(3000)) {
    print('success');
  } else {
    print('found');
  }
}
