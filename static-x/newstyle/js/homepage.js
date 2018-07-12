
var header = document.getElementById('header');
var height = window.innerHeight;

header.style.height = height + 'px';
var conHeight=document.getElementById('con').clientHeight;
/* console.log(conHeight ); */
document.getElementById('eng').style.cssText='margin-top: '+(height-conHeight-20)/2 + 'px';

