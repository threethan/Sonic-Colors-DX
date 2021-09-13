---------------------------------------------------------------
-- @file	stg110_config.lua
-- @author	Kawabata Yoshitaka <Kawabata_Yoshitaka@sega.co.jp>
-- @brief	stg110 の設定ファイル
-- @data	2009/07/17 ステージ設定ファイル第一号として誕生
---------------------------------------------------------------

METER = 10.0


---------------------------------------------------------------


-- 落ち死にする高さ。これより下にプレイヤーが移動すると死にます。
dead_line = -2100.0 * METER

-- カメラ設定.
camera = {

   near = 0.1 * METER,
   far = 1540.0 * METER,
   fov = 60,
}

   -- リザルト位置
   result_pos = { 11724, 136, -114 }

-- サービスのリスト.
services = {

	-- グレア
   {
	  name = "CGlareManager",
	  params = {
		 ev = 1.0,
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
				-- ライト番号3 通常外 （青暗)
				{
					index = 3,
					diffuse_color = { 80, 121, 110 },
					specular_color = { 180, 190, 200 },
					sky_color = { 80, 80, 80, },
					ground_color = { 6, 15, 50, },
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
				-- ライト番号5 汎用室内 (中暗緑)
				{
					index = 5,
					diffuse_color = { 120, 120, 100 },
					specular_color = { 220, 220, 200 },
					sky_color = { 50, 50, 45, },
					ground_color = { 40, 85, 30, },
					gloss = 32.0,
				},
				-- ライト番号6 室内土の箇所 (中暗茶)
				{
					index = 6,
					diffuse_color = { 110, 100, 80 },
					specular_color = { 200, 210, 80 },
					sky_color = { 85, 85, 85, },
					ground_color = { 88, 65, 0, },
					gloss = 32.0,
				},
				-- ライト番号7 緑液体がち箇所 (中緑下から光)
				{
					index = 7,
					diffuse_color = { 100, 180, 160 },
					specular_color = { 80, 255, 20 },
					sky_color = { 90, 90, 90, },
					ground_color = { 80, 145, 20, },
					gloss = 32.0,
				},
				-- ライト番号8 ＳＶ汎用（中暗青緑逆行ぎみ） 
				{
					index = 8,
					diffuse_color = { 130, 220, 220 },
					specular_color = { 120, 255, 250 },
					sky_color = { 70, 90, 100, },
					ground_color = { 105, 120, 105, },
					gloss = 32.0,
				},
				-- ライト番号9 ＳＶ赤がち 
				{
					index = 9,
					diffuse_color = { 130, 220, 220 },
					specular_color = { 120, 255, 250 },
					sky_color = { 70, 90, 100, },
					ground_color = { 150, 80, 85, },
					gloss = 32.0,
				},
				-- ライト番号10 外アステロイドベルト (明 床黄色ぎみ)
				{
					index = 10,
					diffuse_color = { 110, 110, 110 },
					specular_color = { 220, 230, 240 },
					sky_color = { 160, 160, 160, },
					ground_color = { 105, 100, 10, },
					gloss = 32.0,
				},
				-- ライト番号11 外アステロイドベルト (暗 床黄色ぎみ)
				{
					index = 11,
					diffuse_color = { 30, 30, 50 },
					specular_color = { 180, 190, 200 },
					sky_color = { 100, 100, 120, },
					ground_color = { 105, 100, 10, },
					gloss = 32.0,
				},
				-- ライト番号12 塔　汎用 (中暗 黄緑)
				{
					index = 12,
					diffuse_color = { 95, 100, 65 },
					specular_color = { 200, 220, 190 },
					sky_color = { 110, 120, 105, },
					ground_color = { 60, 70, 40, },
					gloss = 32.0,
				},
				-- ライト番号13 塔　青エリア (明 青)
				{
					index = 13,
					diffuse_color = { 130, 220, 220 },
					specular_color = { 120, 255, 250 },
					sky_color = { 70, 90, 100, },
					ground_color = { 105, 120, 105, },
					gloss = 32.0,
				},
				-- ライト番号14 塔　青エリア (暗 青)
				{
					index = 14,
					diffuse_color = { 65, 80, 80 },
					specular_color = { 110, 140, 150 },
					sky_color = { 80, 100, 105, },
					ground_color = { 35, 60, 65, },
					gloss = 32.0,
				},
				-- ライト番号15 塔　赤エリア (中暗 赤)
				{
					index = 15,
					diffuse_color = { 140, 180, 170 },
					specular_color = { 140, 230, 220 },
					sky_color = { 70, 90, 100, },
					ground_color = { 150, 80, 85, },
					gloss = 32.0,
				},
				-- ライト番号16 塔　明るいエリア (明　黄青)
				{
					index = 16,
					diffuse_color = { 150, 150, 110 },
					specular_color = { 220, 230, 240 },
					sky_color = { 155, 160, 155, },
					ground_color = { 35, 60, 30, },
					gloss = 32.0,
				},
				-- ライト番号17 塔　暗いエリア (最も暗 青)
				{
					index = 17,
					diffuse_color = { 50, 65, 65 },
					specular_color = { 100, 130, 140 },
					sky_color = { 50, 70, 75, },
					ground_color = { 35, 60, 65, },
					gloss = 32.0,
				},
				-- ライト番号18 塔　スタート地点 (明 黄青)
				{
					index = 18,
					diffuse_color = { 150, 150, 110 },
					specular_color = { 220, 230, 240 },
					sky_color = { 155, 160, 155, },
					ground_color = { 35, 60, 30, },
					gloss = 32.0,
				},
				-- ライト番号19 室内明 (緑寄り5の明るい版)
				{
					index = 19,
					diffuse_color = { 240, 240, 240 },
					specular_color = { 250, 250, 250 },
					sky_color = { 90, 100, 95, },
					ground_color = { 40, 85, 30, },
					gloss = 32.0,
				},
				-- ライト番号20 黒岩の上 (明)
				{
					index = 20,
					diffuse_color = { 250, 250, 250 },
					specular_color = { 250, 255, 255 },
					sky_color = { 60, 60, 60, },
					ground_color = { 100, 90, 95, },
					gloss = 32.0,
				},		
				-- ライト番号21 汎用室内 (緑寄り5の暗い版)
				{
					index = 21,
					diffuse_color = { 80, 80, 60 },
					specular_color = { 180, 180, 160 },
					sky_color = { 40, 40, 35, },
					ground_color = { 20, 55, 10, },
					gloss = 32.0,
				},	
				-- ライト番号22 リザルト専用
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
		 source_light = { -3670.0, -3100.0, -13680.0 },
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
