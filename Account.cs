using System;
namespace TestAccount
{
    class Account
    {
        private decimal _balance;
        private string _name;
        public string Name
        {
            get { return _name; }
        }
        public decimal Balance
        {
            get { return _balance; }
        }

        public Account(string name, decimal balance)
        {
            this._name = name;
            this._balance = balance;
        }

        //Methods
        public void Deposit(decimal amount)
        {
            _balance += amount;
            Console.WriteLine("Deposit successfully. New balance : " + _balance);
        }
        public void Withdraw(decimal amount)
        {
            _balance -= amount;
            Console.WriteLine("Withdraw successfully. New balance : " + _balance);
        }
        public void Print()
        {
            Console.WriteLine("Account Name: " + _name +
                "\nAccount balance: " + _balance);
        }
    }
}
