<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div class="row">

    <div class="span9">
        <div class="account-list-outer">

            <div class="titleHeader clearfix">
                <h3>My Account</h3>
            </div>

            <ul class="account-list">
                <li><a href="#" class="invarseColor"><i class="icon-caret-right"></i> Edit You Account Information</a>
                </li>
                <li><a href="#" class="invarseColor"><i class="icon-caret-right"></i> Change Your Password</a></li>
                <li><a href="#" class="invarseColor"><i class="icon-caret-right"></i> Modify Your Address Book
                    Entries</a></li>
                <li><a href="#" class="invarseColor"><i class="icon-caret-right"></i> Modify Your WishList</a></li>
            </ul>

            <div class="titleHeader clearfix">
                <h3>My Orders</h3>
            </div>

            <ul class="account-list">
                <li><a href="#" class="invarseColor"><i class="icon-caret-right"></i> View Your Order History</a></li>
                <li><a href="#" class="invarseColor"><i class="icon-caret-right"></i> View Your DownLoads</a></li>
                <li><a href="#" class="invarseColor"><i class="icon-caret-right"></i> View Your Review Points</a></li>
                <li><a href="#" class="invarseColor"><i class="icon-caret-right"></i> View Your Transactions</a></li>
            </ul>

            <div class="titleHeader clearfix">
                <h3>Newslatter</h3>
            </div>

            <form method="#" action="#" class="account-list">
                <label class="radio">
                    <input type="radio" name="newslatter" id="newslatter" value="1" checked>
                    Subscribe our newslatter
                </label>
                <label class="radio">
                    <input type="radio" name="newslatter" id="newslatter" value="0">
                    Unsubscribe our newslatter
                </label>
            </form>

        </div>
    </div>


    <div class="span3">
        <div class="titleHeader clearfix">
            <h3>Categories</h3>
        </div>
        <ul class="unstyled my-account">
            <li><a class="invarseColor" href="#"><i class="icon-caret-right"></i> Login or Register</a></li>
            <li><a class="invarseColor" href="#"><i class="icon-caret-right"></i> Forget my Password</a></li>
            <li><a class="invarseColor" href="#"><i class="icon-caret-right"></i> My Account</a></li>
            <li><a class="invarseColor" href="#"><i class="icon-caret-right"></i> My wishlist</a></li>
            <li><a class="invarseColor" href="#"><i class="icon-caret-right"></i> Order History</a></li>
            <li><a class="invarseColor" href="#"><i class="icon-caret-right"></i> Downloads</a></li>
            <li><a class="invarseColor" href="#"><i class="icon-caret-right"></i> Returns</a></li>
            <li><a class="invarseColor" href="#"><i class="icon-caret-right"></i> TRANSACTIONS</a></li>
            <li><a class="invarseColor" href="#"><i class="icon-caret-right"></i> Newlatters</a></li>
        </ul>
    </div>

</div>