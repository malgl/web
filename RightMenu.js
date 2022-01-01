var def_bn_top=60;//위로부터의 간격
function onload_move_r_bn()
{
	move_r_div=document.getElementById("right_menu");
	move_r_div.style.right="5px";//오른쪽 끝에서의 간격
	move_r_div.style.display='';
	move_r_div.topInt=def_bn_top;
	move_r_div.style.top=move_r_div.topInt;
	def_bn_max=document.body.scrollHeight-move_r_div.scrollHeight-def_bn_top;
	setTimeout("auto_move_r_bn()",100);
}
function auto_move_r_bn()
{
	var topchk=document.body.scrollTop+def_bn_top;
	move_r_div.topInt+=Math.floor((topchk-move_r_div.topInt)/2);//이동속도 조절은 '2'를 변경
	if(move_r_div.topInt>def_bn_max)move_r_div.topInt=def_bn_max;
	if(move_r_div.topInt<def_bn_top)move_r_div.topInt=def_bn_top;
	move_r_div.style.top=move_r_div.topInt;
	setTimeout("auto_move_r_bn()",100);
}
setTimeout("onload_move_r_bn()",500);
