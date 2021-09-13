---------------------------------------------------------------
-- @file	stg390_config.lua
-- @author	Miura Yoshitaka <Miura_Yoshitaka@sega.co.jp>
-- @brief	stg390 �̐ݒ�t�@�C��
-- @data	2010/2/24
---------------------------------------------------------------

METER = 10.0


---------------------------------------------------------------


-- �������ɂ��鍂���B�����艺�Ƀv���C���[���ړ�����Ǝ��ɂ܂��B
dead_line = -50.0 * METER

-- �J�����ݒ�.
camera = {

   near = 0.1 * METER,
   far = 1700.0 * METER,
   fov = 60,
}

-- �T�[�r�X�̃��X�g.
services = {

	-- �O���A
   {
	  name = "CGlareManager",
	  params = {
		 ev = 1.20,
		 brightpass = 2.90,
	  },
   },

	-- ���C�g
	{
		name = "CLightManager",
		params = {
			-- ����
			ambient_color = { 90, 80, 100 },
			
			-- ���s���F�A�������C�g�F
			lfield_params = {
				{
					index = 1,
					diffuse_color = { 170, 150, 190 },
					gloss = 16.0,
					sky_color = { 120, 120, 150, },
					ground_color = { 70, 60, 80, },
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
		 end_z = 1000.0 * METER,
		 color = { 10, 70, 140 },
	  },
   },

   -- �����Y�t���A
   {
	  name = "CLensFlareManager",
	  params = {
		 source_light = { -2000.0, 1000.0, -10000.0 },
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
