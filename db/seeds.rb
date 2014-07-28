# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

type_list = [
	["com" , "Semi Hermeticos","com/compresorSH.jpg", "<b>Compresores semi-herméticos de pistón Dorin , para refrigeración y aire acondicionado.</b></br></br> - Alta eficiencia; modelos para refrigerantes R-22, R-134a, R-404 y R-507 </br> - Fabricados bajo rigurosas normas internacionales de diseño y control en Italia</br> - Desde 1.5 a 75 HP en stock para entrega inmediata</br> - Disponibles en 220 y 380 V</br> - Completa línea de repuestos en stock para su reparación .</br> - Para alta, media y baja temperatura de evaporación."],
	["com" , "Hermeticos" ,"com/compresorH.jpg", "<b>Compresores-herméticos de pistón Maneurop - Bristol - Copeland - Tecumseh , para refrigeración y aire acondicionado.</b></br></br> - Alta eficiencia; modelos para refrigerantes R-22, R-134a, R-404 y R-507 </br>- Fabricados bajo rigurosas normas internacionales de diseño y control .</br> - Desde 1.5 a 13 HP en stock para entrega inmediata</br> - Disponibles en 220 y 380 V</br> - Para alta, media y baja temperatura de evaporación."],
	["com", "Scroll","com/compresorSCroll.jpg", "- Línea de compresores herméticos tipo Scroll, para aplicaciones de alta y media temperatura.</br> - Modelos Scroll y Rotativos Panasonic , ZR (R-22) ; ZP (R-410) ; SM (R-22): SZ (R-407)</br> - Capacidad desde 9.000 BTU hasta 180.000 BTU"],
	["com", "Fraccionarios" ,"com/compresorFrac.png", "<b>Línea de compresores fraccionarios Embraco - Aspera</b></br></br> - Compresores para media y baja temperatura con gas R-134a.R-22; R-507 O R-404</br> - Modelos en 220 V a 50 Hz.</br> - Modelos de 1/6+ a 1.5 HP.</br>- Rendimiento de +5°C a -35°C. </br> </br><b>Línea de compresores fraccionarios Danfoss:</b></br> </br> - Compresores para alta, media y baja temperatura con gas R-134a R-507</br> - Modelos en 220 V a 50 Hz.</br> - Modelos de 1/4+ a 3/4+ HP.</br> - Rendimiento de +15°C a -35°C. "],
	["eva", "Evaporadores" ,"evap/evap1.png", "Nuestros evaporadores de alta eficiencia están fabricados con aletas de aluminio y tubo de cobre de 12mm de alta calidad, los intercambiadores de calor se suministran limpios y probados con una presión de 30 bars.</br></br> De aluminio pintado blanco al polvo electrostático, con alta resistencia contra la corrosión y los impactos.</br></br> Sistema de desescarche por resistencias eléctricas de acero inoxidable enfundadas en tubos de aluminio localizados en el paquete aleteado y en la bandeja de desagüe. "],
	["con", "Condensadores" ,"cond/con1.png" , "Nuestros condensadores de alta eficiencia, están fabricados con aletas de aluminio y tubo de cobre de 9.52mm de alta calidad.  Los intercambiadores de calor se suministras limpios en el interior de las tuberías y con una prueba de presión de 30bars.</br></br> La carcaza de acero galvanizado pintado en negro al polvo electrostático, con alta resistencia contra la corrosión y resistente a los impactos no produce residuos tóxicos. </br></br> Los ventiladores con motor axial y rotor externo, con alto estándar de seguridad y anclados a la carcaza."],
	["fil", "DML" , "fil/filtrodml.png", "Los Filtros secadores DML están diseñados para aplicaciones con una gran adsorción de agua, y pueden ser utilizados con compresores de cualquier marca. Como los Filtros secadores de tipo DML no contienen alúmina activada, los aditivos de aceite no se deterioran "],
	["fil", "DCL" , "fil/filtrodlc.png", "Los filtros secadores de tipo DCL son adecuados para instalaciones que funcionan con altas temperaturas de condensación y exigen una gran capacidad de secado "],
	["ven" , "Ventiladores", "ven/ven1.png", "<b>Ebmpapst</b></br> </br> - Diámetros desde 250 mm hasta 800 mm</br> - Modelos en 220 V y 380 V, 24 50 y 60 Hz. </br> - Flujo de aire Aspirante o Impelente.</br> - Fabricados en Alemania</br> </br><b>Ziehl Abegg</b></br> Desde 450 mm hasta 800 mm de diámetro en stock.</br></br> - Distintos tipos, caudales de aire y presiones estáticas.</br> - Modelos en 220 V y 380 V, 50 y 60 Hz.</br> - Empleo en instalaciones DE MANTENCION Y BAJA TEMPERATURA.</br> - Flujo de aire Aspirante o Impelente (según tipo).</br> - Fabricados en Alemania.</br> </br><b>W.G</b></br> Diámetros desde 250 mm hasta 800 mm.</br></br> - Modelos en 220 V y 380 V, 50 Hz. </br> - Flujo de aire Aspirante o Impelente.</br> - Fabricados en China."],
	["ace" , "Suniso", "ace/aceSuniso.jpg", "Aceite suniso, producido bajo estrictas nrmas de fabricación internacionales, esta diseñado para el cuidado y buen funcionamiento de las partes mecánicas del compresor.</br> Aceite 3GS, 4GS, 5GS.</br> En bidones de 4 litros y en tarros de 20 litros.</br> Aceite mineral para utilizarlo con gases tradicionales.</br> Fabricados en USA</br> Completo stock para entrega inmediata"],
	["ace" , "Sintético Emkarate", "ace/aceEmkarate.jpg", "<b>Aceite sintético Emkarate</b></br></br> -RL-32 CF y RL 1009</br> -En tarros de 1 y 4 litros</br> -Aceite diseñado para refrigerantes ecológicos.</br> -Fabricados en USA</br></br> Completo stock para entrega inmediata."],
	["ace" , "Para bomba de vacío", "ace/aceEmkarate.jpg", "Aceite en presentación de 1 litro"],
	["ter" , "Microprocesador OSAKA", "ter/terOsaka.png", "Regulación de Tº deseada</br> Diferencial de funcionamiento regulable</br> Salida de 1 a 3 reles compresor, resistencias y ventiladores.</br> 12 volt a 220 volt."],
	["ter" , "Controladores EKC", "ter/terEkcs.png", "El programa de controladores EKC 101 / EKC201 cubre el rango completo de aplicaciones de refrigeración, desde el termostato más sencillo hasta el más avanzado que controla temperatura, desescarche, ventiladores, compresores y alarma.</br> Un controlador sustituye a varios termostatos, programadores de descarche y relojes.</br> Lectura de temperatura y códigos de parámetros, alarmas y errores. Indicaciones del estado y alarmas con LED's.</br> Opcionalmente se puede conectar una tarjeta de comunicación o reloj.</br> La versión estandar se puede utilizar para registros sanitarios de Temperatura."],
	["ter" , "Controles Mecánicos", "ter/terEkcs.png", "Contamos con la más completa línea de controles mecánicos (termostatos, Presostatos, timer, termómetros, diferenciales de aceite, etc.) para la Refrigeración comercial e industrial con variadas marcas de nivel mundial tales  como Danfoss, Johnsons Controls, Arthermo, Flash, etc."],
	["cyb" , "Cierres y Bisagras", "cyb/cyb1.png", "La gama de cerrojos, bisagras y cierres de correderas, dispuestos en nuestra instalación, cubren la gran demanda que exige el mercado actual manteniendo un variado stock para instalaciones comerciales, semi industriales e Industriales.</br></br> Importamos nuevos productos para ofrecer una mejor calidad de estos a nuestros clientes."],
	["ais" , "Aislacion", "ais/ais1.png", "Disponemos de una gran gama de aislaciones:</br> Aislamiento para tuberías desde 1/4\" a 3 1/8\" con un espesor de 3/8\", 1/2\", 3/4\"</br> Aislación de planchas (3/8\", 1/2\", 3/4\" y 1\")</br> Pegamento Tarro de 700 Gr.</br> Cortinas de aislamiento para mantención y congelado, cumplen el proposito de aislar las entradas de cámaras frigorificas y con ello no perder el frio de estas."],
	["val" , "De Expansión Danfoss", "val/valExp.png", "None"],
	["val" , "De Bola Danfoss", "val/valBola.png", "tipoGBC 1/2\" hasta 3 1/8\""],
	["val" , "De Paso", "val/valPaso.png", "(Diafragma)1/4\" hasta 5/8\""],
	["ref" , "Refrigerantes", "ref/ref1.png", "<table><tr><th>Refrigerante</th><th>Peso neto Kg</th><th>Aplicación</th></tr><tr><td>R-22</td><td>13,6</td><td>Refrigeración comercial e industrial AC</td></tr><tr><td>R-134a</td><td>13,6</td><td>AC automotriz y refrigeración comercial</td></tr><tr><td>R-134a</td><td>0,227</td><td>Gas en lata de 227 gramos (8 o.z)</td></tr><tr><td>R-141b</td><td>13,6</td><td>Limpieza de sistemas HVAC</td></tr><tr><td>R-404a</td><td>10,9</td><td>Baja temperatura de refrigeración</td></tr><tr><td>R-406a</td><td>11,3</td><td>Sustituto del gas R-12</td></tr><tr><td>R-407c</td><td>11,3</td><td>Refrigeración comercial e industrial AC</td></tr><tr><td>R-408a</td><td>10,9</td><td>Baja temperatura de refrigeración</td></tr><tr><td>R-410a</td><td>11,3</td><td>Refrigeración comercial e industrial AC</td></tr><tr><td>R-507</td><td>11,3</td><td>Baja temperatura de refrigeración</td></tr></table>"],


	["her" , " Cortadores de tubo ", "tools/tools/martillo.png", " De 1/8\" a 2-5/8\""],
	["her" , " Llaves de chicharra ", "tools/tools/martillo.png", " De 1/4\", 3/8\", 3/16\", 9/16\", 3/16\", 5/16\" y 1/2\" "],
	["her" , " Peine de aletas ", "tools/tools/martillo.png", " Para condensadores y evaporadores "],
	["her" , " Prensas de expansión ", "tools/tools/martillo.png", " De 1/4\" a 1-1/8\""],
	["her" , "Resorte dobla tubo", "tools/tools/martillo.png", "1/4\", 5/16\", 3/8\", 1/2\" y 5/8\""],
	["her" , " Saca pepas ", "tools/tools/martillo.png", " En cuerpo de aluminio y tubo de acero "],
	["her" , " Dobladora de tubos ", "tools/tools/martillo.png", "1/4\", 5/16\", 3/8\",1/2\", 5/8\", 7/8\" "],
	["her" , " Escariadores ", "tools/tools/martillo.png", " Para tuberías "],
	["her" , " Expandidores de golpe ", "tools/tools/martillo.png", " De 1/8\" a 7/8\" "],
	["her" , " Arboles de carga ", "tools/tools/martillo.png", " Para gases refrigerantes R22, R-134, R-404, R-507. Con y sin protector. digital y análogo "],
	["her" , " Bomba de Aceite ", "tools/tools/martillo.png", " Para carga de aceite "],
	["her" , " Corta capilar ", "tools/tools/martillo.png", " Herramienta de corte corta capilares "],
	["her" , " Soplete ", "tools/tools/martillo.png", " Antorcha de soldadura con encendido eléctrico y manual "],
	["her" , " Acople Rapido ", "tools/tools/martillo.png", " Herramienta para la carga de refrigerante en automóviles "],
	["her" , " Amperimetros ", "tools/tools/martillo.png", " Digitales y análogos "],
	["her" , " Caiman Sellador ", "tools/tools/martillo.png", ""],
	["her" , " Balanzas ", "tools/tools/martillo.png", " Electrónicas para la carga de refrigerante "],
	["her" , " Bomba de vacio ", "tools/tools/martillo.png", " Desde 3,5CFM a 12CFM "],
	["her" , "", "tools/tools/martillo.png", ""],


	["acc" , " Manómetros ", "tools/accesories/tubos.png", " de alta y baja  presión con  glicerina y sin glicerina "],
	["acc" , " Protectores de goma ", "tools/accesories/tubos.png", " Para la protección del manómetro "],
	["acc" , " Cuerpo o manifold ", "tools/accesories/tubos.png", " Cuerpo de 1 manómetro y 2 manómetros  de bronce, con visor "],
	["acc" , " Mangueras de carga ", "tools/accesories/tubos.png", " De 90 cm, 1.20 mts y 1.50 mts "],
	["acc" , " Acoples rápidos ", "tools/accesories/tubos.png", " Para aire acondicionado de automóviles. Modelos en alta y baja. Medidas 1/4\" y 5/16\"."],
	["acc" , " Adaptador de carga ", "tools/accesories/tubos.png", ": Adaptador para R-410 de 1/4\" a 5/16\" "],
	["acc" , " Repuestos para mangueras", "tools/accesories/tubos.png", ""],
	["acc" , " Map Gas ", "tools/accesories/tubos.png", " Cilindro para soldar de 400 grs "],
	["acc" , " Llave de pinche ", "tools/accesories/tubos.png", ""]

	
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

