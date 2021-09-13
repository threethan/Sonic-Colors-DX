---------------------------------------------------------------
-- ワールドマップ、エリアマップの設定ファイル
---------------------------------------------------------------

-- カメラ
camera = {
	pos = { 0.0, 0.0, 10.865 },
	tgt = { 0.0, 16.105, 0.478 },
	fovy = 45.0,
}

-- ライト
light = {
	ambient_col =  { 130, 180, 185 },
	diffuse_dir = { 0.0, 1.0, 0.0 },
	diffuse_col = { 200, 200, 200 },
	gloss = 32.0,
	sky_col =  { 30, 40, 35, },
	ground_col =  { 5, 45, 35, },
}

-- グレア
glare = {
	ev = 1.08,
	brightpass = 2.00,
}

-- フォグ
fog = {
	type = "linear",
	start_z = 20.0,
	end_z = 100.0,
	col = { 16, 10, 35 },
}
