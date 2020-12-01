open Money

let rating = 2.0

exception Different(string)

let reduce = (money, currency) =>
  switch (money, currency) {
  | ((CHF, amount), USD) => amount /. rating
  | ((USD, amount), CHF) => amount *. rating
  | ((USD, amount), USD) => amount
  | _ => raise(Different("Can't reduce CHF to CHF"))
  }
