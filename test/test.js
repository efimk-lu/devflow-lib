let expect = require("chai").expect;
let addTwoNumbers = require("../index");

describe("addTwoNumbers()", function() {
  it("should add two numbers", function() {
    let x = 5;
    let y = 1;
    let sum1 = x + y;

    let sum2 = addTwoNumbers(x, y);

    expect(sum2).to.be.equal(sum1);
  });
});
