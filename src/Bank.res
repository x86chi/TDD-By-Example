type currency = USD | CHF

let rating = 2.0

let reduce = (money, currency) =>
  switch (money, currency) {
  | (Money.CHF(amount), USD) => Money.USD(amount /. rating)
  | (Money.USD(amount), CHF) => Money.CHF(amount *. rating)
  | _ => money
  }
