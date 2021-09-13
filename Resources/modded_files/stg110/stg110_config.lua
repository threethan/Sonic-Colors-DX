---------------------------------------------------------------
-- @file	stg110_config.lua
-- @author	Kawabata Yoshitaka <Kawabata_Yoshitaka@sega.co.jp>
-- @brief	stg110 �̐ݒ�t�@�C��
-- @data	2009/07/17 �X�e�[�W�ݒ�t�@�C����ꍆ�Ƃ��Ēa��
---------------------------------------------------------------

METER = 10.0


---------------------------------------------------------------


-- �������ɂ��鍂���B�����艺�Ƀv���C���[���ړ�����Ǝ��ɂ܂��B
dead_line = -200.0 * METER

-- �J�����ݒ�.
camera = {

   near = 0.1 * METER,
   far = 1800.0 * METER,
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
			-- �_�����p�����[�^
			llight_frustum_far = 5000.0,
			llight_anim_speed_scale = 0.5,

			-- ����
			ambient_color = { 150, 170, 170 },
			
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
					diffuse_color = { 60, 60, 70 },
					gloss = 16.0,
					sky_color = { 70, 90, 90, },
					ground_color = { 55, 65, 70, },
				},
				{
					index = 3,
					diffuse_color = { 100, 150, 200 },
					gloss = 16.0,
					sky_color = { 40, 100, 120, },
					ground_color = { 50, 200, 200, },
				},
				{
					index = 4,
					diffuse_color = { 170, 160, 150 },
					gloss = 16.0,
					sky_color = { 130, 130, 110, },
					ground_color = { 110, 80, 50, },
				},
				{
					index = 5,
					diffuse_color = { 120, 110, 70 },
					gloss = 16.0,
					sky_color = { 100, 110, 70, },
					ground_color = { 100, 60, 30, },
				},
				{
					index = 6,
					diffuse_color = { 140, 150, 160 },
					gloss = 16.0,
					sky_color = { 90, 100, 100, },
					ground_color = { 140, 80, 30, },
				},
				{
					index = 7,
					diffuse_color = { 90, 100, 100 },
					gloss = 16.0,
					sky_color = { 90, 70, 40, },
					ground_color = { 60, 50, 30, },
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
		 start_z = 20.0 * METER,
		 end_z = 1100.0 * METER,
		 color = { 10, 70, 140 },
	  },
   },

   -- �T�[�L�b�g
   {
	  name = "CCircuitManager",
   },

   -- �I�u�W�F�N�gFlowEx
   {
          name = "CObjFlowExManager",
   },

   -- �e�F
   {
	  name = "CShadowManager",
	  params = {
		 color = { 0, 10, 5 },
		 alpha = 115,
	  },
   }, 

}
