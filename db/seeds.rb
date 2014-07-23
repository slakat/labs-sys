# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

type_list = [
	["com" , "Semi Hermeticos","com/compresorSH.jpg", "Compresores semi-herméticos de pistón Dorin , para refrigeración y aire acondicionado.\n - Alta eficiencia; modelos para refrigerantes R-22, R-134a, R-404 y R-507 \n - Fabricados bajo rigurosas normas internacionales de diseño y control en Italia\n - Desde 1.5 a 75 HP en stock para entrega inmediata\n - Disponibles en 220 y 380 V\n -Completa línea de repuestos en stock para su reparación .\n - Para alta, media y baja temperatura de evaporación."],
	["com" , "Hermeticos" ,"com/compresorH.jpg", "Compresores-herméticos de pistón Maneurop - Bristol-Copeland-Tecumseh , para refrigeración y aire acondicionado.\n - Alta eficiencia; modelos para refrigerantes R-22, R-134a, R-404 y R-507 \n- Fabricados bajo rigurosas normas internacionales de diseño y control .\n - Desde 1.5 a 13 HP en stock para entrega inmediata\n - Disponibles en 220 y 380 V\n - Para alta, media y baja temperatura de evaporación."],
	["com", "Scroll","com/compresorSCroll.jpg", "- Línea de compresores herméticos tipo Scroll, para aplicaciones de alta y media temperatura.\n - Modelos Scroll y Rotativos Panasonic , ZR (R-22) ; ZP (R-410) ; SM (R-22): SZ (R-407)\n - Capacidad desde 9.000 BTU hasta 180.000 BTU"],
	["com", "Fraccionarios" ,"com/compresorFrac.png", "Línea de compresores fraccionarios Embraco-Aspera\n - Compresores para media y baja temperatura con gas R-134a.R-22; R-507 O R-404\n - Modelos en 220 V a 50 Hz.\n - Modelos de 1/6+ a 1.5 HP.\n- Rendimiento de +5°C a -35°C. \n Línea de compresores fraccionarios Danfoss: \n - Compresores para alta, media y baja temperatura con gas R-134a R-507\n - Modelos en 220 V a 50 Hz.\n - Modelos de 1/4+ a 3/4+ HP.\n - Rendimiento de +15°C a -35°C. "],
	["eva", "Evaporadores" ,"evap/evap1.png", "Nuestros evaporadores de alta eficiencia están fabricados con aletas de aluminio y tubo de cobre de 12mm de alta calidad, los intercambiadores de calor se suministran limpios y probados con una presión de 30 bars.\n De aluminio pintado blanco al polvo electrostático, con alta resistencia contra la corrosión y los impactos.\n Sistema de desescarche por resistencias eléctricas de acero inoxidable enfundadas en tubos de aluminio localizados en el paquete aleteado y en la bandeja de desagüe. "],
	["con", "Condensadores" ,"cond/con1.png" , "Nuestros condensadores de alta eficiencia, están fabricados con aletas de aluminio y tubo de cobre de 9.52mm de alta calidad.  Los intercambiadores de calor se suministras limpios en el interior de las tuberías y con una prueba de presión de 30bars.\n La carcaza de acero galvanizado pintado en negro al polvo electrostático, con alta resistencia contra la corrosión y resistente a los impactos no produce residuos tóxicos. \n Los ventiladores con motor axial y rotor externo, con alto estándar de seguridad y anclados a la carcaza."],
	["fil", "DML" , "fil/filtrodml.png", "Los Filtros secadores DML están diseñados para aplicaciones con una gran adsorción de agua, y pueden ser utilizados con compresores de cualquier marca. Como los Filtros secadores de tipo DML no contienen alúmina activada, los aditivos de aceite no se deterioran "],
	["fil", "DLC" , "fil/filtrodlc.png", "Los filtros secadores de tipo DCL son adecuados para instalaciones que funcionan con altas temperaturas de condensación y exigen una gran capacidad de secado "],
	["ven" , "Ventiladores", "ven/ven1.png", "Ebmpapst \n - Diámetros desde 250 mm hasta 800 mm\n - Modelos en 220 V y 380 V, 24 50 y 60 Hz. \n - Flujo de aire Aspirante o Impelente.\n - Fabricados en Alemania\n Ziehl Abegg\n Desde 450 mm hasta 800 mm de diámetro en stock.\n - Distintos tipos, caudales de aire y presiones estáticas.\n - Modelos en 220 V y 380 V, 50 y 60 Hz.\n - Empleo en instalaciones DE MANTENCION Y BAJA TEMPERATURA.\n - Flujo de aire Aspirante o Impelente (según tipo).\n - Fabricados en Alemania.\n W.G\n Diámetros desde 250 mm hasta 800 mm.\n - Modelos en 220 V y 380 V, 50 Hz. \n - Flujo de aire Aspirante o Impelente.\n - Fabricados en China."],
	["ace" , "Suniso", "ace/aceSuniso.jpg", "Aceite suniso, producido bajo estrictas nrmas de fabricación internacionales, esta diseñado para el cuidado y buen funcionamiento de las partes mecánicas del compresor.\n Aceite 3GS, 4GS, 5GS.\n En bidones de 4 litros y en tarros de 20 litros.\n Aceite mineral para utilizarlo con gases tradicionales.\n Fabricados en USA\n Completo stock para entrega inmediata"],
	["ace" , "Sintético Emkarate", "ace/aceEmkarate.jpg", "Aceite sintético Emkarate\n -RL-32 CF y RL 1009\n -En tarros de 1 y 4 litros\n -Aceite diseñado para refrigerantes ecológicos.\n -Fabricados en USA\n Completo stock para entrega inmediata."],
	["ace" , "Para bomba de vacío", "ace/aceEmkarate.jpg", "Aceite en presentación de 1 litro"],
	["ter" , "Microprocesador OSAKA", "ter/terOsaka.png", "Regulación de Tº deseada\n Diferencial de funcionamiento regulable\n Salida de 1 a 3 reles compresor, resistencias y ventiladores.\n 12 volt a 220 volt."],
	["ter" , "Controladores EKC", "ter/terEkcs.png", "El programa de controladores EKC 101 / EKC201 cubre el rango completo de aplicaciones de refrigeración, desde el termostato más sencillo hasta el más avanzado que controla temperatura, desescarche, ventiladores, compresores y alarma.\n Un controlador sustituye a varios termostatos, programadores de descarche y relojes.\n Lectura de temperatura y códigos de parámetros, alarmas y errores. Indicaciones del estado y alarmas con LED's.\n Opcionalmente se puede conectar una tarjeta de comunicación o reloj.\n La versión estandar se puede utilizar para registros sanitarios de Temperatura."],
	["ter" , "Controles Mecánicos", "ter/terEkcs.png", "Contamos con la más completa línea de controles mecánicos (termostatos, Presostatos, timer, termómetros, diferenciales de aceite, etc.) para la Refrigeración comercial e industrial con variadas marcas de nivel mundial tales  como Danfoss, Johnsons Controls, Arthermo, Flash, etc."],
	["cyb" , "Cierres y Bisagras", "cyb/cyb1.png", "La gama de cerrojos, bisagras y cierres de correderas, dispuestos en nuestra instalación, cubren la gran demanda que exige el mercado actual manteniendo un variado stock para instalaciones comerciales, semi industriales e Industriales.\n Importamos nuevos productos para ofrecer una mejor calidad de estos a nuestros clientes."],
	["ais" , "Aislacion", "ais/ais1.png", "Disponemos de una gran gama de aislaciones:\n Aislamiento para tuberías desde 1/4\" a 3 1/8\" con un espesor de 3/8\", 1/2\", 3/4\"\n Aislación de planchas (3/8\", 1/2\", 3/4\" y 1\")\n Pegamento Tarro de 700 Gr.\n Cortinas de aislamiento para mantención y congelado, cumplen el proposito de aislar las entradas de cámaras frigorificas y con ello no perder el frio de estas."],
	["val" , "De Expansión Danfoss", "val/valExp.png", "None"],
	["val" , "De Bola Danfoss", "val/valBola.png", "tipoGBC 1/2\" hasta 3 1/8\""],
	["val" , "De Paso", "val/valPaso.png", "(Diafragma)1/4\" hasta 5/8\""],
	["ref" , "Refrigerantes", "ref/ref1.png", ""],


	["her" , "Martillo", "tools/tools/ref1.png", ""],
	["her" , "Alicate", "tools/tools/ref1.png", ""],

	["acc" , "Valvula", "tools/accesories/valvula.png", ""],
	["acc" , "Tubos", "tools/accesories/tubos.png", ""]
	
]

type_list.each do |model, sub_model , image , description|
  Category.create( model:model, sub_model:sub_model, description:description ,image:image)
end


product_list = [
	["Prod 1" , 100,"", 1 , "Buen Prod"],
	["Prod 2" , 100 ,"" ,1 , "Buen Prod"],
	["Prod 3", 100 ,"", 1 , "Buen Prod"],
	["Prod 4", 100 ,"" ,2 , "Buen Prod"],
	["Prod 5", 100 , "" , 2 , "Buen Prod"]
]

product_list.each do |name, price , image , category_id , description|
  Product.create( name:name, price:price ,image:image , category_id:category_id , description:description)
end

