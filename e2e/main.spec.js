'use strict';

describe('The main view', function () {
  var page;

  beforeEach(function () {
    browser.get('/index.html');
  });

  it('should include greeter with welcome', function() {
    expect(page.h3El.getText()).toBe('Welcome to Simple Todo!');
    expect(page.imgEl.getAttribute('src')).toMatch(/assets\/images\/yeoman.png$/);
  });

  it('should change path to home after "login"', function({
    var input  = element(by.css('#input-email'));
    var submit = element(by.css(.add_email));
    input.sendKeys('warp_shamash@gmail.com');
    button.click;
    expect(browser.getCurrentUrl())
    .toBe('/#/home');
  }));

  it('should return to main after click on "Main"', function(){
    var returnMain = element(by.buttonText('Main page'));
    browser.setLocation('/#/home');
    returnMain.click;
    expect(browser.getCurrentUrl())
    .toBe('/');
  });
});
