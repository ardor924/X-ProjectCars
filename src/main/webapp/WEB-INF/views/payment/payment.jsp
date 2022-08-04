<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../inc/header.jsp" %>

<link href="https://fonts.googleapis.com/css?family=Muli:400,700,800,900" rel="stylesheet"><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel="stylesheet" href="${ctx}/resources/css/payment.css">
<link rel="stylesheet" href="${ctx}/resources/js/payment.js">
<script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>

<div id="myPayment">
<!-- partial:index.partial.html -->
<svg style="position: absolute; width: 0; height: 0; overflow: hidden;" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
<defs>
<symbol id="icon-help" viewBox="0 0 24 24">
<title>help</title>
<path d="M15.047 11.25c0.563-0.563 0.938-1.359 0.938-2.25 0-2.203-1.781-3.984-3.984-3.984s-3.984 1.781-3.984 3.984h1.969c0-1.078 0.938-2.016 2.016-2.016s2.016 0.938 2.016 2.016c0 0.563-0.234 1.031-0.609 1.406l-1.219 1.266c-0.703 0.75-1.172 1.734-1.172 2.813v0.516h1.969c0-1.5 0.469-2.063 1.172-2.813zM12.984 18.984v-1.969h-1.969v1.969h1.969zM12 2.016c5.531 0 9.984 4.453 9.984 9.984s-4.453 9.984-9.984 9.984-9.984-4.453-9.984-9.984 4.453-9.984 9.984-9.984z"></path>
</symbol>
<symbol id="icon-face" viewBox="0 0 24 24">
<title>face</title>
<path d="M12 20.016c4.406 0 8.016-3.609 8.016-8.016 0-0.797-0.141-1.547-0.328-2.25-0.703 0.188-1.453 0.234-2.25 0.234-3.375 0-6.328-1.641-8.156-4.219-0.984 2.391-2.906 4.359-5.25 5.391-0.047 0.281-0.047 0.563-0.047 0.844 0 4.406 3.609 8.016 8.016 8.016zM12 2.016c5.531 0 9.984 4.453 9.984 9.984s-4.453 9.984-9.984 9.984-9.984-4.453-9.984-9.984 4.453-9.984 9.984-9.984zM15 11.766c0.703 0 1.266 0.516 1.266 1.219s-0.563 1.266-1.266 1.266-1.266-0.563-1.266-1.266 0.563-1.219 1.266-1.219zM9 11.766c0.703 0 1.266 0.516 1.266 1.219s-0.563 1.266-1.266 1.266-1.266-0.563-1.266-1.266 0.563-1.219 1.266-1.219z"></path>
</symbol>
<symbol id="icon-navigate_before" viewBox="0 0 24 24">
<title>navigate_before</title>
<path d="M15.422 7.406l-4.594 4.594 4.594 4.594-1.406 1.406-6-6 6-6z"></path>
</symbol>
<symbol id="icon-check" viewBox="0 0 24 24">
<title>check</title>
<path d="M9 16.172l10.594-10.594 1.406 1.406-12 12-5.578-5.578 1.406-1.406z"></path>
</symbol>
<symbol id="icon-close" viewBox="0 0 24 24">
<title>close</title>
<path d="M18.984 6.422l-5.578 5.578 5.578 5.578-1.406 1.406-5.578-5.578-5.578 5.578-1.406-1.406 5.578-5.578-5.578-5.578 1.406-1.406 5.578 5.578 5.578-5.578z"></path>
</symbol>
<symbol id="icon-credit-card" viewBox="0 0 32 32">
<title>credit-card</title>
<path d="M4 22h4v-2h-4v2zM10 22h4v-2h-4v2zM12 16h-8v2h8v-2zM8 14h2l4-4h-2l-4 4zM14 18h6v-2h-6v2zM30 6c-1 0-27 0-28 0s-2 1-2 2 0 15 0 16 1 2 2 2 27 0 28 0 2-1 2-2 0-15 0-16-1-2-2-2zM30 14v9s0 1-1 1h-26c-1 0-1-1-1-1v-9h2l4-4h-6v-1s0-1 1-1h26c1 0 1 1 1 1v1h-12l-4 4h16z"></path>
</symbol>
<symbol id="icon-lock" viewBox="0 0 24 24">
<title>lock</title>
<path d="M15.094 8.016v-2.016c0-1.688-1.406-3.094-3.094-3.094s-3.094 1.406-3.094 3.094v2.016h6.188zM12 17.016c1.078 0 2.016-0.938 2.016-2.016s-0.938-2.016-2.016-2.016-2.016 0.938-2.016 2.016 0.938 2.016 2.016 2.016zM18 8.016c1.078 0 2.016 0.891 2.016 1.969v10.031c0 1.078-0.938 1.969-2.016 1.969h-12c-1.078 0-2.016-0.891-2.016-1.969v-10.031c0-1.078 0.938-1.969 2.016-1.969h0.984v-2.016c0-2.766 2.25-5.016 5.016-5.016s5.016 2.25 5.016 5.016v2.016h0.984z"></path>
</symbol>
<symbol id="icon-info" viewBox="0 0 24 24">
<title>info</title>
<path d="M12.984 9v-2.016h-1.969v2.016h1.969zM12.984 17.016v-6h-1.969v6h1.969zM12 2.016c5.531 0 9.984 4.453 9.984 9.984s-4.453 9.984-9.984 9.984-9.984-4.453-9.984-9.984 4.453-9.984 9.984-9.984z"></path>
</symbol>
<symbol id="icon-settings" viewBox="0 0 24 24">
<title>settings</title>
<path d="M12 15.516c1.922 0 3.516-1.594 3.516-3.516s-1.594-3.516-3.516-3.516-3.516 1.594-3.516 3.516 1.594 3.516 3.516 3.516zM19.453 12.984l2.109 1.641c0.188 0.141 0.234 0.422 0.094 0.656l-2.016 3.469c-0.141 0.234-0.375 0.281-0.609 0.188l-2.484-0.984c-0.516 0.375-1.078 0.75-1.688 0.984l-0.375 2.625c-0.047 0.234-0.234 0.422-0.469 0.422h-4.031c-0.234 0-0.422-0.188-0.469-0.422l-0.375-2.625c-0.609-0.234-1.172-0.563-1.688-0.984l-2.484 0.984c-0.234 0.094-0.469 0.047-0.609-0.188l-2.016-3.469c-0.141-0.234-0.094-0.516 0.094-0.656l2.109-1.641c-0.047-0.328-0.047-0.656-0.047-0.984s0-0.656 0.047-0.984l-2.109-1.641c-0.188-0.141-0.234-0.422-0.094-0.656l2.016-3.469c0.141-0.234 0.375-0.281 0.609-0.188l2.484 0.984c0.516-0.375 1.078-0.75 1.688-0.984l0.375-2.625c0.047-0.234 0.234-0.422 0.469-0.422h4.031c0.234 0 0.422 0.188 0.469 0.422l0.375 2.625c0.609 0.234 1.172 0.563 1.688 0.984l2.484-0.984c0.234-0.094 0.469-0.047 0.609 0.188l2.016 3.469c0.141 0.234 0.094 0.516-0.094 0.656l-2.109 1.641c0.047 0.328 0.047 0.656 0.047 0.984s0 0.656-0.047 0.984z"></path>
</symbol>
<symbol id="icon-wallpaper" viewBox="0 0 24 24">
<title>wallpaper</title>
<path d="M3.984 12.984v7.031h7.031v1.969h-7.031c-1.078 0-1.969-0.891-1.969-1.969v-7.031h1.969zM20.016 20.016v-7.031h1.969v7.031c0 1.078-0.891 1.969-1.969 1.969h-7.031v-1.969h7.031zM20.016 2.016c1.078 0 1.969 0.891 1.969 1.969v7.031h-1.969v-7.031h-7.031v-1.969h7.031zM17.016 8.484c0 0.844-0.656 1.5-1.5 1.5s-1.5-0.656-1.5-1.5 0.656-1.5 1.5-1.5 1.5 0.656 1.5 1.5zM9.984 12.984l3 3.703 2.016-2.672 3 3.984h-12zM3.984 3.984v7.031h-1.969v-7.031c0-1.078 0.891-1.969 1.969-1.969h7.031v1.969h-7.031z"></path>
</symbol>
</defs>
</svg>

