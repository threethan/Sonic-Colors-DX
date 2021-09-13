---------------------------------------------------------------
-- @file	stg510_config.lua
-- @author	Kawabata Yoshitaka <Kawabata_Yoshitaka@sega.co.jp>
-- @brief	stg110 �̐ݒ�t�@�C��
-- @data	2009/07/17 �X�e�[�W�ݒ�t�@�C����ꍆ�Ƃ��Ēa��
---------------------------------------------------------------

METER = 10.0


---------------------------------------------------------------


-- �������ɂ��鍂���B�����艺�Ƀv���C���[���ړ�����Ǝ��ɂ܂��B
dead_line = -2600.0 * METER

-- �J�����ݒ�.
camera = {

   near = 0.1 * METER,
   far = 4000.0 * METER,
   fov = 60,
}

-- ���U���g�ʒu.
result_pos = { 0, 0, 0 }

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

			-- �n�`���C�g�p���C�g�C���f�b�N�X
			terrain_light = 1,

			-- �I�u�W�F�N�g�f�t�H���g���C�g�C���f�b�N�X
			object_light = 1,
			
			-- ���s���F�A�������C�g�F
			lfield_params = {
				-- ���C�g�ԍ�1 �ėp�O�@��(���)
				{
					index = 1,
					diffuse_color = { 210, 210, 200 },
					specular_color = { 220, 220, 220 },
					gloss = 32.0,
					sky_color = { 86, 83, 82, },
					ground_color = { 65, 77, 90, },
				},
				-- ���C�g�ԍ�2 �O�@����(���)
				{
					index = 2,
					diffuse_color = { 145, 145, 130 },
					specular_color = { 220, 220, 220 },
					gloss = 32.0,
					sky_color = { 65, 63, 62, },
					ground_color = { 65, 77, 90, },
				},
				-- ���C�g�ԍ�3 �O�@��(���)
				{
					index = 3,
					diffuse_color = { 100, 110, 120 },
					specular_color = { 220, 220, 220 },
					gloss = 32.0,
					sky_color = { 41, 40, 52, },
					ground_color = { 60, 60, 76, },
				},
				-- ���C�g�ԍ�4 �ėp�@��(�Ԋ��)
				{
					index = 4,
					diffuse_color = { 120, 120, 120 },
					specular_color = { 220, 220, 220 },
					gloss = 32.0,
					sky_color = { 90, 46, 46, },
					ground_color = { 73, 45, 28, },
				},
				-- ���C�g�ԍ�5 �ėp�@��(����)
				{
					index = 5,
					diffuse_color = { 215, 215, 197 },
					specular_color = { 220, 220, 220 },
					gloss = 32.0,
					sky_color = { 83, 78, 69, },
					ground_color = { 87, 74, 60, },
				},
				-- ���C�g�ԍ�6 �ėp�@��(����)
				{
					index = 6,
					diffuse_color = { 125, 122, 107 },
					specular_color = { 220, 220, 220 },
					gloss = 32.0,
					sky_color = { 53, 45, 40, },
					ground_color = { 87, 74, 60, },
				},
				-- ���C�g�ԍ�7 �����@��
				{
					index = 7,
					diffuse_color = { 120, 220, 220 },
					specular_color = { 105, 180, 180 },
					gloss = 32.0,
					sky_color = { 70, 85, 95 },
					ground_color = { 24, 73, 78 },
				},
				-- ���C�g�ԍ�8 �����@�����炢
				{
					index = 8,
					diffuse_color = { 120, 160, 165 },
					specular_color = { 105, 180, 180 },
					gloss = 32.0,
					sky_color = { 55, 55, 55 },
					ground_color = { 24, 73, 78 },
				},
				-- ���C�g�ԍ�9 �����@��
				{
					index = 9,
					diffuse_color = { 75, 80, 80 },
					specular_color = { 105, 180, 180 },
					gloss = 32.0,
					sky_color = { 44, 46, 46 },
					ground_color = { 24, 73, 78 },
				},
				-- ���C�g�ԍ�10 �����@(�Ԋ��)
				{
					index = 10,
					diffuse_color = { 130, 110, 85 },
					specular_color = { 220, 220, 200 },
					gloss = 32.0,
					sky_color = { 90, 80, 65 },
					ground_color = { 77, 47, 43 },
				},
				-- ���C�g�ԍ�11 �����@(�×�)
				{
					index = 11,
					diffuse_color = { 130, 110, 85 },
					specular_color = { 220, 220, 200 },
					gloss = 32.0,
					sky_color = { 80, 80, 84 },
					ground_color = { 60, 80, 24 },
				},
				-- ���C�g�ԍ�12 �����@(�Ό����)
				{
					index = 12,
					diffuse_color = { 50, 120, 65 },
					specular_color = { 220, 220, 200 },
					gloss = 32.0,
					sky_color = { 70, 73, 74 },
					ground_color = { 10, 50, 64 },
				},
				-- ���C�g�ԍ�13 �X�^�[�g�_�C�u
				{
					index = 13,
					diffuse_color = { 160, 160, 180 },
					specular_color = { 220, 220, 220 },
					gloss = 32.0,
					sky_color = { 38, 50, 44, },
					ground_color = { 5, 67, 100, },
				},
				-- ���C�g�ԍ�14 �X�^�[�g�_�C�u�@�Ό�
				{
					index = 14,
					diffuse_color = { 160, 255, 180 },
					specular_color = { 220, 250, 220 },
					gloss = 32.0,
					sky_color = { 38, 130, 44, },
					ground_color = { 5, 67, 100, },
				},
				-- ���C�g�ԍ�15 �`�F�C�T�[�G���A
				{
					index = 15,
					diffuse_color = { 160, 160, 180 },
					specular_color = { 220, 220, 220 },
					gloss = 32.0,
					sky_color = { 38, 50, 44, },
					ground_color = { 5, 67, 100, },
				},
				-- ���C�g�ԍ�16 �`�F�C�T�[�G���A�@�Ό�
				{
					index = 16,
					diffuse_color = { 160, 160, 180 },
					specular_color = { 220, 220, 220 },
					gloss = 32.0,
					sky_color = { 38, 50, 44, },
					ground_color = { 5, 120, 100, },
				},
				-- ���C�g�ԍ�17 ����or���@��
				{
					index = 17,
					diffuse_color = { 210, 210, 200 },
					specular_color = { 220, 220, 220 },
					gloss = 32.0,
					sky_color = { 86, 83, 82, },
					ground_color = { 65, 77, 90, },
				},
				-- ���C�g�ԍ�18 �ėp�@�������Â�
				{
					index = 18,
					diffuse_color = { 60, 60, 60 },
					specular_color = { 150, 150, 150 },
					gloss = 32.0,
					sky_color = { 50, 55, 55 },
					ground_color = { 64, 44, 44 },
				},
				-- ���C�g�ԍ�19 �����@(10�Ԋ��ɉ������)
				{
					index = 19,
					diffuse_color = { 130, 110, 85 },
					specular_color = { 220, 220, 200 },
					gloss = 32.0,
					sky_color = { 90, 80, 65 },
					ground_color = { 0, 73, 85 },
				},
				-- ���C�g�ԍ�20 ���U���g�p
				{
					index = 20,
					diffuse_color = { 210, 210, 200 },
					specular_color = { 170, 200, 220 },
					gloss = 32.0,
					sky_color = { 100, 120, 150, },
					ground_color = { 50, 100, 130, },
				},
				-- ���C�g�ԍ�21 �����̍��� ��
				{
					index = 21,
					diffuse_color = { 160, 220, 200 },
					specular_color = { 170, 200, 220 },
					gloss = 32.0,
					sky_color = { 60, 60, 60, },
					ground_color = { 70, 70, 58, },
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
		 -- far = 800.0 * METER,
		 -- near = 0.35 * METER,
		 -- clip0 = 1000.0 * METER,
		 -- clip1 = 450.0 * METER,
		 -- clip2 = 350.0 * METER,
		 -- clip3 = 250.0 * METER,
		 -- clip4 = 125.0 * METER,
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
		 start_z = 50.0 * METER,
		 end_z = 1000.0 * METER,
		 color = { 10, 38, 70 },
	  },
   },

   -- �e�F
   {
	  name = "CShadowManager",
	  params = {
		 color = { 8, 8, 14 },
		 alpha = 110,
	  },
   }, 

   -- ��
   {
       name = "CDistortionManager",
       params = {
           texture = "qua_i_ty1_dist",
           distortion_params = {
               {
                   index = 1,
                   speed = 0.3,
                   scale = 0.05,
                   trans_x = 0.10,
                   trans_y = -0.10,
               },
               {
                   index = 2,
                   speed = 0.3,
                   scale = 0.16,
                   trans_x = 0.10,
                   trans_y = -0.10,
               },
           },
       },
   },

}
