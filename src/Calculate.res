open Money

let multiply = ((money, amount), times): money => (money, amount *. times)

let reduce = money => Bank.reduce(money, USD)

let equal = (alice, bob) => {
  let (c1, a1) = alice
  let (c2, a2) = bob

  if c1 === c2 {
    a1 === a2
  } else {
    reduce(alice) === reduce(bob)
  }
}

let plus = (alice, bob) => {
  let (c1, a1) = alice
  let (c2, a2) = bob

  if c1 === c2 {
    (c1, a1 +. a2)
  } else {
    (USD, reduce(alice) +. reduce(bob))
  }
}
