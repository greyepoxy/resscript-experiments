open Vitest

describe("Counter", _ => {
  it("should do basic thing", t => {
    open Expect

    t->assertions(1)

    expect(6)->toBe(6)
  })
})
