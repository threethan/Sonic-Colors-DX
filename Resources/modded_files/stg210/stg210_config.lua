---------------------------------------------------------------
-- @file	stg210_config.lua
-- @author	Kawabata Yoshitaka <Kawabata_Yoshitaka@sega.co.jp>
-- @brief	stg210 �̐ݒ�t�@�C��
-- @data	2009/07/17 �X�e�[�W�ݒ�t�@�C����ꍆ�Ƃ��Ēa��
---------------------------------------------------------------

METER = 10.0


---------------------------------------------------------------


-- �������ɂ��鍂���B�����艺�Ƀv���C���[���ړ�����Ǝ��ɂ܂��B
dead_line = -180.0 * METER

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
			terrain_light = 9,

			-- �I�u�W�F�N�g�f�t�H���g���C�g�C���f�b�N�X
			object_light = 1,
			
			-- ���s���F�A�������C�g�F
			lfield_params = {
				-- ���C�g�ԍ�1�@�O���邢�ӏ�
				{
					index = 1,
					diffuse_color = { 240, 230, 200 },
					specular_color = { 240, 230, 200 },
					gloss = 32.0,
					sky_color = { 148, 138, 120, },
					ground_color = { 115, 95, 117, },
				},
				-- ���C�g�ԍ�2 �O�p�e
				{
					index = 2,
					diffuse_color = { 127, 122, 135 },
					specular_color = { 255, 255, 255 },
					gloss = 32.0,
					sky_color = { 72, 53, 74, },
					ground_color = { 110, 88, 113, },
				},
				-- ���C�g�ԍ�3�@�G���A�a�Â��ӏ�
				{
					index = 3,
					diffuse_color = { 72, 102, 182 },
					specular_color = { 200, 200, 200 },
					gloss = 32.0,
					sky_color = { 83, 103, 113, },
					ground_color = { 90, 54, 100, },
				},
				-- ���C�g�ԍ�4�@�G���A�a���ʂ̉e
				{
					index = 4,
					diffuse_color = { 160, 135, 160 },
					specular_color = { 255, 250, 200 },
					gloss = 32.0,
					sky_color = { 70, 57, 55, },
					ground_color = { 110, 70, 118, },
				},
				-- ���C�g�ԍ�5�@�G���A�b�S�ʁi�Áj
				{
					index = 5,
					diffuse_color = { 152, 110, 92 },
					specular_color = { 255, 240, 200 },
					gloss = 32.0,
					sky_color = { 70, 58, 60, },
					ground_color = { 70, 32, 68, },
				},
				-- ���C�g�ԍ�6�@�G���A�b�i���j
				{
					index = 6,
					diffuse_color = { 250, 235, 165 },
					specular_color = { 255, 240, 200 },
					gloss = 32.0,
					sky_color = { 110, 95, 60, },
					ground_color = { 136, 86, 110, },
				},
				-- ���C�g�ԍ�7�@�����Â��ӏ��i�Ǒ��蓙)
				{
					index = 7,
					diffuse_color = { 100, 140, 140 },
					specular_color = { 200, 200, 200 },
					gloss = 32.0,
					sky_color = { 20, 20, 20, },
					ground_color = { 53, 82, 100, },
				},
				-- ���C�g�ԍ�8�@�n���o�[�K�[�^���[�Â��Ƃ���p
				{
					index = 8,
					diffuse_color = { 127, 130, 135 },
					specular_color = { 255, 240, 200 },
					gloss = 32.0,
					sky_color = { 90, 73, 82, },
					ground_color = { 131, 80, 70, },
				},
				-- ���C�g�ԍ�9�@�n�`�p�f�t�H���g
				{
					index = 9,
					diffuse_color = { 220, 214, 211 },
					specular_color = { 255, 255, 210 },
					gloss = 32.0,
					sky_color = { 148, 138, 120, },
					ground_color = { 122, 79, 130, },
				},
				-- ���C�g�ԍ�10�@�L���[�X�C�[�c�p
				{
					index = 10,
					diffuse_color = { 10, 0, 0 },
					specular_color = { 200, 200, 200 },
					gloss = 32.0,
					sky_color = { 40, 30, 40, },
					ground_color = { 40, 15, 40, },
				},

				-- ���C�g�ԍ�11�@�G���A�b�i�ÐԂ��݁j
				{
					index = 11,
					diffuse_color = { 140, 111, 107 },
					specular_color = { 255, 240, 200 },
					gloss = 32.0,
					sky_color = { 100, 70, 70, },
					ground_color = { 122, 66, 30, },
				},

				-- ���C�g�ԍ�12�@�n���o�[�K�[�g���l���p�i�ԈÁj
				{
					index = 12,
					diffuse_color = { 120, 50, 20 },
					specular_color = { 150, 150, 150 },
					gloss = 32.0,
					sky_color = { 110, 80, 80, },
					ground_color = { 90, 45, 20, },
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
