var heart_x = 10; //X-coordinate for the first heart
var heart_y = 10; //Y-coordinate for hearts

for (var i = 0; i < lives; i++) {
    draw_sprite(spr_Heart, 0, heart_x + i * 32, heart_y);
}

//Draw the score
draw_text(10, 50, "Score: " + string(global.score));

//Draw the high score
draw_text(10, 70, "High Score: " + string(global.high_score));

//Draw the coins
draw_text(10, 90, "Coins: " + string(coin_count));


