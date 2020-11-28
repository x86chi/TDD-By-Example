open Jest

open Expect

describe("reduce", () => {
  test("USD to CHF", () => {
    let alice = Bank.reduce(Money.USD(5.0), Bank.CHF)
    expect(Money.equal(alice, Money.CHF(10.0))) |> toBe(true)
  })
  test("CHF to USD", () => {
    let alice = Bank.reduce(Money.CHF(5.0), Bank.USD)
    expect(Money.equal(alice, Money.USD(2.5))) |> toBe(true)
  })
})
