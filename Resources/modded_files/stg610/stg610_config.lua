---------------------------------------------------------------
-- @file	stg110_config.lua
-- @author	Kawabata Yoshitaka <Kawabata_Yoshitaka@sega.co.jp>
-- @brief	stg110 �̐ݒ�t�@�C��
-- @data	2009/07/17 �X�e�[�W�ݒ�t�@�C����ꍆ�Ƃ��Ēa��
---------------------------------------------------------------

METER = 10.0


---------------------------------------------------------------


-- �������ɂ��鍂���B�����艺�Ƀv���C���[���ړ�����Ǝ��ɂ܂��B
dead_line = -2100.0 * METER

-- �J�����ݒ�.
camera = {

   near = 0.1 * METER,
   far = 1540.0 * METER,
   fov = 60,
}

   -- ���U���g�ʒu
   result_pos = { 11724, 136, -114 }

-- �T�[�r�X�̃��X�g.
services = {

	-- �O���A
   {
	  name = "CGlareManager",
	  params = {
		 ev = 1.0,
		 brightpass = 2.00,
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
			ambient_color = { 110, 160, 140 },

			-- �n�`���C�g�p���C�g�C���f�b�N�X
			terrain_light = 1,

			-- �I�u�W�F�N�g�f�t�H���g���C�g�C���f�b�N�X
			object_light = 1,
			
			-- ���s���F�A�������C�g�F
			lfield_params = {
				-- ���C�g�ԍ�1 �ʏ�O (��)
				{
					index = 1,
					diffuse_color = { 250, 250, 250 },
					specular_color = { 250, 255, 255 },
					sky_color = { 50, 50, 50, },
					ground_color = { 16, 70, 100, },
					gloss = 32.0,
				},
				-- ���C�g�ԍ�2 �w�i�ėp(���C�g�R���W�����Ƃ��Ă͒ʏ�g��Ȃ�)
				{
					index = 2,
					diffuse_color = { 110, 110, 110 },
					specular_color = { 220, 230, 240 },
					sky_color = { 160, 160, 160, },
					ground_color = { 10, 45, 80, },
					gloss = 32.0,
				},
				-- ���C�g�ԍ�3 �ʏ�O �i��)
				{
					index = 3,
					diffuse_color = { 80, 121, 110 },
					specular_color = { 180, 190, 200 },
					sky_color = { 80, 80, 80, },
					ground_color = { 6, 15, 50, },
					gloss = 32.0,
				},
				-- ���C�g�ԍ�4 �R�[�X�^�[���[���� (�Ζ�)
				{
					index = 4,
					diffuse_color = { 110, 110, 110 },
					specular_color = { 220, 230, 240 },
					sky_color = { 160, 160, 160, },
					ground_color = { 80, 86, 3, },
					gloss = 32.0,
				},
				-- ���C�g�ԍ�5 �ėp���� (���×�)
				{
					index = 5,
					diffuse_color = { 120, 120, 100 },
					specular_color = { 220, 220, 200 },
					sky_color = { 50, 50, 45, },
					ground_color = { 40, 85, 30, },
					gloss = 32.0,
				},
				-- ���C�g�ԍ�6 �����y�̉ӏ� (���Ò�)
				{
					index = 6,
					diffuse_color = { 110, 100, 80 },
					specular_color = { 200, 210, 80 },
					sky_color = { 85, 85, 85, },
					ground_color = { 88, 65, 0, },
					gloss = 32.0,
				},
				-- ���C�g�ԍ�7 �Ήt�̂����ӏ� (���Ή������)
				{
					index = 7,
					diffuse_color = { 100, 180, 160 },
					specular_color = { 80, 255, 20 },
					sky_color = { 90, 90, 90, },
					ground_color = { 80, 145, 20, },
					gloss = 32.0,
				},
				-- ���C�g�ԍ�8 �r�u�ėp�i���Ð΋t�s���݁j 
				{
					index = 8,
					diffuse_color = { 130, 220, 220 },
					specular_color = { 120, 255, 250 },
					sky_color = { 70, 90, 100, },
					ground_color = { 105, 120, 105, },
					gloss = 32.0,
				},
				-- ���C�g�ԍ�9 �r�u�Ԃ��� 
				{
					index = 9,
					diffuse_color = { 130, 220, 220 },
					specular_color = { 120, 255, 250 },
					sky_color = { 70, 90, 100, },
					ground_color = { 150, 80, 85, },
					gloss = 32.0,
				},
				-- ���C�g�ԍ�10 �O�A�X�e���C�h�x���g (�� �����F����)
				{
					index = 10,
					diffuse_color = { 110, 110, 110 },
					specular_color = { 220, 230, 240 },
					sky_color = { 160, 160, 160, },
					ground_color = { 105, 100, 10, },
					gloss = 32.0,
				},
				-- ���C�g�ԍ�11 �O�A�X�e���C�h�x���g (�� �����F����)
				{
					index = 11,
					diffuse_color = { 30, 30, 50 },
					specular_color = { 180, 190, 200 },
					sky_color = { 100, 100, 120, },
					ground_color = { 105, 100, 10, },
					gloss = 32.0,
				},
				-- ���C�g�ԍ�12 ���@�ėp (���� ����)
				{
					index = 12,
					diffuse_color = { 95, 100, 65 },
					specular_color = { 200, 220, 190 },
					sky_color = { 110, 120, 105, },
					ground_color = { 60, 70, 40, },
					gloss = 32.0,
				},
				-- ���C�g�ԍ�13 ���@�G���A (�� ��)
				{
					index = 13,
					diffuse_color = { 130, 220, 220 },
					specular_color = { 120, 255, 250 },
					sky_color = { 70, 90, 100, },
					ground_color = { 105, 120, 105, },
					gloss = 32.0,
				},
				-- ���C�g�ԍ�14 ���@�G���A (�� ��)
				{
					index = 14,
					diffuse_color = { 65, 80, 80 },
					specular_color = { 110, 140, 150 },
					sky_color = { 80, 100, 105, },
					ground_color = { 35, 60, 65, },
					gloss = 32.0,
				},
				-- ���C�g�ԍ�15 ���@�ԃG���A (���� ��)
				{
					index = 15,
					diffuse_color = { 140, 180, 170 },
					specular_color = { 140, 230, 220 },
					sky_color = { 70, 90, 100, },
					ground_color = { 150, 80, 85, },
					gloss = 32.0,
				},
				-- ���C�g�ԍ�16 ���@���邢�G���A (���@����)
				{
					index = 16,
					diffuse_color = { 150, 150, 110 },
					specular_color = { 220, 230, 240 },
					sky_color = { 155, 160, 155, },
					ground_color = { 35, 60, 30, },
					gloss = 32.0,
				},
				-- ���C�g�ԍ�17 ���@�Â��G���A (�ł��� ��)
				{
					index = 17,
					diffuse_color = { 50, 65, 65 },
					specular_color = { 100, 130, 140 },
					sky_color = { 50, 70, 75, },
					ground_color = { 35, 60, 65, },
					gloss = 32.0,
				},
				-- ���C�g�ԍ�18 ���@�X�^�[�g�n�_ (�� ����)
				{
					index = 18,
					diffuse_color = { 150, 150, 110 },
					specular_color = { 220, 230, 240 },
					sky_color = { 155, 160, 155, },
					ground_color = { 35, 60, 30, },
					gloss = 32.0,
				},
				-- ���C�g�ԍ�19 ������ (�Ί��5�̖��邢��)
				{
					index = 19,
					diffuse_color = { 240, 240, 240 },
					specular_color = { 250, 250, 250 },
					sky_color = { 90, 100, 95, },
					ground_color = { 40, 85, 30, },
					gloss = 32.0,
				},
				-- ���C�g�ԍ�20 ����̏� (��)
				{
					index = 20,
					diffuse_color = { 250, 250, 250 },
					specular_color = { 250, 255, 255 },
					sky_color = { 60, 60, 60, },
					ground_color = { 100, 90, 95, },
					gloss = 32.0,
				},		
				-- ���C�g�ԍ�21 �ėp���� (�Ί��5�̈Â���)
				{
					index = 21,
					diffuse_color = { 80, 80, 60 },
					specular_color = { 180, 180, 160 },
					sky_color = { 40, 40, 35, },
					ground_color = { 20, 55, 10, },
					gloss = 32.0,
				},	
				-- ���C�g�ԍ�22 ���U���g��p
				{
					index = 22,
					diffuse_color = { 180, 180, 140 },
					specular_color = { 250, 255, 255 },
					sky_color = { 53, 60, 60, },
					ground_color = { 68, 79, 82, },
					gloss = 32.0,
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
		 far = 1200.0 * METER,
		 near = 0.35 * METER,
		 clip0 = 1000.0 * METER,
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
		 start_z = 100.0 * METER,
		 end_z = 1300.0 * METER,
		 color = { 16, 10, 35 },
	  },
   },

   -- �����Y�t���A
   {
	  name = "CLensFlareManager",
	  params = {
		 source_light = { -3670.0, -3100.0, -13680.0 },
	  },
   },

   -- �e�F
   {
	  name = "CShadowManager",
	  params = {
		 color = { 0, 5, 10 },
		 alpha = 90,
	  },
   }, 

}
