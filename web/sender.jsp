<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%--<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">--%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>我要寄件</title>
    <script type="text/javascript" src="res/js/jquery-1.5.1.min.js"></script>
    <script>
        $(function(){
            $("div").click(function(){
                $(this).addClass("select");
            });
        })
    </script>
    <script>
        function check(){
            if(forma.name_send.value=="")
            {
                alert("寄件人姓名不能为空!");
                forma.name_send.focus();
                return false;
            }
            if(forma.phone_send.value=="")
            {
                alert("寄件人电话不能为空!");
                forma.phone_send.focus();
                return false;
            }
            if(forma.add_send.value=="")
            {
                alert("寄件人地址不能为空!");
                forma.add_send.focus();
                return false;
            }
            var re = /^[0-9]+.?[0-9]*$/;
            if (!re.test(forma.phone_send.value))
            {
                alert("寄件人电话不能为字符,请输入数字");
                forma.phone_send.focus();
                return false;
            }
            if (!re.test(forma.phone_accept.value))
            {
                alert("收件人电话不能为字符,请输入数字");
                forma.phone_accept.focus();
                return false;
            }
            if (!re.test(forma.money.value))
            {
                alert("寄件金额不能为字符,请输入数字");
                forma.money.focus();
                return false;
            }
            if (!re.test(forma.heavy.value))
            {
                alert("寄件重量不能为字符,请输入数字");
                forma.heavy.focus();
                return false;
            }
            if(forma.name_accept.value=="")
            {
                alert("收件人姓名不能为空!");
                forma.name_accept.focus();
                return false;
            }
            if(forma.phone_accept.value=="")
            {
                alert("收件人电话不能为空!");
                forma.phone_accept.focus();
                return false;
            }
            if(forma.add_accept.value=="")
            {
                alert("收件人地址不能为空!");
                forma.add_accept.focus();
                return false;
            }
            if(forma.money.value=="")
            {
                alert("寄件金额不能为空!");
                forma.money.focus();
                return false;
            }
            if(forma.kind.value=="")
            {
                alert("寄件种类不能为空!");
                forma.kind.focus();
                return false;
            }
            if(forma.heavy.value=="")
            {
                alert("寄件人重量不能为空!");
                forma.heavy.focus();
                return false;
            }
            return ture;
        }
    </script>

    <style>
        body {
            background: #66667c;
        }
        .exlist {
            background-color:#F9EE70;
            margin:30px auto;
            padding:5px;
            width:680px;
            min-height:200px;
            height:auto;
            font-family:"微软雅黑";
            -webkit-box-shadow:4px 4px 5px #333;/*webkit*/
            -moz-box-shadow:4px 4px 5px #333;/*firefox*/
            box-shadow:4px 4px 5px #333;/*opera或ie9*/
        }
        #title {
            width:200px;
            margin:20px auto;
        }
        #title legend {
            font-size:26px;
        }
        div.exlist_title {
            background-color:#F9EE70;
            width:680px;
            height:20px;
        }
        div.exlist_title img {
            float:right;
            margin:-15px 10px;
        }
        /*-----------form-----------*/

        fieldset {
            width:90%;
            border:1px dashed #666;
            margin:40px auto;
        }
        legend {
            background-color:#F9EE70;
            height:120px;
            height:30px;
            color:#630;
            font-weight:bolder;
            font-size:20px;
            line-height:30px;
            margin:-20px 10px 10px;
            padding:0 10px;
        }
        div.row {
            margin:10px;
            padding:5px;
        }
        div.row label {
            height:20px;
            font-size:16px;
            line-height:20px;
            margin:0 10px;
        }
        input.txt {
            background-color:#F9EE70;
            color:#333;
            width:150px;
            height:20px;
            margin:0 10px;
            font-size:16px;
            line-height:20px;
            border:none;
            border-bottom:1px solid #565656;
        }
        input.txt:focus {
            color:#333;
            background-color: #FF0;
            border-bottom:1px solid #F00;
        }
        select {
            width:100px;
        }
        option {
            text-align:center;
        }
        input.btn {
            width:50px;
            height:20px;
            color:#000008B;
            background-color: transparent;
            border:0;
            padding:0;
        }

    </style>
</head>
<body>
<div class="exlist">
    <div class="exlist_title"><img src="images/paper-clip.png" /></div>
    <div id="title">
        <legend>快递运单信息</legend>
    </div>


    <form method="post" action="/send.jsp" name = "forma" onSubmit="return check()">
        <fieldset>
            <legend>寄件信息</legend>
            <div class="row">
                <label>1. 寄件人:</label>
                <input style="width:150px" class="txt" type="text" name="name_send" />

            </div>
            <div class="row">
                <label>2. 联系电话:</label>
                <input class="txt" type="text" name="phone_send"/>
            </div>
            <div class="row">
                <label>3. 详细地址:</label>
                <input class="txt" style="width:400px"  type="text" name="add_send" />
            </div>
        </fieldset>
        <fieldset>



            <legend>收件信息</legend>
            <div class="row">
                <label>1. 发货人:</label>
                <input style="width:100px" class="txt" type="text" name="name_accept"/>

            </div>
            <div class="row">
                <label>2. 联系电话:</label>
                <input class="txt" type="text" name="phone_accept"/>
            </div>
            <div class="row">
                <label>3. 详细地址:</label>
                <input class="txt" style="width:400px"  type="text"name="add_accept" />
            </div>
        </fieldset>
        <fieldset>
            <legend>货物信息</legend>
            <div class="row">
                <label>1. 重量:</label>
                <input class="txt" style="width:40px" maxlength="2" type="text" name = "heavy"/>
                <label>（kg）</label>
                <label>2. 价钱:</label>
                <input class="txt" style="width:40px" maxlength="4" type="text" name="money"/>
                <label>（元）</label><br>
                <p> <label>3. 寄件类型:</label>
                    <select name="kind" >
                        <option value="文件">文件</option>
                        <option value="数码产品">数码产品</option>
                        <option value="日用品">日用品</option>
                        <option value="服饰">服饰</option>
                        <option value="食品">食品</option>
                        <option value="医药类产品">医药类产品</option>
                        <option value="其他">其他</option>
                    </select>
                </p>
               <label>4. 快递公司:</label>
                    <select name="company" >
                        <option value="顺丰">顺丰</option>
                        <option value="韵达">韵达</option>
                        <option value="中通">中通</option>
                        <option value="EMS">EMS</option>
                        <option value="申通">申通</option>
                    </select>

            </div>
            <center><input type="submit" value="确认下单"  size="25" ></center>
        </fieldset>
    </form>
</div>

</body>
</html>