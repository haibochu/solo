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

<div id="gasPricePanel">
    <div class="module-panel">
        <div class="module-header">
            <h2>${gasLabel}</h2>
        </div>
        <div class="module-body padding4">
            <div id="gasPrice">
            </div>
        </div>
    </div>
</div>



<link type="text/css" rel="stylesheet" href="${staticServePath}/plugins/symphony-interest/style.css"/>
<script type="text/javascript">

    function isEmptyObject(obj){
        for (var n in obj) {
            return false
        }
        return true;
    }

    $('#loadMsg').text("${loadingLabel}")

    $('#gasPricePanel').css('background',
            "url(${staticServePath}/images/loader.gif) no-repeat scroll center center transparent")

    plugins.gasPrice= {
        init: function () {
            $.ajax({
                url: 'https://gasprice.poa.network',
                type: 'GET',
                jsonp: 'callback',
                error: function () {
                    $('#gasPrice').html('Loading price failed :-(').css('background', 'none')
                },
                success: function (data, textStatus) {
                    var price = data
                    console.log(price)
                    if (isEmptyObject(price)) {
                        return
                    }

                    var listHTML = '<ul>'
                    for (var instance in price) {

                        var priceLable = instance
                        var priceValue = price[instance]
                        var priceLiHtml = '<li>'
                                + '<a> '
                                + priceLable + ': ' + priceValue
                                + '</a>&nbsp; </li>'
                        listHTML += priceLiHtml
                    }
                    listHTML += '</ul>'
                    $('#gasPrice').html(listHTML).css('background', 'none')

                }
            })
        }
    }

    admin.plugin.add({
        'id': 'gasPrice',
        'path': '/main/panel1',
        'content': $('#gasPricePanel').html()
    })


</script>