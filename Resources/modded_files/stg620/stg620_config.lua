---------------------------------------------------------------
-- @file	stg110_config.lua
-- @author	Kawabata Yoshitaka <Kawabata_Yoshitaka@sega.co.jp>
-- @brief	stg110 の設定ファイル
-- @data	2009/07/17 ステージ設定ファイル第一号として誕生
---------------------------------------------------------------

METER = 10.0


---------------------------------------------------------------


-- 落ち死にする高さ。これより下にプレイヤーが移動すると死にます。
dead_line = -130.0 * METER

-- カメラ設定.
camera = {

   near = 0.1 * METER,
   far = 1540.0 * METER,
   fov = 60,
}

   -- リザルト位置
   result_pos = { 596, 460, 825 }

-- サービスのリスト.
services = {

	-- グレア
   {
	  name = "CGlareManager",
	  params = {
		 ev = 1.08,
		 brightpass = 2.00,
	  },
   },
	-- ライト
	{
		name = "CLightManager",
		params = {
			-- 点光源パラメータ
			llight_frustum_far = 5000.0,
			llight_anim_speed_scale = 0.5,

			-- 環境光
			ambient_color = { 110, 160, 140 },

			-- 地形ライト用ライトインデックス
			terrain_light = 1,

			-- オブジェクトデフォルトライトインデックス
			object_light = 1,
			
			-- 平行光色、半球ライト色
			lfield_params = {
				-- ライト番号1 通常外 (明)
				{
					index = 1,
					diffuse_color = { 250, 250, 250 },
					specular_color = { 250, 255, 255 },
					sky_color = { 50, 50, 50, },
					ground_color = { 16, 70, 100, },
					gloss = 32.0,
				},
				-- ライト番号2 背景汎用(ライトコリジョンとしては通常使わない)
				{
					index = 2,
					diffuse_color = { 110, 110, 110 },
					specular_color = { 220, 230, 240 },
					sky_color = { 160, 160, 160, },
					ground_color = { 10, 45, 80, },
					gloss = 32.0,
				},
				-- ライト番号3 コースターレール上影 
				{
					index = 3,
					diffuse_color = { 120, 130, 130 },
					specular_color = { 180, 190, 200 },
					sky_color = { 90, 90, 90, },
					ground_color = { 80, 86, 3, },
					gloss = 32.0,
				},
				-- ライト番号4 コースターレール上 (緑明)
				{
					index = 4,
					diffuse_color = { 110, 110, 110 },
					specular_color = { 220, 230, 240 },
					sky_color = { 160, 160, 160, },
					ground_color = { 80, 86, 3, },
					gloss = 32.0,
				},
				-- ライト番号5 FV2F青がち (中暗青緑)
				{
					index = 5,
					diffuse_color = { 120, 120, 100 },
					specular_color = { 220, 220, 200 },
					sky_color = { 80, 80, 80, },
					ground_color = { 45, 70, 60, },
					gloss = 32.0,
				},
				-- ライト番号6 FV2F赤がち (中暗赤)
				{
					index = 6,
					diffuse_color = { 200, 160, 100 },
					specular_color = { 200, 210, 80 },
					sky_color = { 100, 80, 90, },
					ground_color = { 90, 65, 0, },
					gloss = 32.0,
				},
				-- ライト番号7 FV緑液体 (中緑下から光)
				{
					index = 7,
					diffuse_color = { 100, 180, 160 },
					specular_color = { 80, 255, 20 },
					sky_color = { 90, 90, 90, },
					ground_color = { 80, 145, 20, },
					gloss = 32.0,
				},
				-- ライト番号8 ＳＶ汎用（中暗黄緑逆光ぎみ） 
				{
					index = 8,
					diffuse_color = { 230, 230, 180 },
					specular_color = { 250, 250, 240 },
					sky_color = { 80, 80, 80, },
					ground_color = { 85, 99, 75, },
					gloss = 32.0,
				},
				-- ライト番号9 ダイブ１用 
				{
					index = 9,
					diffuse_color = { 165, 124, 120 },
					specular_color = { 200, 200, 150 },
					sky_color = { 68, 37, 50, },
					ground_color = { 150, 135, 100, },
					gloss = 32.0,
				},
				-- ライト番号10 ＳＶ青グレー（中暗青逆光ぎみ） 
				{
					index = 10,
					diffuse_color = { 130, 220, 220 },
					specular_color = { 120, 255, 250 },
					sky_color = { 70, 90, 100, },
					ground_color = { 105, 120, 105, },
					gloss = 32.0,
				},
				-- ライト番号11 ＳＶ緑液体エリア（中暗緑逆光ぎみ） 
				{
					index = 11,
					diffuse_color = { 90, 190, 60 },
					specular_color = { 80, 255, 20 },
					sky_color = { 70, 90, 100, },
					ground_color = { 90, 160, 90, },
					gloss = 32.0,
				},
				-- ライト番号12 コースターレール上　暗 (緑暗)
				{
					index = 12,
					diffuse_color = { 30, 30, 50 },
					specular_color = { 180, 190, 200 },
					sky_color = { 100, 100, 120, },
					ground_color = { 80, 86, 3, },
					gloss = 32.0,
				},
				-- ライト番号13 重力反転装置　ゴールまでの通路（暗緑逆光ぎみ） 
				{
					index = 13,
					diffuse_color = { 120, 130, 120 },
					specular_color = { 70, 80, 70 },
					sky_color = { 55, 60, 50, },
					ground_color = { 85, 80, 85, },
					gloss = 32.0,
				},
				-- ライト番号14 室内 FV1F用 赤がち(中暗赤)
				{
					index = 14,
					diffuse_color = { 120, 110, 80 },
					specular_color = { 200, 200, 150 },
					sky_color = { 70, 50, 60, },
					ground_color = { 90, 65, 0, },
					gloss = 32.0,
				},
				-- ライト番号15 室内 FV1F用 汎用青がち(中暗青緑)
				{
					index = 15,
					diffuse_color = { 100, 120, 120 },
					specular_color = { 200, 210, 80 },
					sky_color = { 80, 95, 85, },
					ground_color = { 65, 80, 65, },
					gloss = 32.0,
				},
				-- ライト番号16 室内 FV1F用 黄緑がち(中暗黄緑)
				{
					index = 16,
					diffuse_color = { 95, 100, 80 },
					specular_color = { 200, 210, 80 },
					sky_color = { 95, 110, 85, },
					ground_color = { 60, 95, 50, },
					gloss = 32.0,
				},
				-- ライト番号17 重力反転装置 中央部（暗紫逆光ぎみ） 
				{
					index = 17,
					diffuse_color = { 170, 140, 170 },
					specular_color = { 220, 220, 220 },
					sky_color = { 100, 35, 100, },
					ground_color = { 106, 170, 15, },
					gloss = 32.0,
				},
				-- ライト番号18 FV後ツイスト道　汎用青がち (中暗青緑)
				{
					index = 18,
					diffuse_color = { 100, 120, 120 },
					specular_color = { 200, 210, 80 },
					sky_color = { 80, 95, 85, },
					ground_color = { 65, 80, 65, },
					gloss = 32.0,
				},
				-- ライト番号19 FV後ツイスト道　暗い (中暗青緑)
				{
					index = 19,
					diffuse_color = { 75, 75, 55 },
					specular_color = { 150, 140, 20 },
					sky_color = { 55, 50, 40, },
					ground_color = { 25, 35, 25, },
					gloss = 32.0,
				},
			},
		},
	},

   {
	-- 地形
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
		 
		 -- この変数は(仮)
		 anim_range = 600 * METER,
	  },
   },

   -- パス
   {
	  name = "CPathManager",
	  params = {
		 debug_collision = false,
	  },
   },

   -- フォグ
   {
	  name = "CFogManager",
	  params = {
		 type = "linear",
		 start_z = 100.0 * METER,
		 end_z = 1300.0 * METER,
		 color = { 16, 10, 35 },
	  },
   },

   -- レンズフレア
   {
	  name = "CLensFlareManager",
	  params = {
		 source_light = { 5140.0, -1820.0, -13100.0 },
	  },
   },

   -- 影色
   {
	  name = "CShadowManager",
	  params = {
		 color = { 0, 5, 10 },
		 alpha = 90,
	  },
   }, 
}
