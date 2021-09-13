---------------------------------------------------------------
-- @file	stg310_config.lua
-- @author	Miura Yoshitaka <Miura_Yoshitaka@sega.co.jp>
-- @brief	stg310 �̐ݒ�t�@�C��
-- @data	2010/2/16
---------------------------------------------------------------

METER = 10.0


---------------------------------------------------------------


-- �������ɂ��鍂���B�����艺�Ƀv���C���[���ړ�����Ǝ��ɂ܂��B
dead_line = -260.0 * METER

-- �J�����ݒ�.
camera = {

   near = 0.1 * METER,
   far = 2500.0 * METER,
   fov = 60,
}

-- �T�[�r�X�̃��X�g.
services = {

	-- �O���A
   {
	  name = "CGlareManager",
	  params = {
		 ev = 1.10,
		 brightpass = 2.00,
	  },
   },

	-- ���C�g
	{
		name = "CLightManager",
		params = {
			-- ����
			ambient_color = { 90, 80, 100 },

			-- �n�`���C�g
			terrain_light = 4,
			
			-- �I�u�W�F�N�g�f�t�H���g���C�g
			object_light = 1,
			
			-- ���s���F�A�������C�g�F
			lfield_params = {
				{
					index = 1,
					diffuse_color = { 170, 150, 190 },
					gloss = 16.0,
					sky_color = { 120, 120, 150, },
					ground_color = { 70, 60, 80, },
				},
				{
					index = 2,
					diffuse_color = { 160, 160, 180 },
					gloss = 16.0,
					sky_color = { 90, 90, 120, },
					ground_color = { 75, 70, 90, },
				},
				{
					index = 3,
					diffuse_color = { 180, 180, 180 },
					gloss = 16.0,
					sky_color = { 120, 110, 130, },
					ground_color = { 60, 60, 100, },
				},
				{
					index = 4,
					diffuse_color = { 190, 190, 220 },
					gloss = 16.0,
					sky_color = { 150, 150, 180, },
					ground_color = { 90, 90, 100, },
				},
				{
					index = 5,
					diffuse_color = { 80, 80, 90 },
					gloss = 16.0,
					sky_color = { 90, 90, 100, },
					ground_color = { 50, 40, 50, },
				},
				{
					index = 6,
					diffuse_color = { 190, 170, 210 },
					gloss = 16.0,
					sky_color = { 80, 80, 100, },
					ground_color = { 70, 60, 80, },
				},
				{
					index = 7,
					diffuse_color = { 255, 255, 255 },
					gloss = 32.0,
					sky_color = { 255, 255, 255, },
					ground_color = { 255, 255, 255, },
				},
				{
					index = 8,
					diffuse_color = { 190, 170, 210 },
					gloss = 16.0,
					sky_color = { 100, 100, 130, },
					ground_color = { 40, 30, 50, },
				},

			},
		},
	},

   {
	-- �n�`
	  name = "CTerrainManager",
	  params = {
		 yfollow = true,
		 yoffset = 0.0 * METER,
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
		 -- ���[�v�z�[���ׂ̈ɁA�V���̕`�揇��ύX���� ukai
		 sky_opa_draw_first = true,
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
		 start_z = 40.0 * METER,
		 end_z = 2000.0 * METER,
		 color = { 0, 0, 20 },
	  },
   },

   -- �����Y�t���A
   {
	  name = "CLensFlareManager",
	  params = {
		 source_light = { -6000.0, -4500.0, 6500.0 },
	  },
   },

   -- �e�F
   {
	  name = "CShadowManager",
	  params = {
		 color = { 0, 0, 10 },
		 alpha = 90,
	  },
   }, 
}
