Algoritmo PresupuestosBoostPloteos
	Definir PrecioViniloDeCorte, PrecioViniloImpreso, PrecioManoObra, TotalPresupuesto, TotalSector Como Real //Carga precio de vinilo segun metro cuadrado y precio de mano de obra se da acorde a cantidad de horas necesarias segun sector.
	Definir TipoVehiculo, SectorVehiculo, TipoVinilo, OpcionSector, CostoVinilo, TotalMaterial Como Numerico//El sector definira el tiempo de mano de obra necesario.
	PrecioViniloImpreso<-8000 //metro lineal
	PrecioViniloDeCorte<-6000 //metro lineal, vinilo de corte es el vinilo clasico liso
	TotalMaterial<-0
	TotalPresupuesto<-0
	Escribir "Bienvenido! Ingrese el tipo de Vehiculo a plotear: 1.Auto - 2.Camioneta - 3.Camion - 4.Camion de Caudales"
	Leer TipoVehiculo
	Escribir "Ingrese el tipo de vinilo a utilizar: 1.Impreso - 2.De corte"
	Leer TipoVinilo
	Segun TipoVinilo Hacer
		1:
			CostoVinilo<-PrecioViniloImpreso
		2:
			CostoVinilo<-PrecioViniloDeCorte
		De Otro Modo:
			Escribir "La Opcion no es viable"
	Fin Segun
	Escribir "Ingrese sector a plotear: 1.Completo - 2.Parcial"
	Leer OpcionSector
	Si OpcionSector=2 Entonces
		Mientras x <>2 Hacer
			Escribir "Ingrese sector a plotear: 1.Lateral - 2.Capo - 3. Techo - 4. Paragolpe"
			Leer OpcionSector
			Segun OpcionSector Hacer
				1:
					TotalMaterial<-TotalMaterial+(10*CostoVinilo)
				2:
					TotalMaterial<-TotalMaterial+(1.5*CostoVinilo)
				3:
					TotalMaterial<-TotalMaterial+(2*CostoVinilo)
				4:
					TotalMaterial<-TotalMaterial+(1.5*CostoVinilo)
				De Otro Modo:
					Escribir "La opcion deseada no es viable"
			Fin Segun
			Escribir "Desea seleccionar otro sector mas? 1.SI/ 2.NO"
			Leer x
		Fin Mientras
	SiNo
		Segun TipoVehiculo Hacer
			1:
				TotalMaterial<-(15*CostoVinilo)
			2:
				TotalMaterial<-(25*CostoVinilo)
			3:
				TotalMaterial<-(24*CostoVinilo)
			4:
				TotalMaterial<-(30*CostoVinilo)
			De Otro Modo:
				Escribir "La eleccion no es valida"
		Fin Segun
	Fin Si
	TotalPresupuesto<-TotalMaterial*2 
	Mostrar "El presupuesto para es de $",TotalPresupuesto
FinAlgoritmo
