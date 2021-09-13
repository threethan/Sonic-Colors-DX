---------------------------------------------------------------
-- @file	staffroll_config.lua
-- @author	miuray
-- @brief	staffroll の設定ファイル
-- @data	2010/07/9 更新
---------------------------------------------------------------

METER = 10.0

---------------------------------------------------------------

-- サービスのリスト.
services = {

	-- グレア
	{
		name = "CGlareManager",
		params = {
			ev = 1.00,
			brightpass = 2.00,
		},
	},

	-- ライト
	{
		name = "CLightManager",
		params = {
			-- 環境光
			ambient_color = { 150, 170, 170 },
			
			-- 平行光色、半球ライト色
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

	-- オブジェクト
	-- name		モデル、アニメーション名
	-- anim_chara	キャラアニメーションがある場合true
	-- anim_tex	TEXTURE_SRT（UV）アニメーションがある場合true
	-- anim_color	マテリアルカラーアニメーションがある場合true（未テスト）
	-- pos		レンジイン位置
	-- speed	秒速（現在の強制スクロールが50強ぐらいです）
	-- range_in	レンジイン・アウト距離（カメラの注視点＝画面の真ん中からこの距離より
	--		近くなるとレンジインします。サイズが大きいものほど大きめに）
	-- prio		描画プライオリティ（小さいほど奥に描画されます）
	{
		name = "CStaffrollManager",
		params = {
			object_tbl = {

				--02 流れ星
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

				--03 隕石群Ａ☆
				{
					name = "staff_obj_03",
					anim_chara = true,
					pos = { 11000.0, 0.0, 0.0 },
					speed = 20.0,
					range = 1000.0,
					prio = 1,
				},

				--04 隕石群Ｂ☆
				{
					name = "staff_obj_04",
					anim_chara = true,
					pos = { 14000.0, 0.0, 0.0 },
					speed = 22.0,
					range = 1000.0,
					prio = 0,
				},

				--05 隕石群遠景☆
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

				--06 惑星大(緑)☆
				{
					name = "staff_obj_06",
					pos = { 6800.0, 175.0, 0.0 },
					speed = 20.0,
					range = 500.0,
					prio = 0,
				},

				--07 惑星大(黄)☆
				{
					name = "staff_obj_07",
					pos = { 24200.0, 160.0, 0.0 },
					speed = 20.0,
					range = 500.0,
					prio = 1,
				},

				--08 惑星大(白)★
				{
					name = "staff_obj_08",
					pos = { 4700.0, 170.0, 0.0 },
					speed = 20.0,
					range = 500.0,
					prio = 1,
				},

				--09 惑星大(赤)☆
				{
					name = "staff_obj_09",
					pos = { 21000.0, 150.0, 0.0 },
					speed = 20.0,
					range = 500.0,
					prio = 1,
				},

				--21 惑星リング(赤)↑とセット☆
				{
					name = "staff_obj_21",
					anim_tex = true,
					pos = { 21000.0, 150.0, 0.0 },
					speed = 20.0,
					range = 500.0,
					prio = 1,
				},

				--10 惑星大(紫)☆
				{
					name = "staff_obj_10",
					pos = { 18500.0, 170.0, 0.0 },
					speed = 20.0,
					range = 500.0,
					prio = 1,
				},

				--22 惑星リング(黄)↑とセット☆
				{
					name = "staff_obj_22",
					anim_tex = true,
					pos = { 18500.0, 170.0, 0.0 },
					speed = 20.0,
					range = 500.0,
					prio = 1,
				},

				--11 惑星大(青)☆
				{
					name = "staff_obj_11",
					pos = { 10000.0, 150.0, 0.0 },
					speed = 20.0,
					range = 500.0,
					prio = 1,
				},

				--12 惑星大(水色)☆
				{
					name = "staff_obj_12",
					pos = { 26500.0, 140.0, 0.0 },
					speed = 15.0,
					range = 500.0,
					prio = 0,
				},


				--13 惑星小(青)手前★
				{
					name = "staff_obj_13",
					pos = { 8100.0, 140.0, 0.0 },
					speed = 19.0,
					range = 500.0,
					prio = 1,
				},

				--14 惑星小(青)奥★
				{
					name = "staff_obj_14",
					pos = { 9450.0, 110.0, 0.0 },
					speed = 22.0,
					range = 500.0,
					prio = 0,
				},

				--15 惑星小(灰青緑)手前★
				{
					name = "staff_obj_15",
					pos = { 7300.0, 170.0, 0.0 },
					speed = 18.0,
					range = 500.0,
					prio = 1,
				},

				--16 惑星小(灰青緑)奥☆
				{
					name = "staff_obj_16",
					pos = { 26600.0, 110.0, 0.0 },
					speed = 21.0,
					range = 500.0,
					prio = 0,
				},

				--17 惑星小(黄砂緑)手前☆
				{
					name = "staff_obj_17",
					pos = { 24800.0, 140.0, 0.0 },
					speed = 19.0,
					range = 500.0,
					prio = 1,
				},

				--18 惑星小(黄砂緑)奥☆
				{
					name = "staff_obj_18",
					pos = { 21500.0, 90.0, 0.0 },
					speed = 22.0,
					range = 500.0,
					prio = 0,
				},

				--19 惑星小(赤茶)手前☆
				{
					name = "staff_obj_19",
					pos = { 22000.0, 150.0, 0.0 },
					speed = 18.0,
					range = 500.0,
					prio = 1,
				},

				--20 惑星小(赤茶)奥★
				{
					name = "staff_obj_20",
					pos = { 4900.0, 110.0, 0.0 },
					speed = 21.0,
					range = 500.0,
					prio = 0,
				},

				--01 地球：最後のセガロゴにセンターが自動的に合う
				{
					name = "staff_obj_01",
					speed = 10.0,
				},
			},
		},
	}
}

