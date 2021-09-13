---------------------------------------------------------------
-- @file	stg110_config.lua
-- @author	Kawabata Yoshitaka <Kawabata_Yoshitaka@sega.co.jp>
-- @brief	stg110 �̐ݒ�t�@�C��
-- @data	2009/07/17 �X�e�[�W�ݒ�t�@�C����ꍆ�Ƃ��Ēa��
---------------------------------------------------------------

METER = 10.0


---------------------------------------------------------------


-- �������ɂ��鍂���B�����艺�Ƀv���C���[���ړ�����Ǝ��ɂ܂��B
dead_line = -130.0 * METER

-- �J�����ݒ�.
camera = {

   near = 0.1 * METER,
   far = 1540.0 * METER,
   fov = 60,
}

   -- ���U���g�ʒu
   result_pos = { 596, 460, 825 }

-- �T�[�r�X�̃��X�g.
services = {

	-- �O���A
   {
	  name = "CGlareManager",
	  params = {
		 ev = 1.08,
		 brightpass = 2.00,
	  },
   },
	-- ���C�g
	{
		name = "CLightManager",
		params = {
			-- �_�����p�����[�^
			llight_frustum_far = 5000.0,
			llight_anim_speed_scale = 0.5,

			-- ����
			ambient_color = { 110, 160, 140 },

			-- �n�`���C�g�p���C�g�C���f�b�N�X
			terrain_light = 1,

			-- �I�u�W�F�N�g�f�t�H���g���C�g�C���f�b�N�X
			object_light = 1,
			
			-- ���s���F�A�������C�g�F
			lfield_params = {
				-- ���C�g�ԍ�1 �ʏ�O (��)
				{
					index = 1,
					diffuse_color = { 250, 250, 250 },
					specular_color = { 250, 255, 255 },
					sky_color = { 50, 50, 50, },
					ground_color = { 16, 70, 100, },
					gloss = 32.0,
				},
				-- ���C�g�ԍ�2 �w�i�ėp(���C�g�R���W�����Ƃ��Ă͒ʏ�g��Ȃ�)
				{
					index = 2,
					diffuse_color = { 110, 110, 110 },
					specular_color = { 220, 230, 240 },
					sky_color = { 160, 160, 160, },
					ground_color = { 10, 45, 80, },
					gloss = 32.0,
				},
				-- ���C�g�ԍ�3 �R�[�X�^�[���[����e 
				{
					index = 3,
					diffuse_color = { 120, 130, 130 },
					specular_color = { 180, 190, 200 },
					sky_color = { 90, 90, 90, },
					ground_color = { 80, 86, 3, },
					gloss = 32.0,
				},
				-- ���C�g�ԍ�4 �R�[�X�^�[���[���� (�Ζ�)
				{
					index = 4,
					diffuse_color = { 110, 110, 110 },
					specular_color = { 220, 230, 240 },
					sky_color = { 160, 160, 160, },
					ground_color = { 80, 86, 3, },
					gloss = 32.0,
				},
				-- ���C�g�ԍ�5 FV2F���� (���Ð�)
				{
					index = 5,
					diffuse_color = { 120, 120, 100 },
					specular_color = { 220, 220, 200 },
					sky_color = { 80, 80, 80, },
					ground_color = { 45, 70, 60, },
					gloss = 32.0,
				},
				-- ���C�g�ԍ�6 FV2F�Ԃ��� (���Ð�)
				{
					index = 6,
					diffuse_color = { 200, 160, 100 },
					specular_color = { 200, 210, 80 },
					sky_color = { 100, 80, 90, },
					ground_color = { 90, 65, 0, },
					gloss = 32.0,
				},
				-- ���C�g�ԍ�7 FV�Ήt�� (���Ή������)
				{
					index = 7,
					diffuse_color = { 100, 180, 160 },
					specular_color = { 80, 255, 20 },
					sky_color = { 90, 90, 90, },
					ground_color = { 80, 145, 20, },
					gloss = 32.0,
				},
				-- ���C�g�ԍ�8 �r�u�ėp�i���É��΋t�����݁j 
				{
					index = 8,
					diffuse_color = { 230, 230, 180 },
					specular_color = { 250, 250, 240 },
					sky_color = { 80, 80, 80, },
					ground_color = { 85, 99, 75, },
					gloss = 32.0,
				},
				-- ���C�g�ԍ�9 �_�C�u�P�p 
				{
					index = 9,
					diffuse_color = { 165, 124, 120 },
					specular_color = { 200, 200, 150 },
					sky_color = { 68, 37, 50, },
					ground_color = { 150, 135, 100, },
					gloss = 32.0,
				},
				-- ���C�g�ԍ�10 �r�u�O���[�i���Ðt�����݁j 
				{
					index = 10,
					diffuse_color = { 130, 220, 220 },
					specular_color = { 120, 255, 250 },
					sky_color = { 70, 90, 100, },
					ground_color = { 105, 120, 105, },
					gloss = 32.0,
				},
				-- ���C�g�ԍ�11 �r�u�Ήt�̃G���A�i���×΋t�����݁j 
				{
					index = 11,
					diffuse_color = { 90, 190, 60 },
					specular_color = { 80, 255, 20 },
					sky_color = { 70, 90, 100, },
					ground_color = { 90, 160, 90, },
					gloss = 32.0,
				},
				-- ���C�g�ԍ�12 �R�[�X�^�[���[����@�� (�Έ�)
				{
					index = 12,
					diffuse_color = { 30, 30, 50 },
					specular_color = { 180, 190, 200 },
					sky_color = { 100, 100, 120, },
					ground_color = { 80, 86, 3, },
					gloss = 32.0,
				},
				-- ���C�g�ԍ�13 �d�͔��]���u�@�S�[���܂ł̒ʘH�i�×΋t�����݁j 
				{
					index = 13,
					diffuse_color = { 120, 130, 120 },
					specular_color = { 70, 80, 70 },
					sky_color = { 55, 60, 50, },
					ground_color = { 85, 80, 85, },
					gloss = 32.0,
				},
				-- ���C�g�ԍ�14 ���� FV1F�p �Ԃ���(���Ð�)
				{
					index = 14,
					diffuse_color = { 120, 110, 80 },
					specular_color = { 200, 200, 150 },
					sky_color = { 70, 50, 60, },
					ground_color = { 90, 65, 0, },
					gloss = 32.0,
				},
				-- ���C�g�ԍ�15 ���� FV1F�p �ėp����(���Ð�)
				{
					index = 15,
					diffuse_color = { 100, 120, 120 },
					specular_color = { 200, 210, 80 },
					sky_color = { 80, 95, 85, },
					ground_color = { 65, 80, 65, },
					gloss = 32.0,
				},
				-- ���C�g�ԍ�16 ���� FV1F�p ���΂���(���É���)
				{
					index = 16,
					diffuse_color = { 95, 100, 80 },
					specular_color = { 200, 210, 80 },
					sky_color = { 95, 110, 85, },
					ground_color = { 60, 95, 50, },
					gloss = 32.0,
				},
				-- ���C�g�ԍ�17 �d�͔��]���u �������i�Î��t�����݁j 
				{
					index = 17,
					diffuse_color = { 170, 140, 170 },
					specular_color = { 220, 220, 220 },
					sky_color = { 100, 35, 100, },
					ground_color = { 106, 170, 15, },
					gloss = 32.0,
				},
				-- ���C�g�ԍ�18 FV��c�C�X�g���@�ėp���� (���Ð�)
				{
					index = 18,
					diffuse_color = { 100, 120, 120 },
					specular_color = { 200, 210, 80 },
					sky_color = { 80, 95, 85, },
					ground_color = { 65, 80, 65, },
					gloss = 32.0,
				},
				-- ���C�g�ԍ�19 FV��c�C�X�g���@�Â� (���Ð�)
				{
					index = 19,
					diffuse_color = { 75, 75, 55 },
					specular_color = { 150, 140, 20 },
					sky_color = { 55, 50, 40, },
					ground_color = { 25, 35, 25, },
					gloss = 32.0,
				},
			},
		},
	},

   {
	-- �n�`
	  name = "CTerrainManager",
	  params = {
		 yfollow = true,
		 yoffset = -100.0 * METER,
		 far = 1200.0 * METER,
		 near = 0.35 * METER,
		 clip0 = 1000.0 * METER,
		 clip1 = 450.0 * METER,
		 clip2 = 350.0 * METER,
		 clip3 = 250.0 * METER,
		 clip4 = 150.0 * METER,
		 clip5 = 50.0 * METER,
		 
		 -- ���̕ϐ���(��)
		 anim_range = 600 * METER,
	  },
   },

   -- �p�X
   {
	  name = "CPathManager",
	  params = {
		 debug_collision = false,
	  },
   },

   -- �t�H�O
   {
	  name = "CFogManager",
	  params = {
		 type = "linear",
		 start_z = 100.0 * METER,
		 end_z = 1300.0 * METER,
		 color = { 16, 10, 35 },
	  },
   },

   -- �����Y�t���A
   {
	  name = "CLensFlareManager",
	  params = {
		 source_light = { 5140.0, -1820.0, -13100.0 },
	  },
   },

   -- �e�F
   {
	  name = "CShadowManager",
	  params = {
		 color = { 0, 5, 10 },
		 alpha = 90,
	  },
   }, 
}
