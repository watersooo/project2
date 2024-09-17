<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="top">
  <nav class="top-nav">
    <button type="button" class="top-nav-modal">
      <i class="bx bxs-grid"></i>
    </button>
    <%
    if(session.getAttribute("userID")==null){
        out.println("<a href='login.jsp' class='top-title'>Login</a>");
    }else{
        String userID=(String)session.getAttribute("userID");
        out.println("<div class='top-title'>");
        out.println("Welcome"+userID);
        out.println("</div>");
    }
    %>
    <a href="cart.html" class="top-nav-cart">
      <i class="bx bx-cart"></i>
      <strong class="top-cart-count count-mobile"></strong>
    </a>
    <div class="top-category">
      <ul class="category-box">
        <li class="category-item">
          <a href="index.jsp#new">New</a>
        </li>
        <li class="category-item">
          <a href="index.jsp#goods">Goods</a>
        </li>
        <li class="category-item">
          <a href="wishlist.html">Wish</a>
        </li>
        <li class="category-item">
          <div class="top-cart">
            <a href="cart.html">Cart</a>
            <strong class="top-cart-count count-desk"></strong>
          </div>
        </li>
        <%
        if(session.getAttribute("userID")==null){
                out.println("<li class='category-item'>");
                out.println("<a href='signup.jsp'>Sign Up</a>");
                out.println("</li>");
        }else{
                String userID=(String)session.getAttribute("userID");
                out.println("<li class='category-item'>");
                out.println("<a href='logout.jsp'>Log out</a>");
                out.println("</li>");
        }
        %>
      </ul>
    </div>
  </nav>
</div>

