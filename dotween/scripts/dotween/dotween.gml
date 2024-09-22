// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function ease_in_sine(xx){
	return 1 - cos((xx * pi) / 2);
}

function ease_out_sine(xx){
	return sin(xx*pi/2);
}

function ease_in_out_sine(xx){
	return -(cos(xx*pi)-1)/2;
}

function ease_in_quad(xx){
    return xx * xx;
}

function ease_out_quad(xx){
    return 1 - (1 - xx) * (1 - xx);
}

function ease_in_out_quad(xx){
    return xx < 0.5 ? 2 * xx * xx : 1 - pow(-2 * xx + 2, 2) / 2;
}

function ease_in_cubic(xx){
    return xx * xx * xx;
}

function ease_out_cubic(xx){
    return 1 - pow(1 - xx, 3);
}

function ease_in_out_cubic(xx){
    return xx < 0.5 ? 4 * xx * xx * xx : 1 - pow(-2 * xx + 2, 3) / 2;
}

function ease_in_quart(xx){
    return xx * xx * xx * xx;
}

function ease_out_quart(xx){
    return 1 - pow(1 - xx, 4);
}

function ease_in_out_quart(xx){
    return xx < 0.5 ? 8 * xx * xx * xx * xx : 1 - pow(-2 * xx + 2, 4) / 2;
}

function ease_in_expo(xx){
    return xx == 0 ? 0 : pow(2, 10 * xx - 10);
}

function ease_out_expo(xx){
    return xx == 1 ? 1 : 1 - pow(2, -10 * xx);
}

function ease_in_out_expo(xx){
    if (xx == 0) return 0;
    if (xx == 1) return 1;
    return xx < 0.5 ? pow(2, 20 * xx - 10) / 2 : (2 - pow(2, -20 * xx + 10)) / 2;
}

function ease_in_circ(xx){
    return 1 - sqrt(1 - pow(xx, 2));
}

function ease_out_circ(xx){
    return sqrt(1 - pow(xx - 1, 2));
}

function ease_in_out_circ(xx){
    return xx < 0.5 ? (1 - sqrt(1 - pow(2 * xx, 2))) / 2 : (sqrt(1 - pow(-2 * xx + 2, 2)) + 1) / 2;
}

function ease_in_back(xx){
    var c1 = 1.70158;
    var c3 = c1 + 1;
    return c3 * xx * xx * xx - c1 * xx * xx;
}

function ease_out_back(xx){
    var c1 = 1.70158;
    var c3 = c1 + 1;
    return 1 + c3 * pow(xx - 1, 3) + c1 * pow(xx - 1, 2);
}

function ease_in_out_back(xx){
    var c1 = 1.70158;
    var c2 = c1 * 1.525;
    return xx < 0.5
        ? (pow(2 * xx, 2) * ((c2 + 1) * 2 * xx - c2)) / 2
        : (pow(2 * xx - 2, 2) * ((c2 + 1) * (xx * 2 - 2) + c2) + 2) / 2;
}

function ease_in_elastic(xx){
    var c4 = (2 * pi) / 3;
    return xx == 0 ? 0 : (xx == 1 ? 1 : -pow(2, 10 * xx - 10) * sin((xx * 10 - 10.75) * c4));
}

function ease_out_elastic(xx){
    var c4 = (2 * pi) / 3;
    return xx == 0 ? 0 : (xx == 1 ? 1 : pow(2, -10 * xx) * sin((xx * 10 - 0.75) * c4) + 1);
}

function ease_in_out_elastic(xx){
    var c5 = (2 * pi) / 4.5;
    if (xx == 0) return 0;
    if (xx == 1) return 1;
    return xx < 0.5
        ? -(pow(2, 20 * xx - 10) * sin((20 * xx - 11.125) * c5)) / 2
        : (pow(2, -20 * xx + 10) * sin((20 * xx - 11.125) * c5)) / 2 + 1;
}

function ease_in_bounce(xx){
    return 1 - ease_out_bounce(1 - xx);
}

function ease_out_bounce(xx){
    var n1 = 7.5625;
    var d1 = 2.75;
    if (xx < 1 / d1) {
        return n1 * xx * xx;
    } else if (xx < 2 / d1) {
        var t = xx - 1.5 / d1;
        return n1 * t * t + 0.75;
    } else if (xx < 2.5 / d1) {
        var t = xx - 2.25 / d1;
        return n1 * t * t + 0.9375;
    } else {
        var t = xx - 2.625 / d1;
        return n1 * t * t + 0.984375;
    }
}

function ease_in_out_bounce(xx){
    return xx < 0.5
        ? (1 - ease_out_bounce(1 - 2 * xx)) / 2
        : (1 + ease_out_bounce(2 * xx - 1)) / 2;
}