<div class="checkout">
  
  <div class="checkout__form">
    
    <!-- <p class="paths">
      Customer information > Shipping method > <span class="primary">Payment method</span> > Order Review
    </p> -->
    
<!--     <div class="path">
      <a href="#" class="path__item is-active">1. Customer information</a>
      <a href="#" class="path__item">2. Shipping information</a>
      <a href="#" class="path__item">3. Billing information</a>
      <a href="#" class="path__item">4. Shipping method</a>
      <a href="#" class="path__item">5. Payment method</a>
    </div> -->
    
<!--     <h1>Checkout</h1> -->
<!--     <p class="microcopy">We need some information to complete your order. You can also make adjustments to your order at any time.</p> -->
    
  
  <!--   <div class="site-header"></div> -->
    
<!--     <form action="" class="form"> -->
      
      <div class="pages">
        <div class="page page--1">
          
<!--           <p class="path"><span class="primary">Customer information</span> > Shipping method > Payment method</p> -->
          
          <header class="header">
            <h2>Customer information</h2>
            <span class="extra">Already have an account? <a href="#">Login</a></span>
          </header>
          <p class="microcopy">Please tell us to which email address we can send the  order confirmation.</p>

          <div class="f">
            <div class="input">
              <label for="email" class="input__label">Email <span class="required">(required)</span></label>
              <input id="email" type="email" class="input__input" data-mask=".+@\w+\.+\w+(\.+\w+)?" />
              <div class="input__error">Please enter a valid email address.</div>
            </div>

            <label for="newsletter" class="control">
              <input type="checkbox" id="newsletter" class="control__input" />
              <div class="control__label">Please keep me informed about <b>offers</b> and <b>discounts</b>.</div>
            </label>
          </div>
          
          <header class="header">
            <h2>Shipping address</h2>
          </header>
          <p class="microcopy">Please tell us where to ship your order.</p>

          <div class="f">
            <div class="input">
              <label for="name" class="input__label">Your full name <span class="required">(required)</span></label>
              <input id="name" type="text" class="input__input" />
            </div>
            <div class="f60">
              <div class="input">
                <label for="address" class="input__label">Address <span class="required">(required)</span></label>
                <input id="address" type="text" class="input__input" />
                <div class="input__error">Please enter a valid address.</div>
              </div>
            </div>
            <div class="f40">
              <div class="input">
                <label for="appartment" class="input__label">Apt., suite, etc. <span class="optional">(optional)</span></label>
                <input id="appartment" type="email" class="input__input" />
              </div>
            </div>
            <div class="collapser">
              <div class="collapser__label"><a href="#">Add another address line</a></div>
              <div class="collapser__content">
                <div class="input">
                  <label for="address2" class="input__label">Address <span class="optional">(optional)</span></label>
                  <input id="address2" type="text" class="input__input" />
                  <div class="input__error">Please enter a valid address.</div>
                </div>
              </div>
            </div>
