open Jest
open Expect

open Money

test("mulitply", () => {
  let money = (USD, 5.0)

  let d = Calculate.multiply(money, 2.0)
  expect(d) |> toEqual((USD, 10.0))
})

describe("equal", () => {
  let alice = (USD, 5.0)
  describe("same currency", () => {
    test("same value", () => {
      let bob = alice
      expect(Calculate.equal(alice, bob)) |> toBe(true)
    })
    test("different value", () => {
      let bob = (USD, 2.0)
      expect(Calculate.equal(alice, bob)) |> toBe(false)
    })
  })
  test("different currecny", () => {
    let bob = (CHF, 10.0)
    expect(Calculate.equal(alice, bob)) |> toBe(true)
  })
})

describe("plus", () => {
  let alice = (USD, 5.0)
  test("same currency", () => {
    let bob = alice
    let output = Calculate.plus(alice, bob)
    expect(Calculate.equal(output, (USD, 10.0))) |> toBe(true)
  })

  describe("different currecny", () => {
    let bob = (CHF, 10.0)
    test("USD + CHF", () => {
      let output = Calculate.plus(alice, bob)
      expect(Calculate.equal(output, (USD, 10.0))) |> toBe(true)
    })
    test("CHF + USD", () => {
      let output = Calculate.plus(bob, alice)
      expect(Calculate.equal(output, (USD, 10.0))) |> toBe(true)
    })
  })
})
