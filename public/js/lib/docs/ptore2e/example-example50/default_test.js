describe("", function() {
  var rootEl;
  beforeEach(function() {
    rootEl = browser.rootEl;
    browser.get("examples/example-example50/index.html");
  });
  
  it('should check both checkBoxes', function() {
    expect(element(by.id('checkSlave')).getAttribute('checked')).toBeFalsy();
    element(by.model('master')).click();
    expect(element(by.id('checkSlave')).getAttribute('checked')).toBeTruthy();
  });
});