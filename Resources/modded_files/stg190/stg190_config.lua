---------------------------------------------------------------
-- @file	stg190_config.lua
-- @author	Kawabata Yoshitaka <Kawabata_Yoshitaka@sega.co.jp>
-- @brief	stg110 �̐ݒ�t�@�C��
-- @data	2009/07/17 �X�e�[�W�ݒ�t�@�C����ꍆ�Ƃ��Ēa��
---------------------------------------------------------------

METER = 10.0


---------------------------------------------------------------


-- �������ɂ��鍂���B�����艺�Ƀv���C���[���ړ�����Ǝ��ɂ܂��B
dead_line = -30.0 * METER

-- �J�����ݒ�.
camera = {

   near = 0.1 * METER,
   far = 1000.0 * METER,
   fov = 60,
}

-- �T�[�r�X�̃��X�g.
services = {

	-- �O���A
   {
	  name = "CGlareManager",
	  params = {
		 ev = 1.10,
		 brightpass = 2.97,
	  },
    },

	-- ���C�g
	{
		name = "CLightManager",
		params = {
			-- ����
			ambient_color = { 100, 100, 100 },
			
			-- ���s���F�A�������C�g�F
			lfield_params = {
				{
					index = 1,
					diffuse_color = { 90, 100, 110 },
					specular_color = { 160, 170, 180 },
					gloss = 16.0,
					sky_color = { 140, 140, 150, },
					ground_color = { 140, 160, 120, },
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
		 type = "exp",
		 start_z = 0.0 * METER,
		 end_z = 10000.0 * METER,
		 color = { 10, 70, 140 },
	  },
   },
}
