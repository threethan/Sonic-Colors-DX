---------------------------------------------------------------
-- @file	stg590_config.lua
-- @author	Miura Yoshitaka <Miuraa_Yoshitaka@sega.co.jp>
-- @brief	stg590 �̐ݒ�t�@�C��
-- @data	2010/6/10�X�V
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
		 ev = 1.08,
		 brightpass = 2.98,
	  },
   },
	-- ���C�g
	{
		name = "CLightManager",
		params = {
			-- ����
			ambient_color = { 55, 80, 145 },
			
			-- ���s���F�A�������C�g�F
			lfield_params = {
				{
					index = 1,
					diffuse_color = { 80, 70, 90 },
					gloss = 32.0,
					sky_color = { 120, 140, 170, },
					ground_color = { 40, 90, 120, },
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
		 type = "linear",
		 start_z = 0.0 * METER,
		 end_z = 1000.0 * METER,
		 color = { 10, 40, 70 },
	  },
   },

   -- �e�F
   {
	  name = "CShadowManager",
	  params = {
		 color = { 5, 5, 15 },
		 alpha = 110,
	  },
   }, 

   -- ��
   {
       name = "CDistortionManager",
       params = {
           texture = "qua_i_my1_dist",
           distortion_params = {
               {
                   index = 1,
                   speed = 0.3,
                   scale = 0.03,
                   trans_x = 0.40,
                   trans_y = 0.10,
               },
           },
       },
   },

}
