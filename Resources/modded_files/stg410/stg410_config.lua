---------------------------------------------------------------
-- @file	stg410_config.lua
-- @author	Kawabata Yoshitaka <Kawabata_Yoshitaka@sega.co.jp>
-- @brief	stg410 �̐ݒ�t�@�C��
-- @data	2009/10/02 test
---------------------------------------------------------------

METER = 10.0


---------------------------------------------------------------


-- �������ɂ��鍂���B�����艺�Ƀv���C���[���ړ�����Ǝ��ɂ܂��B
dead_line = -30.0 * METER

-- �J�����ݒ�.
camera = {

   near = 0.1 * METER,
   far = 1500.0 * METER,
   fov = 60,
}

-- �T�[�r�X�̃��X�g.
services = {

	-- �O���A
   {
	  name = "CGlareManager",
	  params = {
		 ev = 1.05,
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
			ambient_color = { 150, 170, 170 },
			
			-- ���s���F�A�������C�g�F
			lfield_params = {
				-- ���C�g�@ �ʏ�O(��)
				{
					index = 1,
					diffuse_color = { 170, 180, 180 },
					gloss = 16.0,
					sky_color = { 110, 120, 130, },
					ground_color = { 70, 80, 70, },
				},
				-- ���C�g�A �ʏ�O(�e��)
				{
					index = 2,
					diffuse_color = { 100, 100, 90 },
					gloss = 16.0,
					sky_color = { 90, 90, 80, },
					ground_color = { 70, 80, 80, },
				},
				-- ���C�g�B �ʏ�O (�Ԍn�S�̉e��)
				{
					index = 3,
					diffuse_color = { 170, 180, 180 },
					gloss = 16.0,
					sky_color = { 110, 120, 130, },
					ground_color = { 100, 60, 50, },
				},
				-- ���C�g�C �g���l�����Ï��p
				{
					index = 4,
					diffuse_color = { 90, 70, 60 },
					gloss = 16.0,
					sky_color = { 60, 50, 50, },
					ground_color = { 40, 30, 30, },
				},
				-- ���C�g�D �g���l�����I�����W���C�g�i���j
				{
					index = 5,
					diffuse_color = { 150, 100, 80 },
					gloss = 16.0,
					sky_color = { 120, 90, 30, },
					ground_color = { 60, 20, 30, },
				},
				-- ���C�g�E �g���l���������p�iAct4�X�^�[�g�n�_�j
				{
					index = 6,
					diffuse_color = { 210, 210, 230 },
					gloss = 32.0,
					sky_color = { 55, 55, 65, },
					ground_color = { 60, 40, 20, },
				},
				-- ���C�g�F �h���t�g�G���A��p�g���C�g�G���A��p (����)
				{
					index = 7,
					diffuse_color = { 220, 160, 160 },
					gloss = 32.0,
					sky_color = { 160, 110, 110, },
					ground_color = { 90, 60, 60, },
				},
				-- ���C�g �\��
				{
					index = 8,
					diffuse_color = { 255, 255, 255 },
					gloss = 32.0,
					sky_color = { 255, 255, 255, },
					ground_color = { 255, 255, 255, },
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
		 -- far = 800.0 * METER,
		 -- near = 0.35 * METER,
		 -- clip0 = 1000.0 * METER,
		 -- clip1 = 450.0 * METER,
		 -- clip2 = 350.0 * METER,
		 -- clip3 = 250.0 * METER,
		 -- clip4 = 150.0 * METER,
		 -- clip5 = 50.0 * METER,
		 
		 -- ���̕ϐ���(��)
		 anim_range = 1000 * METER,
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
		 start_z = 10.0 * METER,
		 end_z = 500.0 * METER,
		 color = { 10, 70, 140 },
	  },
   },

   -- �����Y�t���A
   {
	  name = "CLensFlareManager",
	  params = {
		 source_light = { 9000.0, 6000.0, -4000.0 },
	  },
   },

	-- ��
	{
		name = "CGrassManager",
		params = {
			use_grass = true,
			max_bundle = 550,
			max_modified = 20,
			color_base = { 255, 255, 255 },
			color_scale = { 30, 50, 20 },
			shadow_color = { 50, 80, 100 },
			wavedir_scale = 1,
			wavespeed_scale = 0.5,
			wavedistort_scale =0.4,
			use_lod = true,
			lod1_distance = 1000.0,
			lod2_distance = 2800.0,
			mesh_distance = 5000.0,
			disp_distance = 8000.0,
			fade_range = 4000.0,
		},
	},
}
