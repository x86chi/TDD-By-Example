type currency = Dollar | Franc
type money = {currency: currency, amount: int}

let generate = (currency, amount) => {currency: currency, amount: amount}

let multiply = (money, times) => {
  let multiplied = money.amount * times
  {...money, amount: multiplied}
}
