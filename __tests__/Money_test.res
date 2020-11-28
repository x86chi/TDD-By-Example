open Jest

open Expect

test("mulitply", () => {
  let money = Money.USD(5.0)

  let d = Money.multiply(money, 2.0)
  expect(d) |> toEqual(Money.USD(10.0))
})

describe("equal", () => {
  let alice = Money.USD(5.0)
  test("same value", () => {
    let bob = alice
    expect(Money.equal(alice, bob)) |> toBe(true)
  })
  test("different value", () => {
    let bob = Money.USD(2.0)
    expect(Money.equal(alice, bob)) |> toBe(false)
  })
})
