---------------------------------------------------------------
-- @file	stgA10_config.lua
-- @author	Miura Yoshitaka <Miura_Yoshitaka@sega.co.jp>
-- @brief	stgA10 �̐ݒ�t�@�C�� 2010/04/03
---------------------------------------------------------------

METER = 10.0

---------------------------------------------------------------

 -- �������ɂ��鍂���B�����艺�Ƀv���C���[���ړ�����Ǝ��ɂ܂��B
dead_line = -500.0 * METER

 -- �J�����ݒ�.
camera = {

   near = 0.1 * METER,
   far = 2700.0 * METER,
   fov = 60,
}

 -- �T�[�r�X�̃��X�g.
services = {

 -- �O���A
   {
	  name = "CGlareManager",
	  params = {
		 ev = 0.87,
		 brightpass = 2.00,
	  },
   },

 -- �n�`
   {
	  name = "CTerrainManager",
	  params = {
		 yfollow = true,
		 yoffset = 0.0 * METER,
	  },
   },

 -- ���C�g
	{
		name = "CLightManager",
		params = {
			-- ����
			ambient_color = { 110, 115, 90 },
			
			-- �n�`���C�g
			terrain_light = 1,
			
			-- �I�u�W�F�N�g�f�t�H���g���C�g
			object_light = 1,
			
			-- ���s���F�A�������C�g�F
			lfield_params = {
				{
					index = 1,
					diffuse_color = { 190, 210, 160 },
					gloss = 16.0,
					sky_color = { 190, 210, 160, },
					ground_color = { 50, 60, 50, },
				},
				{
					index = 2,
					diffuse_color = { 125, 115, 110 },
					gloss = 16.0,
					sky_color = { 255, 255, 255, },
					ground_color = { 255, 255, 255, },
				},

			},

			-- �_�����p�����[�^
			llight_frustum_far = 5000.0,
			llight_anim_speed_scale = 0.5,
		},
	},

 -- �t�H�O
   {
	  name = "CFogManager",
	  params = {
		 type = "linear",
		 start_z = 18.0 * METER,
		 end_z = 2700.0 * METER,
		 color = { 165, 220, 60 },
	  },
   },

 -- �p�X
   {
	  name = "CPathManager",
	  params = {
		 debug_collision = false,
	  },
   },

}
