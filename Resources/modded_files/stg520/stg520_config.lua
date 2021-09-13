---------------------------------------------------------------
-- @file	stg520_config.lua
-- @author	
-- @brief	stg520 �̐ݒ�t�@�C��
-- @data	2010/06/26 �X�V
---------------------------------------------------------------

METER = 10.0


---------------------------------------------------------------


-- �������ɂ��鍂���B�����艺�Ƀv���C���[���ړ�����Ǝ��ɂ܂��B
dead_line = -110.0 * METER

-- �J�����ݒ�.
camera = {

   near = 0.1 * METER,
   far = 1500.0 * METER,
   fov = 60,
}

   -- ���U���g�ʒu
   result_pos = { 0, -3000, 0 }

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
			terrain_light = 3,

			-- �I�u�W�F�N�g�f�t�H���g���C�g�C���f�b�N�X
			object_light = 3,
			
			-- ���s���F�A�������C�g�F
			lfield_params = {
				-- ���C�g�ԍ�1 SV���O (��)
				{
					index = 1,
					diffuse_color = { 235, 235, 210 },
					specular_color = { 220, 220, 220 },
					gloss = 32.0,
					sky_color = { 108, 84, 80 },
					ground_color = { 55, 70, 95 },
				},
				-- ���C�g�ԍ�2 SV�ėp���� (��)
				{
					index = 2,
					diffuse_color = { 95, 190, 190 },
					specular_color = { 105, 180, 180 },
					gloss = 32.0,
					sky_color = { 43, 60, 90 },
					ground_color = { 24, 73, 78 },
				},

				-- ���C�g�ԍ�3 FW�ėp�O ��(���Âߐ��)�f�t�H���g
				{
					index = 3,
					diffuse_color = { 200, 200, 180 },
					specular_color = { 220, 220, 220 },
					gloss = 32.0,
					sky_color = { 78, 64, 60 },
					ground_color = { 50, 63, 73 },
				},

				-- ���C�g�ԍ�4 FW ���i���j�؍ޗp
				{
					index = 4,
					diffuse_color = { 220, 220, 200 },
					specular_color = { 220, 220, 220 },
					gloss = 32.0,
					sky_color = { 85, 85, 85 },
					ground_color = { 93, 72, 57 },
				},
				-- ���C�g�ԍ�5 FW �@�Ái�Ԃ���)�؍ޗp
				{
					index = 5,
					diffuse_color = { 100, 70, 40 },
					specular_color = { 220, 220, 220 },
					gloss = 32.0,
					sky_color = { 120, 60, 60 },
					ground_color = { 84, 54, 40 },
				},
				-- ���C�g�ԍ�6 FW �@�Ái���Ί��B���Ȃǁj
				{
					index = 6,
					diffuse_color = { 140, 120, 90 },
					specular_color = { 220, 220, 220 },
					gloss = 32.0,
					sky_color = { 49, 47, 38 },
					ground_color = { 32, 34, 30 },
				},
				-- ���C�g�ԍ�7 FW �@�Ái�~���󌚕������p�j
				{
					index = 7,
					diffuse_color = { 150, 120, 80 },
					specular_color = { 220, 220, 200 },
					gloss = 32.0,
					sky_color = { 100, 100, 100 },
					ground_color = { 84, 54, 40 },
				},

				-- ���C�g�ԍ�8 FW �Ái�F���j
				{
					index = 8,
					diffuse_color = { 98, 118, 113 },
					specular_color = { 220, 220, 200 },
					gloss = 32.0,
					sky_color = { 45, 42, 42 },
					ground_color = { 38, 28, 65 },
				},
				-- ���C�g�ԍ�9 FW �@5�̌������č��������
				{
					index = 9,
					diffuse_color = { 200, 60, 70 },
					specular_color = { 220, 220, 220 },
					gloss = 32.0,
					sky_color = { 100, 80, 80 },
					ground_color = { 84, 200, 40 },
				},
				-- ���C�g�ԍ�10 FW �@5�̌������ĉE�������
				{
					index = 10,
					diffuse_color = { 200, 60, 70 },
					specular_color = { 220, 220, 220 },
					gloss = 32.0,
					sky_color = { 100, 80, 80 },
					ground_color = { 84, 200, 40 },
				},
				-- ���C�g�ԍ�11 �䉮�~�E�R�[�X ��(���C��)
				{
					index = 11,
					diffuse_color = { 120, 110, 90 },
					specular_color = { 220, 220, 220 },
					gloss = 32.0,
					sky_color = { 120, 96, 75 },
					ground_color = { 75, 50, 35 },
				},
				-- ���C�g�ԍ�12 �䉮�~�E�R�[�X ��(��)
				{
					index = 12,
					diffuse_color = { 220, 220, 200 },
					specular_color = { 220, 220, 220 },
					gloss = 32.0,
					sky_color = { 98, 86, 82 },
					ground_color = { 60, 73, 83 },
				},
				-- ���C�g�ԍ�13 �_�C�u ��(�Ԗ�)
				{
					index = 13,
					diffuse_color = { 90, 250, 186 },
					specular_color = { 200, 220, 200 },
					gloss = 32.0,
					sky_color = { 80, 50, 40 },
					ground_color = { 44, 80, 50 },
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
		 end_z = 890.0 * METER,
		 color = { 10, 38, 105 },
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
                   speed = 0.5,
                   scale = 0.1,
                   trans_x = 0.10,
                   trans_y = -0.10,
               },
           },
       },
   },


}
