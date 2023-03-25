/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var comingdate= new Date("April 10, 2023 00:00:00");

var d = document.getElementById('d');

var h = document.getElementById('h');
var m = document.getElementById('m');
var s = document.getElementById('s');

var x = setInterval(function(){
    var now = new Date();
    var des = comingdate.getTime() - now.getTime();
    var days = Math.floor(des/(1000*60*60*24));
    var hours = Math.floor(des%(1000 * 60 * 60 * 24) / (1000 * 60 * 60));
    var mins = Math.floor(des%(1000 * 60 *60) / (1000 * 60));
    var secs = Math.floor(des%(1000 * 60) / 1000);
    
    
    d.innerHTML = getTrueNumber(days);
    h.innerHTML = getTrueNumber(hours);
    m.innerHTML = getTrueNumber(mins);
    s.innerHTML = getTrueNumber(secs);
    
    if(des <= 0) clearInterval(x);
},1000);

function getTrueNumber(x){
    if(x<10) return '0'+x;
    else return x;
}
