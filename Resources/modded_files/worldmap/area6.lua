---------------------------------------------------------------
-- ���[���h�}�b�v�A�G���A�}�b�v�̐ݒ�t�@�C��
---------------------------------------------------------------

-- �J����
camera = {
	pos = { 0.0, 0.0, 10.865 },
	tgt = { 0.0, 16.105, 0.478 },
	fovy = 45.0,
}

-- ���C�g
light = {
	ambient_col =  { 130, 180, 185 },
	diffuse_dir = { 0.0, 1.0, 0.0 },
	diffuse_col = { 200, 200, 200 },
	gloss = 32.0,
	sky_col =  { 30, 40, 35, },
	ground_col =  { 5, 45, 35, },
}

-- �O���A
glare = {
	ev = 1.08,
	brightpass = 2.00,
}

-- �t�H�O
fog = {
	type = "linear",
	start_z = 20.0,
	end_z = 100.0,
	col = { 16, 10, 35 },
}