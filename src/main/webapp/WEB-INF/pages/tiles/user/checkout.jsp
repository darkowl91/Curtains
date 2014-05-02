<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div class="row">
<div class="span12">

<div class="checkout-outer">
    <div class="checkout-header">
        <a href="#" class="invarseColor pull-right" rel="tooltip" data-placment="top" data-title="EDIT"
           style="margin-right:12px; color:#333; font-size:13px;"><i class="icon-pencil"></i></a>
        <h4><i class="icon-caret-down"></i> Checkout Options</h4>
    </div>

    <div class="checkout-content">
        <div class="login">
            <table>
                <tr>
                    <td width="50%">
                        <h3>New Customer</h3>

                        <form mehtod="#" action="#">
                            <label class="radio">
                                <input type="radio" name="optionsRadios" value="1" checked>
                                Registeration Account.
                            </label>
                            <label class="radio">
                                <input type="radio" name="optionsRadios" value="0">
                                Contuine as guest account.
                            </label>
                        </form>
                        <!--end form-->
                        <p>By creating an account you will be able to shop faster, be up to date on an order's
                            status, and keep track of the orders you have previously made.</p>
                        <a href="#" class="btn">Register</a>
                    </td>

                    <td width="50%">
                        <h3>Returning Customer</h3>

                        <form method="#" action="#" class="">
                            <div class="controls">
                                <label>Your E-Mail: <span class="text-error">*</span></label>
                                <input type="text" name="" value="" placeholder="example@example.com">
                            </div>
                            <div class="controls">
                                <label>Your Password: <span class="text-error">*</span></label>
                                <input type="password" name="" value="" placeholder="**************">
                            </div>
                            <div class="controls">
                                <label class="checkbox">
                                    <input type="checkbox"> Check me out
                                </label>
                                <button type="submit" class="btn btn-primary">Login</button>
                            </div>
                        </form>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</div>


<div class="checkout-outer">
    <div class="checkout-header">
        <a href="#" class="invarseColor pull-right" rel="tooltip" data-placment="top" data-title="EDIT"
           style="margin-right:12px; color:#333; font-size:13px;"><i class="icon-pencil"></i></a>
        <h4><i class="icon-caret-down"></i> Account and billing Details</h4>
    </div>

    <div class="checkout-content">
        <form method="#" action="#" class="form-inline">
            <label class="radio inline">
                <input type="radio" name="add" value="option1"> Use my exisiting data address
            </label>&nbsp;&nbsp;
            <label class="radio inline">
                <input type="radio" name="add" value="option2"> I want to asign new address
            </label>
        </form>

        <hr>

        <form method="#" action="#" class="form-horizontal">

            <div class="control-group">
                <label class="control-label" for="inputFirstName">First Name: <span class="text-error">*</span></label>

                <div class="controls">
                    <input type="text" id="inputFirstName" placeholder="John">
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="inputLastName">Last Name: <span
                        class="text-error">*</span></label>

                <div class="controls">
                    <input type="text" id="inputLastName" placeholder="Doe">
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="inputCompany">Company:</label>

                <div class="controls">
                    <input type="text" id="inputCompany" placeholder="Shopfine, INC">
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="inputFirstAdd">First Address: <span
                        class="text-error">*</span></label>

                <div class="controls">
                    <input type="text" id="inputFirstAdd" placeholder="3st el-hakim">
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="inputSecondAdd">Second Address:</label>

                <div class="controls">
                    <input type="text" id="inputSecondAdd" placeholder="6st el-hakim">
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="inputCity">City: <span class="text-error">*</span></label>

                <div class="controls">
                    <input type="text" id="inputCity" placeholder="Cairo">
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="inputPostCode">Post Code: <span
                        class="text-error">*</span></label>

                <div class="controls">
                    <input type="text" id="inputPostCode" placeholder="12345">
                </div>
            </div>
            <div class="control-group">
                <div class="control-label">Contury: <span class="text-error">*</span></div>
                <div class="controls">
                    <select name="contury">
                        <option>-- Select Contury --</option>
                        <option>Contury1</option>
                        <option>Contury2</option>
                        <option>Contury3</option>
                        <option>Contury4</option>
                    </select>
                </div>
            </div>

            <div class="control-group">
                <div class="control-label">Region/Stats: <span class="text-error">*</span></div>
                <div class="controls">
                    <select name="region">
                        <option>-- Select Region --</option>
                        <option>Region/Stats1</option>
                        <option>Region/Stats2</option>
                        <option>Region/Stats3</option>
                        <option>Region/Stats4</option>
                        <option>Region/Stats5</option>
                    </select>
                </div>
            </div>
            <div class="control-group">
                <div class="controls">
                    <button type="submit" class="btn btn-primary">Contuine</button>
                </div>
            </div>
        </form>
    </div>
</div>


<div class="checkout-outer">
    <div class="checkout-header">
        <a href="#" class="invarseColor pull-right" rel="tooltip" data-placment="top" data-title="EDIT"
           style="margin-right:12px; color:#333; font-size:13px;"><i class="icon-pencil"></i></a>
        <h4><i class="icon-caret-right"></i> Delivery Details</h4>
    </div>

    <div class="checkout-content">
    </div>
</div>


<div class="checkout-outer">
    <div class="checkout-header">
        <a href="#" class="invarseColor pull-right" rel="tooltip" data-placment="top" data-title="EDIT"
           style="margin-right:12px; color:#333; font-size:13px;"><i class="icon-pencil"></i></a>
        <h4><i class="icon-caret-right"></i> Delivery Methods</h4>
    </div>
    <div class="checkout-content">
    </div>
</div>


<div class="checkout-outer">
    <div class="checkout-header">
        <a href="#" class="invarseColor pull-right" rel="tooltip" data-placment="top" data-title="EDIT"
           style="margin-right:12px; color:#333; font-size:13px;"><i class="icon-pencil"></i></a>
        <h4><i class="icon-caret-right"></i> Payment Methods</h4>
    </div>

    <div class="checkout-content">
    </div>
</div>


</div>
<!--end span12-->
</div>