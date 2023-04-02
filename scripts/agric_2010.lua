import("gis")

proj = Project {
	file = "projeto.qgs",
}

-- não le netcdf
l1 = Layer{
	project = proj,
	name = "brasil_grade_083_EPSG5880",
}

l2 = Layer{
	project = proj,
	name = "brasilAgric2010",
}


l1:fill{
    operation = "average",
    layer = "brasilAgric2010",
    attribute = "mean_agric",
    dataType="raster",
}

