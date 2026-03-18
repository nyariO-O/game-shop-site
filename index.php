<?php include "header.php";
?>

па
<div class="slider-container">
    <div class="sliders">
        <div class="slide active">
            <div class="img1">
                <a href="gamePage.php"><img src="img/sims.jpg" alt=""> <div class="info">
                    <div class="game-title">The Sims 4</div>
                <!-- <div class="slider-text">1200 рублей</div> -->
                <button class="basket"><h4>1200 рублей</h4></button>
                </div></a>
               
            </div>
            
        </div>
    
        <div class="slide">
            <div class="img1">
                <a href="gamePage.php"><img src="img/help.jpg" alt=""><div class="info">
                <div class="game-title">CS2 Prime</div>
                <!-- <div class="slider-text"></div> -->
                <button class="basket"><h4>1200 рублей</h4></button>
            </div></a>
            </div>
            
        </div>
    </div>
    <button class="prev" onclick="moveSlide(-1)">❮</button>
    <button class="next" onclick="moveSlide(1)">❯</button></div>
    <div class="liders"><h1>Лидеры продаж</h1></div>
    <div class="game-list">
        <ul>
            <li>
                <a href="gamePage.php">
                    <div class="game">
                    <div class="game-img">
                        <img src="img/gta.jpg" alt="">
                    </div>
                    <div class="game-info">
                        <h4>GTA 5 </h4>
                        <p>action-adventure</p>
                        
                    </div>
                <div class="game-list-button"> <button> 1200 рублей</button> </div>
                </div>
                </a>
            </li>
            <li>
            <a href="gamePage.php"><div class="game">
                    <div class="game-img">
                        <img src="img/peak.png" alt="">
                    </div>
                    <div class="game-info">
                        <h4>PEAK </h4>
                        <p>action-adventure</p> 
                    </div>
                    <div class="game-list-button"> <button> 600 рублей</button> </div></div>
                </a>
            </li>
        </ul>
    </div>
    <?php include "footer.php";
?>