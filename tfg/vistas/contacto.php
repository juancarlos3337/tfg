<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://unpkg.com/@tailwindcss/browser@4"></script>
    <title>CONTACTO</title>
</head>
<body class="bg-neutral-100">
    <?php
        require_once("header.php");
    ?>
    <section class="bg-[#5C3B1E] text-white py-16 px-5 text-center">
        <h1 class="text-4xl font-bold mb-4">¿Tienes dudas o sugerencias?</h1>
        <p class="text-lg max-w-xl mx-auto">¡Nos encanta saber de ti! Rellena el formulario o escríbenos por cualquiera de nuestras redes.</p>
    </section>

<!-- Sección Contacto (formulario + datos de contacto) -->
<section class="min-h-screen flex items-center justify-center px-4 py-10">
  <div class="max-w-5xl w-full bg-white shadow-xl rounded-2xl overflow-hidden grid lg:grid-cols-2">
    
    <!-- Info contacto -->
    <div class="bg-[#F8E5B2] p-10 flex flex-col justify-between">
      <div>
        <h2 class="text-2xl font-bold text-[#5C3B1E] mb-4">Datos de contacto</h2>
        <ul class="text-[#3d2b1f] space-y-2">
          <li><strong>📞 Teléfono:</strong> <a href="tel:+34123456789" class="relative inline-block after:absolute after:left-0 after:bottom-0 after:h-[3px] after:w-0 after:bg-orange-400 after:transition-all after:duration-300 hover:after:w-full">+34 600 123 456</a></li>
          <li><strong>📧 Email:</strong> <a href="mailto:info@patatashouse.com" class="relative inline-block after:absolute after:left-0 after:bottom-0 after:h-[3px] after:w-0 after:bg-orange-400 after:transition-all after:duration-300 hover:after:w-full">info@elpaponazo.com</a></li>
          <li><strong>📍 Dirección:</strong> C/ Pintor Manuel Maldonado, Granada</li>
          <li><strong>🕒 Horario:</strong> Domingo a Viernes — 19:00 a 24:00</li>
        </ul>
      </div>
      
    </div>

    <!-- Formulario -->
    <div class="p-10">
      <form method="post" action="index.php?action=enviarMensaje" class="space-y-6">
        <div>
          <label class="block text-[#5C3B1E] font-semibold mb-1">Nombre</label>
          <input type="text" name="nombre" placeholder="Tu nombre" class="w-full border border-gray-300 rounded p-3" required>
        </div>

        <div>
          <label class="block text-[#5C3B1E] font-semibold mb-1">Email</label>
          <input type="email" name="email" placeholder="tucorreo@example.com" class="w-full border border-gray-300 rounded p-3" required>
        </div>

        <div>
          <label class="block text-[#5C3B1E] font-semibold mb-1">Mensaje</label>
          <textarea name="mensaje" rows="4" placeholder="Escribe tu mensaje..." class="w-full border border-gray-300 rounded p-3" required></textarea>
        </div>

        <button type="submit" class="w-full bg-[#5C3B1E] px-8 py-3 rounded-lg hover:bg-[#D9984D] text-white hover:text-[#8C512B] transition duration-300 font-bold cursor-pointer">Enviar mensaje</button>
      </form>
    </div>
  </div>
</section>

<!-- Mapa opcional -->
<section class="w-full py-20 px-10 bg-[#F8E5B2] flex flex-col items-center">
  <h2 class="text-4xl font-bold text-[#5C3B1E] mb-4">¿Dónde estamos?</h2>
  <p class="text-[#3d2b1f] text-2xl mb-6">Ven a visitarnos y disfruta de nuestras mejores patatas </p>
  <div class="w-full lg:w-[70%] h-120">
    <iframe
      src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3036.9419925712743!2d-3.703790684889601!3d40.41677537936365!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd42288fa504d5d5%3A0x6f1cb22a823fdfdb!2sMadrid!5e0!3m2!1ses!2ses!4v1614081586757!5m2!1ses!2ses"
      width="100%" height="100%" frameborder="0" allowfullscreen="" aria-hidden="false" tabindex="0"
      class="rounded-xl shadow-md">
    </iframe>
  </div>
</section>

<?php
    require_once("footer.php");
?>
</body>
</html>