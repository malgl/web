var def_bn_top=60;//���κ����� ����
function onload_move_r_bn()
{
	move_r_div=document.getElementById("right_menu");
	move_r_div.style.right="5px";//������ �������� ����
	move_r_div.style.display='';
	move_r_div.topInt=def_bn_top;
	move_r_div.style.top=move_r_div.topInt;
	def_bn_max=document.body.scrollHeight-move_r_div.scrollHeight-def_bn_top;
	setTimeout("auto_move_r_bn()",100);
}
function auto_move_r_bn()
{
	var topchk=document.body.scrollTop+def_bn_top;
	move_r_div.topInt+=Math.floor((topchk-move_r_div.topInt)/2);//�̵��ӵ� ������ '2'�� ����
	if(move_r_div.topInt>def_bn_max)move_r_div.topInt=def_bn_max;
	if(move_r_div.topInt<def_bn_top)move_r_div.topInt=def_bn_top;
	move_r_div.style.top=move_r_div.topInt;
	setTimeout("auto_move_r_bn()",100);
}
setTimeout("onload_move_r_bn()",500);