<!--             <div class="f40"> -->
            <div class="input">
              <label for="city" class="input__label">City <span class="required">(required)</span></label>
              <input id="city" type="text" class="input__input" />
            </div>
<!--             </div> -->
            <div class="f35">
              <div class="input input--select">
                <label for="country" class="input__label">Country <span class="required">(required)</span></label>
                <select name="country" id="country" class="input__input">
                  <option disabled>Country</option>
                  <option value="US">United States</option>
                  <option value="CA" selected>Canada</option>
                </select>
              </div>
            </div>
            <div class="f35">
              <div class="input input--select">
                <label for="province" class="input__label">Province <span class="required">(required)</span></label>
                <select name="province" id="province" class="input__input">
                  <option disabled>Province</option>
                  <option value="AB">Alberta</option>
                  <option value="ON" selected>Ontario</option>
                </select>
              </div>
            </div>
            <div class="f30">
              <div class="input">
                <label for="postalcode" class="input__label">Postal code <span class="required">(required)</span></label>
                <input id="postalcode" type="text" class="input__input" data-mask="^\w{1}\d{1}\w{1}\s*\d{1}\w{1}\d{1}$" />
                <div class="input__error">Please enter a valid postal code.</div>
              </div>
            </div>
          </div>

          <div class="f">
            <label for="billing-same" class="control">
              <input type="checkbox" id="billing-same" class="control__input" checked />
              <div class="control__label">My <b>billing information</b> is the same as my <b>shipping information</b>.</div>
            </label>
          </div>
          
          <div id="billing">
          
            <header class="header">
              <h2>Billing address</h2>
            </header>
            <p class="microcopy">The person that will be billed for this order, if different from the shipping receiver.</p>
          
          <div class="f">
            <div class="input">
              <label for="billing-name" class="input__label">Full name <span class="required">(required)</span></label>
              <input id="billing-name" type="text" class="input__input" />
            </div>
            <div class="f60">
              <div class="input">
                <label for="billing-address" class="input__label">Address <span class="required">(required)</span></label>
                <input id="billing-address" type="text" class="input__input" />
                <div class="input__error">Please enter a valid address.</div>
              </div>
            </div>
            <div class="f40">
              <div class="input">
                <label for="billing-appartment" class="input__label">Apt., suite, etc. <span class="optional">(optional)</span></label>
                <input id="billing-appartment" type="email" class="input__input" />
              </div>
            </div>        
            <div class="input">
              <label for="billing-city" class="input__label">City <span class="required">(required)</span></label>
              <input id="billing-city" type="text" class="input__input" />
            </div>
            <div class="f35">
              <div class="input input--select">
                <label for="billing-country" class="input__label">Country <span class="required">(required)</span></label>
                <select name="billing-country" id="billing-country" class="input__input">
                  <option disabled>Country</option>
                  <option value="US">United States</option>
                  <option value="CA" selected>Canada</option>
                </select>
              </div>
            </div>
            <div class="f35">
              <div class="input input--select">
                <label for="billing-province" class="input__label">Province <span class="required">(required)</span></label>
                <select name="billing-province" id="billing-province" class="input__input">
                  <option disabled>Province</option>
                  <option value="AB">Alberta</option>
                  <option value="ON" selected>Ontario</option>
                </select>
              </div>
            </div>
            <div class="f30">
              <div class="input">
                <label for="billing-postalcode" class="input__label">Postal code <span class="required">(required)</span></label>
                <input id="billing-postalcode" type="text" class="input__input" data-mask="^\w{1}\d{1}\w{1}\s*\d{1}\w{1}\d{1}$" />
                <div class="input__error">Please enter a valid postal code.</div>
              </div>
            </div>
          </div>
            
          </div>

          <div class="form__footer">
            <button class="btn btn--primary js-goto" data-page="2">
              <span class="btn__label">Continue to Shipping Method</span>
              <svg class="btn__loader" viewBox="25 25 50 50"><circle cx="50" cy="50" r="20" fill="none" class="path"></circle></svg>
            </button>
            <button class="btn btn--transparent secondary">
              <svg class="btn__icon"><use xlink:href="#icon-navigate_before"></use></svg>
              <span class="btn__label">Return to Cart</span>
              <svg class="btn__loader" viewBox="25 25 50 50"><circle cx="50" cy="50" r="20" fill="none" class="path"></circle></svg>
            </button>
          </div>
          
        </div>
        <div class="page page--2">
          
          <header class="header">
            <h2>Shipping Method</h2>
          </header>
          <p class="microcopy">Select the shipping method you would like to use.</p>

          <div class="f f--no-margin">
            <label for="shipping-free" class="control block is-selected">
              <input type="radio" name="shipping" id="shipping-free" class="control__input" checked />
              <div class="control__label">
                Free shipping
                <div class="microcopy">Get my order delivered by <span class="secondary">September 21st</span>.</div>
              </div>
              <span class="control__extra primary">FREE</span>
            </label>

            <label for="shipping-standard" class="control block">
              <input type="radio" name="shipping" id="shipping-standard" class="control__input" />
              <div class="control__label">
                Standard shipping
                <div class="microcopy">Get my order delivered by <span class="secondary">September 14th</span>.</div>
              </div>
              <span class="control__extra">$14.00</span>
            </label>

            <label for="shipping-rush" class="control block">
              <input type="radio" name="shipping" id="shipping-rush" class="control__input" />
              <div class="control__label">
                Rush shipping
                <div class="microcopy">Get my order delivered by <span class="secondary">September 7th</span>.</div>
              </div>
              <span class="control__extra">$39.00</span>
            </label>
          </div>
          
          <div class="form__footer">
            <button class="btn btn--primary js-goto" data-page="3">
              <span class="btn__label">Continue to Payment Method</span>
              <svg class="btn__loader" viewBox="25 25 50 50"><circle cx="50" cy="50" r="20" fill="none" class="path"></circle></svg>
            </button>
            <button class="btn btn--transparent secondary js-goto" data-page="1">
              <svg class="btn__icon"><use xlink:href="#icon-navigate_before"></use></svg>
              <span class="btn__label">Return to Customer information</span>
              <svg class="btn__loader" viewBox="25 25 50 50"><circle cx="50" cy="50" r="20" fill="none" class="path"></circle></svg>
            </button>
          </div>
          
        </div>
        <div class="page page--3 is-active">

          <header class="header">
            <h2>결제수단 선택</h2>
          </header>
          <p class="microcopy">Select the payment method you would like to use.</p>

          <div class="f f--no-margin">
            <label for="payment-cc" class="control block is-selected">
              <input type="radio" name="payment" id="payment-cc" class="control__input" checked />
              <div class="control__label">
                무통장입금
                <!-- <div class="microcopy">Pay safely and securely with your credit card.</div> -->
              </div>
              <!-- <span class="control__extra">
                <svg class="control__icon"><use xlink:href="#icon-credit-card"></use></svg>
                <svg class="control__icon"><use xlink:href="#icon-credit-card"></use></svg>
                <svg class="control__icon"><use xlink:href="#icon-credit-card"></use></svg>
              </span> -->
            </label>

            <div class="block block--collapse">
              <div class="f">
                <div class="input is-selected">
                  <!-- <svg class="input__icon"><use xlink:href="#icon-lock"></use></svg> -->
                  <label for="ccnumber" class="input__label">입금자명 
                    <!-- <span class="required">(required)</span> -->
                  </label>
                  <!-- <input id="ccnumber" type="text" class="input__input"  -->
                  <!-- data-mask="^\d{4}[\-\s]?\d{4}[\-\s]?\d{4}[\-\s]?\d{4}$"  -->
                  <!-- data-luhn /> -->
                  <!-- <div class="input__error">입금자명을 입력해주세요.</div> -->

                  <!-- <label for="ccsecurity" class="input__label">Security code <span class="required">(required)</span></label> -->
                    <input id="ccsecurity" type="text" class="input__input" data-mask="^\d{3,4}$" />
                    <!-- <div class="input__error">입금자명을 입력해주세요</div> -->
                </div>
                <div class="f30">
                  <div class="input input--select">
                    <label for="ccmonth" class="input__label">입금은행
                      <!-- <span class="required">(required)</span> -->
                    </label>
                    <select name="ccmonth" id="ccmonth" class="input__input">
                      <option disabled selected>입금은행을 선택하세요</option>
                      <option value="1">우리은행:142-4142-1341-414</option>
                      <!-- <option value="2">02 - February</option>
                      <option value="3">03 - March</option>
                      <option value="4">04 - April</option>
                      <option value="5">05 - May</option>
                      <option value="6">06 - June</option>
                      <option value="7">07 - July</option>
                      <option value="8">08 - August</option>
                      <option value="9">09 - September</option>
                      <option value="10">10 - October</option>
                      <option value="11">11 - November</option>
                      <option value="12">12 - December</option> -->
                    </select>
                  </div>
                </div>
                <!-- <div class="f30">
                  <div class="input input--select">
                    <label for="ccyear" class="input__label">Expiry year <span class="required">(required)</span></label>
                    <select name="ccyear" id="ccyear" class="input__input">
                      <option disabled selected>YY</option>
                      <option value="2017">17</option>
                      <option value="2018">18</option>
                      <option value="2019">19</option>
                      <option value="2020">20</option>
                      <option value="2021">21</option>
                      <option value="2022">22</option>
                      <option value="2023">23</option>
                    </select>
                  </div>
                </div> -->
                <!-- <div class="f40">
                  <div class="input">
                    <svg class="input__icon"><use xlink:href="#icon-help"></use></svg>
                    <label for="ccsecurity" class="input__label">Security code <span class="required">(required)</span></label>
                    <input id="ccsecurity" type="text" class="input__input" data-mask="^\d{3,4}$" />
                    <div class="input__error">Please enter a security code.</div>
                  </div>
                </div> -->
              </div>
            </div>

            <label for="payment-paypal" class="control block">
              <input type="radio" name="payment" id="payment-paypal" class="control__input" />
              <div class="control__label">
                신용/체크카드/페이결제
                <div class="microcopy">credit / check card / pay</div>
              </div>
              <span class="control__extra">
                <svg class="control__icon"><use xlink:href="#icon-credit-card"></use></svg>
                <!-- <svg class="control__icon"><use xlink:href="#icon-credit-card"></use></svg>
                <svg class="control__icon"><use xlink:href="#icon-credit-card"></use></svg>
                <svg class="control__icon"><use xlink:href="#icon-credit-card"></use></svg> -->
              </span>
            </label>
          </div>
          
          <!-- <div class="message message--info is-visible">Your <b>credit card</b> will be charged as soon as you finish the current step.</div> -->
          <!-- <div class="message message--info is-hidden">You will be redirected to <b>PayPal</b> as soon as you finish the current step.</div> -->
          
          <div class="collapser">
            <!-- <a href="#" class="collapser__label">Redeem a gift card</a> -->
            <div class="collapser__content">
              
              <!-- <header class="header">
                <h2>Gift cards</h2>
              </header> -->
              <p class="microcopy">Add gifts cards you would like to redeem.</p>

              <div class="f">
                <div class="f70">
                  <div class="input">
                    <svg class="input__icon"><use xlink:href="#icon-info"></use></svg>
                    <label for="giftcard" class="input__label">Gift card number <span class="optional">(optional)</span></label>
                    <input id="giftcard" type="text" class="input__input" />
                    <div class="input__error">Please enter a valid gift card number.</div>
                  </div>
                </div>
                <div class="f30">
                  <button class="btn btn--secondary btn--full js-add-giftcard">Redeem</button>
                </div>
                <div class="cards"></div>
              </div>
              
            </div>
          </div>
          

          <!-- jQuery -->
          <script type="text/javascript"
          src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
          <script type="text/javascript"
          src="https://cdn.iamport.kr/js/iamport.payment-1.1.2.js"></script>

          <div class="form__footer">
            <button class="btn btn--primary js-goto" onclick="requestPay(${vDto.cNum})">
              <span class="btn__label">결제하기</span>
              <svg class="btn__loader" viewBox="25 25 50 50"><circle cx="50" cy="50" r="20" fill="none" class="path"></circle></svg>
            </button>
            <button class="btn btn--transparent secondary js-goto" data-page="2">
              <!-- <svg class="btn__icon"><use xlink:href="#icon-navigate_before"></use></svg> -->
              <!-- <span class="btn__label">Return to Shipping method</span> -->
              <svg class="btn__loader" viewBox="25 25 50 50"><circle cx="50" cy="50" r="20" fill="none" class="path"></circle></svg>
            </button>
          </div>
          
        </div>
        <div class="page page--4">
          
          <!-- <header class="header">
            <h2>Order review</h2>
          </header>
          <p class="microcopy">Please review and make sure your order is correct.</p> -->
          
            <!-- <button onclick="requestPay()">결제하기</button> -->
            <!-- <button class="btn btn--primary js-goto" onclick="requestPay()">
              <span class="btn__label">결제하기</span>
              <svg class="btn__loader" viewBox="25 25 50 50"><circle cx="50" cy="50" r="20" fill="none" class="path"></circle></svg>
            </button> -->


          <script>
            var IMP = window.IMP; // 생략가능
            IMP.init('imp52074203'); 
          
            function requestPay(cNum) {
            IMP.init('iamport'); //iamport 대신 자신의 "가맹점 식별코드"를 사용
            IMP.request_pay({
              pg: "inicis",
              pay_method: "card",
              merchant_uid : 'merchant_'+new Date().getTime(),
              name : '결제테스트',
              amount : 100,
              buyer_email : 'iamport@siot.do',
              buyer_name : '구매자',
              buyer_tel : '010-1234-5678',
              buyer_addr : '서울특별시 강남구 삼성동',
              buyer_postcode : '123-456'
            }, function (rsp) {
              console.log(rsp);
              if (rsp.success) {
                var msg = '결제가 완료되었습니다.';
                alert(msg);
                location.href = "paymentOk.do?cNum="+cNum;
                
                
/*         		document.prodFrm.action="cartAdd.do?pNum="+pNum;
        		document.prodFrm.submit(); */
                
              } else {
                var msg = '결제에 실패하였습니다.';
                msg += '에러내용 : ' + rsp.error_msg;
                alert(msg);
                location.href = "payment.do";
              }
            
            });
          }
          </script>
          







          <div class="form__footer">
            <button class="btn btn--primary js-goto" data-page="4">
              <span class="btn__label">Place my order</span>
              <svg class="btn__loader" viewBox="25 25 50 50"><circle cx="50" cy="50" r="20" fill="none" class="path"></circle></svg>
            </button>
            <button class="btn btn--transparent secondary js-goto" data-page="3">
              <svg class="btn__icon"><use xlink:href="#icon-navigate_before"></use></svg>
              <span class="btn__label">Return to Payment method</span>
              <svg class="btn__loader" viewBox="25 25 50 50"><circle cx="50" cy="50" r="20" fill="none" class="path"></circle></svg>
            </button>
          </div>
          
        </div>
      </div>
