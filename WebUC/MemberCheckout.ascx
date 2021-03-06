<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MemberCheckout.ascx.cs" Inherits="_1685009.WebUC.MemberCheckout" %>
<%@ Register Src="~/WebUC/MemberAddress.ascx" TagPrefix="uc1" TagName="MemberAddress" %>


<div class="container">
    <div class="row" style="padding-top: 25px; padding-bottom: 25px;">
        <div class="col-md-12">
            <div id="mainContentWrapper">
                <div class="col-md-8 col-md-offset-2">
                    <h2 style="text-align: center;">Review Your Order & Complete Checkout
                    </h2>
                    <hr />
                    <asp:Button ID="ButtonGoToCart" runat="server" Text="Add More Products & Services" OnClick="ButtonGoToCart_Click" CssClass="btn btn-info" style="width: 100%;"/>
                    <hr />
                    <div class="shopping_cart">
                        <div class="form-horizontal" id="payment-form">
                            <div class="panel-group" id="accordion">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">Review Your Order</a>
                                        </h4>
                                    </div>
                                    <div id="collapseOne" class="panel-collapse collapse in">
                                        <div class="panel-body">
                                            <div class="items">
                                                <div class="col-md-9">
                                                    <table class="table table-striped">
                                                        <thead>
                                                            <tr>
                                                                <th>Product</th>
                                                                <th>Quantity</th>
                                                                <th>Price</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <asp:Repeater ID="RepeaterCartItems" runat="server">
                                                                <ItemTemplate>
                                                                    <tr>
                                                                        <td><%# Eval("Name") %></td>
                                                                        <td><%# Eval("Quantity") %></td>
                                                                        <td><%# ToCurrency(Eval("TotalPrice")) %></td>
                                                                    </tr>
                                                                </ItemTemplate>
                                                            </asp:Repeater>
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <div class="col-md-3">
                                                    <div style="text-align: center;">
                                                        <h3>Order Total</h3>
                                                        <h3>
                                                            <asp:Label ID="LabelTotalCost" runat="server" style="color: green;"></asp:Label>
                                                        </h3>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">Contact and Billing Information</a>
                                    </h4>
                                </div>
                                <div id="collapseTwo" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <uc1:MemberAddress runat="server" ID="MemberAddress" />
                                    </div>
                                </div>
                            </div>

                            <div>
                                <asp:Button ID="ButtonPay" runat="server" Text="Pay Now" OnClick="ButtonPay_Click" CssClass="btn btn-success btn-lg" style="width: 100%;"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
