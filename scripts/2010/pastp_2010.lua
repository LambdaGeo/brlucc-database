import("gis")

proj = Project {
	file = "projeto.qgs",
}

-- não le netcdf
l1 = Layer{
	project = proj,
	name = "brasil_grade_083_EPSG5880",
}



l1:fill{
    operation = "average",
    layer = "brasil2010pastp1",
    attribute = "mean_pastp",
    dataType="raster",
}