<!--     </form> -->

  <!--   <h1>Heading level 1</h1>
    <p>Should be used for:</p>
    <ul>
      <li><b>Exlusively</b> as main heading on pages</li>
    </ul>

    <h2>Heading level 2</h2>
    <p>Should be used for:</p>
    <ul>
      <li>Secondary headings on pages (for structure)</li>
      <li>Component main headings (e.g. modals)</li>
    </ul>

    <h3>Heading level 3</h3>
    <p>Should be used for:</p>
    <ul>
      <li>Tertirary headings on pages (for structure)</li>
      <li>Product names</li>
      <li>Services names</li>
    </ul>

    <h4>Heading level 4</h4>
    <p>Should be used for:</p>
    <ul>
      <li><b>Exlusively</b> for additional structure</li>
    </ul>

    <h5>Heading level 5</h5>
    <p>Should be used for:</p>
    <ul>
      <li><b>Exlusively</b> for additional structure</li>
      <li><b>Try to avoid using h5</b></li>
    </ul>

    <h6>Heading level 6</h6>
    <p>Should be used for:</p>
    <ul>
      <li><b>Exlusively</b> for additional structure</li>
      <li><b>Try to avoid using h6</b></li>
    </ul>

    <p>Body copy looks like this. Rounded, yet easy to read. Not too small either.</p>

    <button class="btn">Change language</button>

    <h1>All our products</h1>
    <p>We offer a wide selection of products that you can personalize in 3 easy steps</p>
    <ol>
      <li>Upload your image, or select one from your social media</li>
      <li>Customize your settings to your liking</li>
      <li>Order and get an unforgettable experience delivered to your door</li>
    </ol>

    <h2>Throw Pillows</h2>
    <div class="grid">

    <div class="product">
      <div class="product__body">
        <div class="product__image">
          <img src="http://via.placeholder.com/200x200" alt="">
        </div>
        <h3 class="product__name">Custom Throw Pillow</h3>
        <div class="product__price"><sup>$</sup>30.00</div>
      </div>
      <footer class="product__footer">
        <button class="btn btn--primary">Customize</button>
      </footer>
    </div>

    <div class="product">
      <div class="product__body">
        <div class="product__image">
          <img src="http://via.placeholder.com/200x200" alt="">
        </div>
        <h3 class="product__name">Some Other Product With a Long Name</h3>
        <div class="product__price"><sup>$</sup>30.00</div>
      </div>
      <footer class="product__footer">
        <button class="btn btn--primary">Customize</button>
      </footer>
    </div>

    <div class="product">
      <div class="product__body">
        <div class="product__image">
          <img src="http://via.placeholder.com/200x200" alt="">
        </div>
        <h3 class="product__name">Custom Throw Pillow</h3>
        <div class="product__price"><sup>$</sup>30.00</div>
      </div>
      <footer class="product__footer">
        <button class="btn btn--primary">Customize</button>
      </footer>
    </div>

    </div>

    <p>Choose an option:</p>
    <div class="radio">
      <div class="radio__box"></div>
      <div class="radio__label">Option 1</div>
    </div>

    <div class="radio">
      <div class="radio__box"></div>
      <div class="radio__label">Option 2</div>
    </div>

    <p>Sign up:</p>
    <div class="checkbox">
      <div class="checkbox__box"></div>
      <div class="checkbox__label">Option 2</div>
    </div>

    <div class="modal is-open2">
      <div class="modal__background"></div>
      <div class="modal__content">
        <header class="modal__header">
          <div class="modal__heading">Change your language</div>
        </header>
        <div class="modal__body">
          <p>Select the language you would like to use:</p>
          <div class="dropdown is-pressable">
            <div class="dropdown__label">Select a language...</div>
            <div class="dropdown__options">
              <div class="dropdown__option">Option 1</div>
              <div class="dropdown__option">Option 2</div>
            </div>
          </div>        
        </div>
        <footer class="modal__footer">
          <button class="btn">Cancel</button>
          <button class="btn btn--primary">Confirm</button>
        </footer>
      </div>
    </div> -->
    
    </div>
  <div class="checkout__summary">
    
