<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewreviews.aspx.cs" Inherits="Cricket_club_management_system.viewreviews" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            margin-top: 50px;
        }
        h2 {
            font-size: 28px;
            color: #333;
            animation: fadeInDown 1s ease-in-out;
        }
        .reviews-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            padding: 20px;
        }
        .review-card {
            background: white;
            border-radius: 10px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
            padding: 20px;
            width: 300px;
            text-align: left;
            opacity: 0;
            transform: scale(0.9);
            transition: transform 0.3s ease-in-out, box-shadow 0.3s;
            position: relative;
            overflow: hidden;
        }
        .review-card:hover {
            transform: scale(1.1);
            box-shadow: 0px 12px 20px rgba(0, 0, 0, 0.3);
        }
         .review-card::before {
            content: "";
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: rgba(255, 255, 255, 0.2);
            transform: skewX(-30deg);
            transition: left 0.5s ease-in-out;
        }
        .review-card:hover::before {
            left: 100%;
        }
        .review-name {
            font-weight: bold;
            font-size: 18px;
            color: #333;
            animation: fadeInUp 0.8s ease-in-out;
        }
        .review-text {
            margin-top: 10px;
            color: #555;
            font-size: 14px;
        }
        .review-rating {
            margin-top: 10px;
            font-weight: bold;
            color: #f39c12;
        }
        .fade-in {
            animation: fadeIn 0.6s ease-in-out forwards;
        }
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: scale(0.9);
            }
            to {
         opacity: 1;
                transform: scale(1);
            }
        }
        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
        @keyframes fadeInDown {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
</head>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <body style="background-color:#f2f2f2">

    <form id="form1" runat="server">
        <div class="container">
            <h2 style="color:white">Customer Reviews</h2>
            <div class="reviews-container">
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <div class="review-card fade-in">
                            <div class="review-name"><%# Eval("ReviewerName") %></div>
                            <div class="review-text"><%# Eval("Review") %></div>
                            <div class="review-rating">Rating: <%# Eval("Rating") %>/5</div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                SelectCommand="SELECT ReviewerName, Review, Rating FROM tReviews">
            </asp:SqlDataSource>
        </div>
    </form>

    <script>
        $(document).ready(function () {
            $(".review-card").each(function (index) {
                $(this).delay(200 * index).queue(function () {
                    $(this).addClass("fade-in").dequeue();
                });
            });
        });
        </script>

    
</body>
</html>
