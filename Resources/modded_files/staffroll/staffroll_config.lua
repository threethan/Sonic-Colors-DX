---------------------------------------------------------------
-- @file	staffroll_config.lua
-- @author	miuray
-- @brief	staffroll �̐ݒ�t�@�C��
-- @data	2010/07/9 �X�V
---------------------------------------------------------------

METER = 10.0

---------------------------------------------------------------

-- �T�[�r�X�̃��X�g.
services = {

	-- �O���A
	{
		name = "CGlareManager",
		params = {
			ev = 1.00,
			brightpass = 2.00,
		},
	},

	-- ���C�g
	{
		name = "CLightManager",
		params = {
			-- ����
			ambient_color = { 150, 170, 170 },
			
			-- ���s���F�A�������C�g�F
			lfield_params = {
				{
					index = 1,
					diffuse_color = { 130, 150, 160 },
					gloss = 16.0,
					sky_color = { 20, 30, 40, },
					ground_color = { 140, 170, 170, },
				},
			},
		},
	},

	-- �I�u�W�F�N�g
	-- name		���f���A�A�j���[�V������
	-- anim_chara	�L�����A�j���[�V����������ꍇtrue
	-- anim_tex	TEXTURE_SRT�iUV�j�A�j���[�V����������ꍇtrue
	-- anim_color	�}�e���A���J���[�A�j���[�V����������ꍇtrue�i���e�X�g�j
	-- pos		�����W�C���ʒu
	-- speed	�b���i���݂̋����X�N���[����50�����炢�ł��j
	-- range_in	�����W�C���E�A�E�g�����i�J�����̒����_����ʂ̐^�񒆂��炱�̋������
	--		�߂��Ȃ�ƃ����W�C�����܂��B�T�C�Y���傫�����̂قǑ傫�߂Ɂj
	-- prio		�`��v���C�I���e�B�i�������قǉ��ɕ`�悳��܂��j
	{
		name = "CStaffrollManager",
		params = {
			object_tbl = {

				--02 ���ꐯ
				{
					name = "staff_obj_02",
					anim_tex = true,
					pos = { 1450.0, 110.0, 0.0 },
					speed = 18.0,
					range = 1000.0,
					prio = 1,
				},

				{
					name = "staff_obj_02",
					anim_tex = true,
					pos = { 2000.0, 80.0, 0.0 },
					speed = 15.0,
					range = 1000.0,
					prio = 0,
				},

				{
					name = "staff_obj_02",
					anim_tex = true,
					pos = { 3000.0, 30.0, 0.0 },
					speed = 15.0,
					range = 1000.0,
					prio = 1,
				},

				{
					name = "staff_obj_02",
					anim_tex = true,
					pos = { 3400.0, 80.0, 0.0 },
					speed = 12.0,
					range = 1000.0,
					prio = 0,
				},

				{
					name = "staff_obj_02",
					anim_tex = true,
					pos = { 9900.0, 0.0, 0.0 },
					speed = 10.0,
					range = 1000.0,
					prio = 0,
				},

				{
					name = "staff_obj_02",
					anim_tex = true,
					pos = { 12000.0, 0.0, 0.0 },
					speed = 10.0,
					range = 1000.0,
					prio = 1,
				},

				{
					name = "staff_obj_02",
					anim_tex = true,
					pos = { 15000.0, 0.0, 0.0 },
					speed = 12.0,
					range = 1000.0,
					prio = 0,
				},

				{
					name = "staff_obj_02",
					anim_tex = true,
					pos = { 23000.0, 0.0, 0.0 },
					speed = 12.0,
					range = 1000.0,
					prio = 0,
				},

				{
					name = "staff_obj_02",
					anim_tex = true,
					pos = { 26000.0, 0.0, 0.0 },
					speed = 12.0,
					range = 1000.0,
					prio = 0,
				},

				--03 覐ΌQ�`��
				{
					name = "staff_obj_03",
					anim_chara = true,
					pos = { 11000.0, 0.0, 0.0 },
					speed = 20.0,
					range = 1000.0,
					prio = 1,
				},

				--04 覐ΌQ�a��
				{
					name = "staff_obj_04",
					anim_chara = true,
					pos = { 14000.0, 0.0, 0.0 },
					speed = 22.0,
					range = 1000.0,
					prio = 0,
				},

				--05 覐ΌQ���i��
				{
					name = "staff_obj_05",
					pos = { 11500.0, 0.0, 0.0 },
					speed = 23.0,
					range = 1000.0,
					prio = 0,
				},

				{
					name = "staff_obj_05",
					pos = { 16000.0, 20.0, 0.0 },
					speed = 20.0,
					range = 1000.0,
					prio = 0,
				},

				--06 �f����(��)��
				{
					name = "staff_obj_06",
					pos = { 6800.0, 175.0, 0.0 },
					speed = 20.0,
					range = 500.0,
					prio = 0,
				},

				--07 �f����(��)��
				{
					name = "staff_obj_07",
					pos = { 24200.0, 160.0, 0.0 },
					speed = 20.0,
					range = 500.0,
					prio = 1,
				},

				--08 �f����(��)��
				{
					name = "staff_obj_08",
					pos = { 4700.0, 170.0, 0.0 },
					speed = 20.0,
					range = 500.0,
					prio = 1,
				},

				--09 �f����(��)��
				{
					name = "staff_obj_09",
					pos = { 21000.0, 150.0, 0.0 },
					speed = 20.0,
					range = 500.0,
					prio = 1,
				},

				--21 �f�������O(��)���ƃZ�b�g��
				{
					name = "staff_obj_21",
					anim_tex = true,
					pos = { 21000.0, 150.0, 0.0 },
					speed = 20.0,
					range = 500.0,
					prio = 1,
				},

				--10 �f����(��)��
				{
					name = "staff_obj_10",
					pos = { 18500.0, 170.0, 0.0 },
					speed = 20.0,
					range = 500.0,
					prio = 1,
				},

				--22 �f�������O(��)���ƃZ�b�g��
				{
					name = "staff_obj_22",
					anim_tex = true,
					pos = { 18500.0, 170.0, 0.0 },
					speed = 20.0,
					range = 500.0,
					prio = 1,
				},

				--11 �f����(��)��
				{
					name = "staff_obj_11",
					pos = { 10000.0, 150.0, 0.0 },
					speed = 20.0,
					range = 500.0,
					prio = 1,
				},

				--12 �f����(���F)��
				{
					name = "staff_obj_12",
					pos = { 26500.0, 140.0, 0.0 },
					speed = 15.0,
					range = 500.0,
					prio = 0,
				},


				--13 �f����(��)��O��
				{
					name = "staff_obj_13",
					pos = { 8100.0, 140.0, 0.0 },
					speed = 19.0,
					range = 500.0,
					prio = 1,
				},

				--14 �f����(��)����
				{
					name = "staff_obj_14",
					pos = { 9450.0, 110.0, 0.0 },
					speed = 22.0,
					range = 500.0,
					prio = 0,
				},

				--15 �f����(�D��)��O��
				{
					name = "staff_obj_15",
					pos = { 7300.0, 170.0, 0.0 },
					speed = 18.0,
					range = 500.0,
					prio = 1,
				},

				--16 �f����(�D��)����
				{
					name = "staff_obj_16",
					pos = { 26600.0, 110.0, 0.0 },
					speed = 21.0,
					range = 500.0,
					prio = 0,
				},

				--17 �f����(������)��O��
				{
					name = "staff_obj_17",
					pos = { 24800.0, 140.0, 0.0 },
					speed = 19.0,
					range = 500.0,
					prio = 1,
				},

				--18 �f����(������)����
				{
					name = "staff_obj_18",
					pos = { 21500.0, 90.0, 0.0 },
					speed = 22.0,
					range = 500.0,
					prio = 0,
				},

				--19 �f����(�Ԓ�)��O��
				{
					name = "staff_obj_19",
					pos = { 22000.0, 150.0, 0.0 },
					speed = 18.0,
					range = 500.0,
					prio = 1,
				},

				--20 �f����(�Ԓ�)����
				{
					name = "staff_obj_20",
					pos = { 4900.0, 110.0, 0.0 },
					speed = 21.0,
					range = 500.0,
					prio = 0,
				},

				--01 �n���F�Ō�̃Z�K���S�ɃZ���^�[�������I�ɍ���
				{
					name = "staff_obj_01",
					speed = 10.0,
				},
			},
		},
	}
}

