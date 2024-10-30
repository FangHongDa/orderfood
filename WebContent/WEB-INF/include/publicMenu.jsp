<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script>
	function clickMenu(id){
		localStorage.setItem('menu_id',id)
	}
	window.onload = function(){
		const menu_id = localStorage.getItem('menu_id')
		if(menu_id){
			document.getElementById(menu_id).click()
		}
	}
</script>
<!--_menu 作为公共模版分离出去-->
<aside class="Hui-aside">
    <div class="menu_dropdown bk_2">
        <dl id="menu-member">
        </dl>
        <dl id="menu-member">
            <dt id="customer"><i class="Hui-iconfont">&#xe60d;</i> 用户管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="/customer/list" title="用户列表" onclick="clickMenu('customer')">用户列表</a></li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-product">
            <dt id="product"><i class="Hui-iconfont">&#xe620;</i> 商品管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="/product/list" title="商品列表" onclick="clickMenu('product')">商品列表</a></li>
                    <li><a href="/category/list" title="商品产品分类管理" onclick="clickMenu('product')">商品分类管理</a></li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-picture">
            <dt id="order"><i class="Hui-iconfont">&#xe613;</i> 订单管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="/order/list" title="订单列表" onclick="clickMenu('order')">订单列表</a></li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-comments">
            <dt id="review"><i class="Hui-iconfont">&#xe622;</i> 评论管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="/review/list" title="评论列表" onclick="clickMenu('review')">评论列表</a></li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-admin">
            <dt id="config"><i class="Hui-iconfont">&#xe62d;</i> 管理员管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="/config/listRole" title="角色管理" onclick="clickMenu('config')">角色管理</a></li>
                    <li><a href="/config/listPermission" title="权限管理" onclick="clickMenu('config')">权限管理</a></li>
                    <li><a href="/config/listUser" title="管理员列表" onclick="clickMenu('config')">管理员列表</a></li>
                </ul>
            </dd>
        </dl>
        <!--  <c:if test="${subject.hasRole('admin')}">
            <dl id="menu-system">
                <dt id="zixun"><i class="Hui-iconfont">&#xe62e;</i> 资讯管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
                <dd>
                    <ul>
                        <li><a href="/zixun/list" title="资讯列表" onclick="clickMenu('zixun')">资讯列表</a></li>
                    </ul>
                </dd>
            </dl>
        </c:if>
        -->
    </div>
</aside>
<div class="dislpayArrow hidden-xs"><a class="pngfix" href="javascript:void(0);" onClick="displaynavbar(this)"></a></div>
<!--/_menu 作为公共模版分离出去-->
