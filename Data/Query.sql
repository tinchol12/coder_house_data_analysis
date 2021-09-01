select registros.id_registros, registros.fecha, registros.posicion, registros.posicionDescripcion, 
	   registros.salarioEstimado, 
	   registros.rating,
	   companias.descripcion 'Empresa',
	   CI.descripcion 'Ciudad',
	   CE.descripcion 'Casa Central', 
	   industrias.descripcion 'Industrias',
	   sectores.descripcion 'Sector', 
	   rubros.descripcion 'Rubro',
	   tamano.valorMenor 'Tam. Min',
	   tamano.valorMayor 'Tam. May'
from  registros, 
	  companias, 
	  sectores,
	  ciudades CI,
	  ciudades CE,
	  industrias,
	  rubros,
	  tamano
where registros.id_empresa = companias.id_company
and   registros.id_sector = sectores.id_sector
and	  registros.id_ciudad = CI.id_ciudad
and   registros.id_central = CE.id_ciudad
and   registros.id_rubro = rubros.id_rubro
and   registros.id_industria = industrias.id_industria
and	  registros.tamano = tamano.id_tamano