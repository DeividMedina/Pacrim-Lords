<?php
//Conexión inicial que permite acceder a una base de datos, <User>,<Password>,<db>
$conexión = oci_connect('OW_TST_US', 'OW_TST_US', 'localhost/XE');
if (!$conexión) {
    $e = oci_error();
    trigger_error(htmlentities($e['message'], ENT_QUOTES), E_USER_ERROR);
}
// Preparar la sentencia en una variable,  "begin <nombreDePaquete>.<nombreDeProcedimiento>(:parametro1,:parametroN); end; ");
$stmt = OCIParse($conexión, "begin ARLS_INSERT.INSERTAR(:p_Id_ARL, :p_Nombre_ARL,:cod_respuesta,:msg_respuesta); end;");
// variables de entrada!!!
$idArl=null; //En paquete se define una secuencia autonumerica para este caso
$nombreArl='unNombreCualquiera';
//Funcion Php que toman los tipos de parametros y los iguala a la variable de entrada
ocibindbyname($stmt,":p_Id_ARL",$idArl);
ocibindbyname($stmt,":p_Nombre_ARL",$nombreArl);                                               
ocibindbyname($stmt,":cod_respuesta",$cod,20); //Parametros de salida, se les debe asignar un espacio de salida que en este caso es 20
ocibindbyname($stmt,":msg_respuesta",$msg,20); //Parametros de salida, se les debe asignar un espacio de salida que en este caso es 20
//Funcion que ejecuta el paquete con los parametros instanciados
ociexecute($stmt,OCI_DEFAULT);
//Funcion que hace commit en base de datos
$r=oci_commit($conexión);
if (!$r) {
    echo "No se esta guardando weon";
    }
//Prueba de codigos de salida que provienen desde el paquete    
echo "el codigo del pendejo es: ".$cod;
echo "<br>";
echo "la verga esa del paquete fue: ".$msg;
//Funcion que cierra la sesion oracle
oci_close($conexión);
?>