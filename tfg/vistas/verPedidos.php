<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://unpkg.com/@tailwindcss/browser@4"></script>
    <title>PEDIDOS</title>
</head>
<body class="bg-neutral-100">
    <?php
        // metemos el header
        require_once("header.php");
    ?>
    <main>
        
        <section class="bg-[#5C3B1E] text-white py-16 px-5 text-center">
            <h1 class="text-4xl font-bold mb-4">PEDIDOS DE HOY</h1>
        </section>

        <section class="min-h-screen">   
            <div class="text-center flex justify-center mt-10 pt-10 pb-10 m-auto mt-10 w-[70%]">
            <?php
           
                if(isset($pedidosDeHoy)){
                    if(count($pedidosDeHoy)!=0){
                        
                        echo "<table class=\"w-full\">";
                            echo "<thead class=\"hidden lg:table-header-group text-xl border-b\"><tr class=\"text-xl\"><th class=\"p-2 text-left\">Nombre</th><th class=\"p-2 text-left\">Apellidos</th><th class=\"p-2 text-left\">Precio</th><th class=\"p-2 text-left\">Fecha</th><th class=\"p-2 text-left\">Hora</th><th class=\"p-2 text-left\">Finalizado</th></tr></thead>";

                            for ($i=0; $i < count($pedidosDeHoy) ; $i++) { 
                                echo "<tr class=\"lg:border-t-2 flex flex-col mb-7  lg:table-row p-4 lg:p-0 shadow-sm\">";
                               
                                for ($j=2; $j < count($pedidosDeHoy[$i])-1; $j++) { 
                                    echo "<td class=\"p-3 text-lg lg:text-left text-center\">". $pedidosDeHoy[$i][$j] ."</td>";
                                }
                                if($pedidosDeHoy[$i][7]==1){
                                    echo "<td class=\"p-3 text-lg lg:text-left text-center\">Si</td>";
                                }else{
                                    echo "<td class=\"p-3 text-lg lg:text-left text-center\">No</td>";
                                }
                                echo "<td>";
                                ?>  
                                <form action="../controlador/index.php?action=finalizarPedido" method="post">
                                    <input type="hidden" value="<?php echo $pedidosDeHoy[$i][0] ?>" name="idusu">
                                    <input type="hidden" value="<?php echo $pedidosDeHoy[$i][1] ?>" name="idpedido">
                                    <input type="hidden" value="<?php echo $pedidosDeHoy[$i][5] ?>" name="fecha">
                                    <input type="hidden" value="<?php echo $pedidosDeHoy[$i][6] ?>" name="hora">
                                    <?php
                                        if($pedidosDeHoy[$i][7]===0){
                                            ?>
                                                <input type="submit" class="cursor-pointer" value="Finalizar Pedido">
                                            <?php
                                        }
                                    ?>
                                    
                                   
                                </form>
                                
                                <?php
                                echo "</td></tr>";
                            }
                        echo "</table>";
                    }else{
                        echo "<p class=\" text-4xl\">No tienes Pedidos</p>";
                    }
                }
            ?>
        </div>
        </section>
    </main>
    <?php
        require_once("footer.php");
    ?>
</body>
</html>