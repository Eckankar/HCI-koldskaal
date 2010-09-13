function RGBtoHex(s) {
    var colors = s.substr(4,s.length - 5).replace(/[^,0-9]/, "").split(",");
    return toHex(colors[0])+toHex(colors[1])+toHex(colors[2])}
function toHex(N) {
 if (N==null) return "00";
 N=parseInt(N); if (N==0 || isNaN(N)) return "00";
 N=Math.max(0,N); N=Math.min(N,255); N=Math.round(N);
 return "0123456789ABCDEF".charAt((N-N%16)/16)
      + "0123456789ABCDEF".charAt(N%16);
}

$(document).ready(function() {
    $("#level1 li").corner("top");
    $("#level1 .menuBar").corner("tr");
    var l2 = $("#level2 li.selected").corner("top");
    $("#level2 li.selected").corner("top");
    $("#level2 div").corner("br cc:#FFF");
    $("#level3").corner("bottom");

    setTimeout(function() {
        var l1 = $("#level1 li.selected");
        l1.prev().corner("br cc:#" + RGBtoHex(l1.css("background-color")));
        l1.next().corner("bl cc:#" + RGBtoHex(l1.css("background-color")));
        var l2 = $("#level2 li.selected");
        l2.prev().corner("br cc:#" + RGBtoHex(l2.css("background-color")));
        l2.next().corner("bl cc:#" + RGBtoHex(l2.css("background-color")));
    }, 0);
        
});
    
