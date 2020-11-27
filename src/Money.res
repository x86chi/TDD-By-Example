type currency = Dollar | Franc
type money = {currency: currency, amount: int}

let generate = (currency, amount) => {currency: currency, amount: amount}

let multiply = (money, times) => {
  let multiplied = money.amount * times
  {...money, amount: multiplied}
}

exception Different(string)

let equal = (alice, bob) => {
  if alice.currency !== bob.currency {
    raise(Different("Not ready to compare different currency"))
  }
  alice.amount === bob.amount
}
