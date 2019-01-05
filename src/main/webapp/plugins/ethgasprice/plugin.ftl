<#--

    Solo - A small and beautiful blogging system written in Java.
    Copyright (c) 2010-2018, b3log.org & hacpai.com

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.

-->

<#--<div id="gasPricePanel">-->
    <#--<div class="module-panel">-->
        <#--<div class="module-header">-->
            <#--<h2>${gasLabel}</h2>-->
        <#--</div>-->
        <#--<div class="module-body padding4">-->
            <#--<div id="gasPrice">-->
            <#--</div>-->
        <#--</div>-->
    <#--</div>-->
<#--</div>-->
<#--<link type="text/css" rel="stylesheet" href="${staticServePath}/plugins/symphony-interest/style.css"/>-->
<#--<script src=${staticServePath}"/src/main/webapp/js/admin/plugin.js"></script>-->

<#--<script async src="https://static-solo.b3log.org/plugins/kanbanniang/assert/index.js"></script>-->
<div class="solo-kanbanniang">
    <canvas id="gasPrice" width="150" height="150" style="position:fixed; z-index:999; top:100px;">

</div>
<script type="text/javascript">

    function isEmptyObject(obj){
        for (var n in obj) {
            return false
        }
        return true;
    }
         function _draw(blocknum , standard, slow) {
            var canvas = document.getElementById('gasPrice');
             canvas.innerHTML="";
            if (canvas.getContext){
                var ctx = canvas.getContext('2d');
                ctx.beginPath();
                ctx.arc(75,75,75,0,Math.PI*2,true); // 绘制
                ctx.moveTo(110,75);
                ctx.fillStyle='#00ABEB'
                ctx.fill();

                ctx.beginPath();
                ctx.font = 60 + "px Arial";
                ctx.fillStyle = "#FFFFFF";
                ctx.textAlign = 'center';
//                ctx.fillText("2.5", 75, 90);
                ctx.fillText(standard, 75, 90);

                ctx.beginPath();
                ctx.font = 11 + "px Arial";
                ctx.fillStyle = "#FFFFFF";
                ctx.textAlign = 'center';
                ctx.fillText("推荐GasPrice（<5m）", 75, 35);

                ctx.beginPath();
                ctx.font = 11 + "px Arial";
                ctx.fillStyle = "#FFFFFF";
                ctx.textAlign = 'center';
//                ctx.fillText("最低GasPrice: 2.5", 75, 115);
                ctx.fillText("最低GasPrice: "+slow, 75, 115);
//                ctx.fillText("6946269", 75, 130);
                ctx.fillText(blocknum, 75, 130);

            }
        };

        function _initTips(callback) {
            console.log("12")
            $.ajax({
                cache: true,
                url: 'https://gasprice.poa.network',
                type: 'GET',
                jsonp: 'callback',
                error: function () {
                    $('#gasPrice').html('Loading price failed :-(').css('background', 'none')
                },
                success: function(result) {
                    console.log(result.block_number)
                    blocknum = result.block_number
                    standard = result.standard
                    slow = result.slow
                    if(typeof callback === 'function'){
                        callback(blocknum, standard, slow);
                    }

                }
            })
        };


    setInterval("_initTips(_draw)",5000);
//    admin.plugin.add({
//        'id': 'gasPrice',
//        'path': '/main/panel1',
//        'content': $('#gasPrice').html()
//    })
//    gasPrice.init()

</script>