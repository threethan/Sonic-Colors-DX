---------------------------------------------------------------
-- @file	stg110_config.lua
-- @author	Kawabata Yoshitaka <Kawabata_Yoshitaka@sega.co.jp>
-- @brief	stg110 �̐ݒ�t�@�C��
-- @data	2009/07/17 �X�e�[�W�ݒ�t�@�C����ꍆ�Ƃ��Ēa��
---------------------------------------------------------------

METER = 10.0


---------------------------------------------------------------


-- �������ɂ��鍂���B�����艺�Ƀv���C���[���ړ�����Ǝ��ɂ܂��B
dead_line = -190.0 * METER

-- �J�����ݒ�.
camera = {

   near = 0.1 * METER,
   far = 2000.0 * METER,
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
			-- ����
			ambient_color = { 75, 105, 145 },

			-- �n�`���C�g�p���C�g�C���f�b�N�X
			terrain_light = 1,

			-- �I�u�W�F�N�g�f�t�H���g���C�g�C���f�b�N�X
			object_light = 1,
			
			-- ���s���F�A�������C�g�F
			lfield_params = {
				-- ���C�g�ԍ�1�@���ʏ�i�f�t�H���g�j
				{
					index = 1,
					diffuse_color = { 245, 250, 250 },
					specular_color = { 255, 255, 255 },
					gloss = 32.0,
					sky_color = { 90, 90, 100 },
					ground_color = { 25, 71, 100 },
				},
				-- ���C�g�ԍ�2�@�Òʏ�
				{
					index = 2,
					diffuse_color = { 96, 106, 116 },
					specular_color = { 200, 220, 230 },
					gloss = 32.0,
					sky_color = { 48, 53, 76 },
					ground_color = { 25, 71, 100 },
				},
				-- ���C�g�ԍ�3�@��������
				{
					index = 3,
					diffuse_color = { 200, 210, 215 },
					specular_color = { 200, 220, 230 },
					gloss = 32.0,
					sky_color = { 90, 90, 90 },
					ground_color = { 70, 78, 100 },
				},
				-- ���C�g�ԍ�4�@�Ì�����
				{
					index = 4,
					diffuse_color = { 96, 98, 105 },
					specular_color = { 200, 220, 230 },
					gloss = 32.0,
					sky_color = { 78, 78, 78 },
					ground_color = { 78, 82, 115 },
				},

			},
		},
	},

   {
	-- �n�`
	  name = "CTerrainManager",
	  params = {
		 yfollow = false,
		 yoffset = 0.0 * METER,
		 far = 1500.0 * METER,
		 near = 0.35 * METER,
		 clip0 = 2000.0 * METER,
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
		 start_z = 600.0 * METER,
		 end_z = 1600.0 * METER,
		 color = { 0, 40, 135 },
	  },
   },

   -- �e�F
   {
	  name = "CShadowManager",
	  params = {
		 color = { 0, 0, 30 },
		 alpha = 128,
	  },
   }, 

}
