---------------------------------------------------------------
-- @file	stg790_config.lua
-- @author	
-- @brief	stg790 �̐ݒ�t�@�C��
-- @data	2010/3/2
---------------------------------------------------------------

METER = 10.0


---------------------------------------------------------------


-- �������ɂ��鍂���B�����艺�Ƀv���C���[���ړ�����Ǝ��ɂ܂��B
dead_line = -100.0 * METER

-- �J�����ݒ�.
camera = {

   near = 0.1 * METER,
   far = 50000.0 * METER,
   fov = 60,
}

-- �T�[�r�X�̃��X�g.
services = {

	-- �O���A
   {
	  name = "CGlareManager",
	  params = {
		 ev = 1.05,
		 brightpass = 2.98,
	  },
   },

	-- ���C�g
	{
		name = "CLightManager",
		params = {
			-- ����
			ambient_color = { 170, 170, 170 },
			
			-- ���s���F�A�������C�g�F
			lfield_params = {
				{
					index = 1,
					diffuse_color = { 170, 180, 180 },
					gloss = 16.0,
					sky_color = { 110, 120, 130, },
					ground_color = { 70, 80, 70, },
				},
				{
					index = 2,
					diffuse_color = { 60, 70, 50 },
					gloss = 16.0,
					sky_color = { 40, 60, 50, },
					ground_color = { 105, 115, 100, },
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
		 far = 50000.0 * METER,
		 -- near = 0.35 * METER,
		 -- clip0 = 5000.0 * METER,
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
		 start_z = 0.0 * METER,
		 end_z = 1500.0 * METER,
		 color = { 0, 0, 0 },
	  },
   },

   -- �e�F
   {
	  name = "CShadowManager",
	  params = {
		 color = { 0, 10, 40 },
		 alpha = 140,
	  },
   }, 

}
