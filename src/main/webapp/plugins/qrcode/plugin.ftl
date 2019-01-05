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
<link type="text/css" rel="stylesheet" href="${staticServePath}/plugins/qrcode/index.css"/>
<#--<script src=${staticServePath}"/src/main/webapp/js/admin/plugin.js"></script>-->

<#--<script async src="https://static-solo.b3log.org/plugins/kanbanniang/assert/index.js"></script>-->
<div class="wr-fx">

    <div class="fixed-tools show">
        <a class="tools-item tools-erweima">
            <i class="iconfont icon-qrcode"></i>
        </a>
        <div class="qr-group">
            <div class="tabs"><a class="tab">极客公园</a>
            <a class="tab">极客之选</a><a class="tab active">顶楼TopView</a></div>
            <div class="panels">
                <div class="panel">
                    <div class="img"><img src="//imgslim.geekpark.net/image/newgeekpark/qr_geekpark.jpg" alt="极客公园">
                        <p>用极客视角，追踪你最不可错过的科技圈。</p>
                    </div>
                </div>
                <div class="panel">
                    <div class="img"><img src="//imgslim.geekpark.net/image/newgeekpark/qr_geekchoice.jpg" alt="极客之选">
                        <p>新鲜、有趣的硬件产品，第一时间为你呈现。</p>
                    </div>
                </div>
                <div class="panel active">
                    <div class="img"><img src="//imgslim.geekpark.net/image/newgeekpark/qr_topview.jpg" alt="顶楼"><p>关注前沿科技，发表最具科技的商业洞见。</p>
                    </div>
                </div>
            </div>
        </div><a data-tooltip="意见反馈" class="tools-item tip"><i class="iconfont icon-feedback"></i></a>
        <a data-tooltip="返回顶部" class="tools-item gotop tip" onclick="Util.goTop()">
            <i class="iconfont icon-gotop">

            </i>
        </a>
    </div>
    <#--<div id="qrcode" width="150" height="150" style="position:fixed; z-index:999; top:250px;">-->
        <#--<img class="fit-picture"-->
             <#--&lt;#&ndash;src="sojson.jpg"&ndash;&gt;-->
    <#--</div>-->

</div>
<script type="text/javascript">

//    admin.plugin.add({
//        'id': 'gasPrice',
//        'path': '/main/panel1',
//        'content': $('#gasPrice').html()
//    })
//    gasPrice.init()

</script>