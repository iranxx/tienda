<?php
session_start();
					include "conexion.php";
					$arreglo=$_SESSION['carrito'];
					for($i=0;$i<count($arreglo);$i++){
						$re=mysql_query("select stock from productos where id=".$arreglo[$i]['Id'])or die(mysql_error());
						while ($f=mysql_fetch_array($re)) {
							
							$x=$f['stock']-$arreglo[$i]['Cantidad'];
							
							mysql_query("update productos set stock=".$x." where id=".$arreglo[$i]['Id'])or die(mysql_error());
						}
						
					}
					
		$total=0;
		$tabla='<table border="1"><tr>
		<th>Nombre</th>
		<th>Cantidad</th>
		<th>Precio</th>
		<th>Subtotal</th></tr>';
		for($i=0;$i<count($arreglo);$i++){
			
			$tabla=$tabla.'<tr>
			<td>'.$arreglo[$i]['Nombre'].'</td>
			<td>'.$arreglo[$i]['Cantidad'].'</td>
			<td>'.$arreglo[$i]['Precio'].'</td>
			<td>'.$arreglo[$i]['Cantidad'] * $arreglo[$i]['Precio'].'</td>
			</tr>';
			$total=$total+($arreglo[$i]['Cantidad'] * $arreglo[$i]['Precio']);			
		}
		$tabla.'</table>';
	
		
?>