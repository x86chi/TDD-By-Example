open Jest

open Expect

test("mulitply", () => {
  let money = Money.generate(Money.USD, 5)

  expect(Money.multiply(money, 2)) |> toEqual({...money, amount: 10})
})

describe("equal", () => {
  let alice = Money.generate(Money.USD, 5)
  test("same value", () => {
    let bob = alice
    expect(Money.equal(alice, bob)) |> toBe(true)
  })
  test("different value", () => {
    let bob = Money.generate(Money.USD, 2)
    expect(Money.equal(alice, bob)) |> toBe(false)
  })
})
