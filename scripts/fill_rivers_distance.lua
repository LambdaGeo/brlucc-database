import("gis")

proj = Project {
	file = "projeto.qgs",
}

l1 = Layer{
	project = proj,
	name = "brasil_grade_083_EPSG5880",
}


l1:fill{
    operation = "distance",
    layer = "rios_pnlt",
    attribute = "e_rivers"
}
