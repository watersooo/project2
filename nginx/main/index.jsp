<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="./css/reset.css" />
    <link rel="stylesheet" href="./css/style.css" />
    <!-- icon -->
    <link
      href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css"
      rel="stylesheet"
    />
    <!-- font -->
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link
      href="https://fonts.googleapis.com/css2?family=Source+Serif+Pro:wght@400;700&display=swap"
      rel="stylesheet"
    />
    <title>All-Powerful 2</title>
  </head>
  <body>
    <!-- header -->
    <div class="top">
  <nav class="top-nav">
    <button type="button" class="top-nav-modal">
      <i class="bx bxs-grid"></i>
    </button>
    <%
    if(session.getAttribute("id")==null){
        out.println("<a href='login.jsp' class='top-title'>Login</a>");
    }else{
        String userID=(String)session.getAttribute("id");
	out.println("<div class='top-title'>");
        out.println(userID+"님 환영합니다.");
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

<style>
    .spaced-paragraph {
        margin-bottom: 200px;  /* 아래쪽 공백 */
    }
</style>

    <!-- landing Page -->
    <section id="home" class="home">
      <div class="landing">
          <img src="./upassets/logo.png" alt="shoes-image" />
        <p class="spaced-paragraph"><br></p>      
        <div class="landing-desc-box">
          <div class="sec-top">
            <h1 class="sec-tit">Computer price comparison website</h1>
            <p class="sec-desc">"A price comparison website offering price comparisons for computers, laptops, and mobile phones."</p>
          </div>
          <a href="detail.html?8" class="landing-detail-link">Expose more items</a>
        </div>
      </div>
    </section>

    <!-- new item-->
    <section id="new" class="new-page">
      <div class="sec-top new-top">
        <h1 class="sec-tit new-tit">New Item</h1>
        <p class="sec-desc">Look for new items</p>
      </div>
      
      
<style>
    .center-image {
        text-align: center;
    }
    .center-image img {
        display: inline-block; /* 인라인 블록으로 설정하여 가운데 정렬 */
    }
</style>
<dib class="center-image">
      <ul class="new-box">
<pre>
                  
</pre>

          <a href="detail.html?17" class="new-item-link">
            <img
              src="./upassets/game1.jpg"
              alt="new goods"
              class="new-item"
            />
          </a>

<pre>
      
</pre>

          <a href="detail.html?16" class="new-item-link">
            <img
              src="./upassets/game2.jpg"
              alt="new goods"
              class="new-item"
            />
          </a>

<pre>
      
</pre>


          <a href="detail.html?16" class="new-item-link">
            <img
              src="./upassets/game3.jpg"
              alt="new goods"
              class="new-item"
            />
          </a>

<pre>
      
</pre>


          <a href="detail.html?16" class="new-item-link">
            <img
              src="./upassets/oper1.jpg"
              alt="new goods"
              class="new-item"
            />
          </a>
          
<pre>
      
</pre>


          <a href="detail.html?16" class="new-item-link">
            <img
              src="./upassets/oper2.jpg"
              alt="new goods"
              class="new-item"
            />
          </a>
          
<pre>
      
</pre>


          <a href="detail.html?16" class="new-item-link">
            <img
              src="./upassets/oper3.jpg"
              alt="new goods"
              class="new-item"
            />
          </a>

<pre>
      
</pre>


          <a href="detail.html?16" class="new-item-link">
            <img
              src="./upassets/oper4.jpg"
              alt="new goods"
              class="new-item"
            />
          </a>
		</ul>
</div>

    </section>
  
    <!-- goods -->
    <main id="goods" class="goods-page">
      <div class="sec-top">
        <h1 class="sec-tit">Goods</h1>
        <p class="sec-desc goods-desc">Choose the product you like</p>
      </div>
      <div class="goods-sort">
        <select name="color-choice" class="goods-item color-item">
          <option selected>All Goods</option>
          <option
            data-key="color"
            data-value="game"
            class="choice-sort select-black"
          >
            조립형 pc
          </option>
          <option
            data-key="color"
            data-value="oper"
            class="choice-sort select-blue"
          >
            사무용 pc
          
          </option>
          <option
            data-key="color"
            data-value="spe"
            class="choice-sort select-white"
          >
            전문가용 pc
          
        </select>
      </div>
      <ul class="goods-container"></ul>
      <ol class="goods-pagination"></ol>
    </main>

    <!-- footer -->
    <footer data-include-path="footer.html"></footer>

    <script type="module" src="./js/main.js"></script>
    <script type="module" src="./js/loadItem.js"></script>
  </body>
</html>


