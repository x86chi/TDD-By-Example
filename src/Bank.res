type currency = USD | CHF

let rating = 2.0

exception Different(string)

let reduce = (money, currency) =>
  switch (money, currency) {
  | (Money.CHF(amount), USD) => amount /. rating
  | (Money.USD(amount), CHF) => amount *. rating
  | (Money.USD(amount), USD) => amount
  | _ => raise(Different("Can't reduce CHF to CHF"))
  }
