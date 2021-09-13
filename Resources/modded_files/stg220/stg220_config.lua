---------------------------------------------------------------
-- @file	stg210_config.lua
-- @author	Kawabata Yoshitaka <Kawabata_Yoshitaka@sega.co.jp>
-- @brief	stg210 �̐ݒ�t�@�C��
-- @data	2009/07/17 �X�e�[�W�ݒ�t�@�C����ꍆ�Ƃ��Ēa��
---------------------------------------------------------------

METER = 10.0


---------------------------------------------------------------


-- �������ɂ��鍂���B�����艺�Ƀv���C���[���ړ�����Ǝ��ɂ܂��B
dead_line = -140.0 * METER

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
		 ev = 1.00,
		 brightpass = 2.00,
	  },
   },
	-- ���C�g
	{
		name = "CLightManager",
		params = {
			-- ����
			ambient_color = { 150, 120, 120 },

			-- �n�`���C�g�p���C�g�C���f�b�N�X
			terrain_light = 8,

			-- �I�u�W�F�N�g�f�t�H���g���C�g�C���f�b�N�X
			object_light = 4,
			
			-- ���s���F�A�������C�g�F
			lfield_params = {
				-- ���C�g�ԍ�1�@�e�v ��
				{
					index = 1,
					diffuse_color = { 240, 230, 200 },
					specular_color = { 240, 230, 200 },
					gloss = 32.0,
					sky_color = { 148, 138, 120, },
					ground_color = { 122, 79, 130, },
				},
				-- ���C�g�ԍ�2 �e�v �Ái���j
				{
					index = 2,
					diffuse_color = { 130, 136, 140 },
					specular_color = { 240, 230, 200 },
					gloss = 32.0,
					sky_color = { 67, 42, 50, },
					ground_color = { 98, 65, 110, },
				},
				-- ���C�g�ԍ�3�@�e�v �Ái�Ԏ��j
				{
					index = 3,
					diffuse_color = { 130, 136, 140 },
					specular_color = { 240, 230, 200 },
					gloss = 32.0,
					sky_color = { 104, 74, 59, },
					ground_color = { 98, 45, 60, },
				},
				-- ���C�g�ԍ�4�@�r�u ���@�i�f�t�H���g���C�g�j
				{
					index = 4,
					diffuse_color = { 250, 235, 165 },
					specular_color = { 240, 230, 200 },
					gloss = 32.0,
					sky_color = { 110, 95, 80, },
					ground_color = { 136, 86, 110, },
				},
				-- ���C�g�ԍ�5�@�r�u �� (�ėp�E��)
				{
					index = 5,
					diffuse_color = { 165, 133, 147 },
					specular_color = { 255, 250, 200 },
					gloss = 32.0,
					sky_color = { 87, 68, 50, },
					ground_color = { 110, 60, 88, },
				},
				-- ���C�g�ԍ�6�@�r�u �� (�I�����W���)
				{
					index = 6,
					diffuse_color = { 167, 122, 80 },
					specular_color = { 230, 224, 206 },
					gloss = 32.0,
					sky_color = { 98, 68, 49, },
					ground_color = { 136, 86, 110, },
				},
				-- ���C�g�ԍ�7�@�����ňÂ��ӏ�
				{
					index = 7,
					diffuse_color = { 89, 90, 100 },
					specular_color = { 200, 240, 250 },
					gloss = 32.0,
					sky_color = { 65, 55, 45, },
					ground_color = { 45, 45, 56, },
				},
				-- ���C�g�ԍ�8�@�n�`�p�f�t�H���g
				{
					index = 8,
					diffuse_color = { 220, 214, 211 },
					specular_color = { 255, 255, 210 },
					gloss = 32.0,
					sky_color = { 148, 138, 120, },
					ground_color = { 122, 79, 130, },
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
		 -- anim_range = 600 * METER,
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
		 end_z = 600.0 * METER,
		 color = { 200, 150, 150 },
	  },
   },

   -- �e�F
   {
	  name = "CShadowManager",
	  params = {
		 color = { 15, 0, 18 },
		 alpha = 110,
	  },
   }, 

}