<!--     <div class="logo"></div> -->
    
    <header class="header">
      <h2>결제정보</h2>
    </header>
    <p class="microcopy">A summary of your total order.</p>
    
    <div class="collapser">
      <!-- <a href="#" class="collapser__label">Add a coupon code</a> -->
      <div class="collapser__content">
        
        <div class="f">
          <div class="f70">
            <div class="input">
              <svg class="input__icon"><use xlink:href="#icon-info"></use></svg>
              <label for="couponcode" class="input__label">Coupon code <span class="optional">(optional)</span></label>
              <input id="couponcode" type="text" class="input__input" data-mask=".{5,}" />
              <div class="input__error">Please enter a valid coupon code.</div>
            </div>
          </div>
          <div class="f30">
            <button class="btn btn--secondary btn--full js-add-gift-card">Add</button>
          </div>
        </div>
        
      </div>
    </div>
    
    <div class="f">
<!--       <div class="input f70">
        <label for="discount" class="input__label">Discount code</label>
        <input id="discount" type="text" class="input__input" />
      </div>
      <button class="btn f30">Apply</button> -->
      
      <table class="pricing">
        <tbody>
          <tr>
							<img class="active" src="${ctx}/resources/file_upload/${vDto.fileName}">
							<!-- <td class="pricing__label">Custom Throw Pillow (18" x 18")</td> -->
							<td class="pricing__label">${vDto.company} ${vDto.cName}</td>
							<td class="pricing__price">￦ ${vDto.price}</td>
						</tr>
						<!-- <tr>
            <td>image</td>
            <td class="pricing__label">Triptych Canvas Print (36" x 24")</td>
            <td class="pricing__price">$276.66</td>
          </tr> -->
					</tbody>
				</table>

				<table class="pricing">
					<tbody>
						<!-- <tr>
            <td class="pricing__label">Subtotal</td>
            <td class="pricing__price">$306.66</td>
          </tr>
          <tr>
            <td class="pricing__label">Gift cards</td>
            <td class="pricing__price">-$50.00</td>
          </tr>
          <tr>
            <td class="pricing__label">Discount <small>(-30%)</small></td>
            <td class="pricing__price">-$91.99</td>
          </tr>
          <tr>
            <td class="pricing__label">Shipping</td>
            <td class="pricing__price">$8.00</td>
          </tr>
          <tr>
            <td class="pricing__label">Tax <small>(13%)</small></td>
            <td class="pricing__price">$28.95</td>
          </tr> -->
					</tbody>
					<tfoot>
						<tr class="pricing__total">
							<td class="pricing__label">Total</td>
							<td class="pricing__price"><span class="currency">￦</span> <b>${vDto.price}</b></td>
						</tr>
						<!-- <tr class="pricing__total-localized">
            <td class="pricing__label">Total in EUR</td>
            <td class="pricing__price"><span class="currency">EUR</span> <b>€ 211.36</b></td>
          </tr> -->
					</tfoot>
				</table>
			</div>

			<!-- <header class="header">
      <h2>Shipping summary</h2>
    </header>
    <p class="microcopy">A summary of your shipping and payment selections.</p> -->

			<!-- <table>
      <tbody>
        <tr>
          <td class="pricing__label">Shipping address</td>
          <td class="pricing__price">John Appleseed, 123 Main Street, Ottawa, Ontario, K1K 1K1, Canada</td>
          <td>Edit</td>
        </tr>
        <tr>
          <td class="pricing__label">Shipping method</td>
          <td class="pricing__price">Free shipping</td>
          <td>Edit</td>
        </tr>
      </tbody>
    </table> -->

<!--     <div class="summaries">
      <div class="summary block">
        <div class="summary__title">Shipping address</div>
        <div class="summary__content">John Appleseed, 123 Main Street, Ottawa, Ontario, K1K 1K1, Canada</div>
        <div class="summary__extra primary js-goto" data-page="1">Edit</div>
      </div>
      <div class="summary block">
        <div class="summary__title">Shipping method</div>
        <div class="summary__content">Free shipping</div>
        <div class="summary__extra primary js-goto" data-page="2">Edit</div>
      </div>
    </div> -->
    
  </div>
</div>
</div>
<!-- partial -->
  <!-- <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script><script  src="./script.js"></script> -->


<%@ include file="../inc/footer.jsp"%>