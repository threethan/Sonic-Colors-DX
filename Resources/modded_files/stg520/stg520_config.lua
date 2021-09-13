---------------------------------------------------------------
-- @file	stg520_config.lua
-- @author	
-- @brief	stg520 の設定ファイル
-- @data	2010/06/26 更新
---------------------------------------------------------------

METER = 10.0


---------------------------------------------------------------


-- 落ち死にする高さ。これより下にプレイヤーが移動すると死にます。
dead_line = -110.0 * METER

-- カメラ設定.
camera = {

   near = 0.1 * METER,
   far = 1500.0 * METER,
   fov = 60,
}

   -- リザルト位置
   result_pos = { 0, -3000, 0 }

-- サービスのリスト.
services = {

	-- グレア
   {
	  name = "CGlareManager",
	  params = {
		 ev = 1.08,
		 brightpass = 2.98,
	  },
   },
	-- ライト
	{
		name = "CLightManager",
		params = {
			-- 環境光
			ambient_color = { 55, 80, 145 },

			-- 地形ライト用ライトインデックス
			terrain_light = 3,

			-- オブジェクトデフォルトライトインデックス
			object_light = 3,
			
			-- 平行光色、半球ライト色
			lfield_params = {
				-- ライト番号1 SV水外 (明)
				{
					index = 1,
					diffuse_color = { 235, 235, 210 },
					specular_color = { 220, 220, 220 },
					gloss = 32.0,
					sky_color = { 108, 84, 80 },
					ground_color = { 55, 70, 95 },
				},
				-- ライト番号2 SV汎用水中 (明)
				{
					index = 2,
					diffuse_color = { 95, 190, 190 },
					specular_color = { 105, 180, 180 },
					gloss = 32.0,
					sky_color = { 43, 60, 90 },
					ground_color = { 24, 73, 78 },
				},

				-- ライト番号3 FW汎用外 明(やや暗め青寄り)デフォルト
				{
					index = 3,
					diffuse_color = { 200, 200, 180 },
					specular_color = { 220, 220, 220 },
					gloss = 32.0,
					sky_color = { 78, 64, 60 },
					ground_color = { 50, 63, 73 },
				},

				-- ライト番号4 FW 明（茶）木材用
				{
					index = 4,
					diffuse_color = { 220, 220, 200 },
					specular_color = { 220, 220, 220 },
					gloss = 32.0,
					sky_color = { 85, 85, 85 },
					ground_color = { 93, 72, 57 },
				},
				-- ライト番号5 FW 　暗（赤がち)木材用
				{
					index = 5,
					diffuse_color = { 100, 70, 40 },
					specular_color = { 220, 220, 220 },
					gloss = 32.0,
					sky_color = { 120, 60, 60 },
					ground_color = { 84, 54, 40 },
				},
				-- ライト番号6 FW 　暗（やや緑寄り。穴など）
				{
					index = 6,
					diffuse_color = { 140, 120, 90 },
					specular_color = { 220, 220, 220 },
					gloss = 32.0,
					sky_color = { 49, 47, 38 },
					ground_color = { 32, 34, 30 },
				},
				-- ライト番号7 FW 　暗（円筒状建物室内用）
				{
					index = 7,
					diffuse_color = { 150, 120, 80 },
					specular_color = { 220, 220, 200 },
					gloss = 32.0,
					sky_color = { 100, 100, 100 },
					ground_color = { 84, 54, 40 },
				},

				-- ライト番号8 FW 暗（青色寄り）
				{
					index = 8,
					diffuse_color = { 98, 118, 113 },
					specular_color = { 220, 220, 200 },
					gloss = 32.0,
					sky_color = { 45, 42, 42 },
					ground_color = { 38, 28, 65 },
				},
				-- ライト番号9 FW 　5の向かって左側から緑
				{
					index = 9,
					diffuse_color = { 200, 60, 70 },
					specular_color = { 220, 220, 220 },
					gloss = 32.0,
					sky_color = { 100, 80, 80 },
					ground_color = { 84, 200, 40 },
				},
				-- ライト番号10 FW 　5の向かって右側から緑
				{
					index = 10,
					diffuse_color = { 200, 60, 70 },
					specular_color = { 220, 220, 220 },
					gloss = 32.0,
					sky_color = { 100, 80, 80 },
					ground_color = { 84, 200, 40 },
				},
				-- ライト番号11 御屋敷右コース 暗(茶気味)
				{
					index = 11,
					diffuse_color = { 120, 110, 90 },
					specular_color = { 220, 220, 220 },
					gloss = 32.0,
					sky_color = { 120, 96, 75 },
					ground_color = { 75, 50, 35 },
				},
				-- ライト番号12 御屋敷右コース 明(青味)
				{
					index = 12,
					diffuse_color = { 220, 220, 200 },
					specular_color = { 220, 220, 220 },
					gloss = 32.0,
					sky_color = { 98, 86, 82 },
					ground_color = { 60, 73, 83 },
				},
				-- ライト番号13 ダイブ 暗(赤味)
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
	-- 地形
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
		 
		 -- この変数は(仮)
		 -- anim_range = 600 * METER,
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
		 start_z = 20.0 * METER,
		 end_z = 890.0 * METER,
		 color = { 10, 38, 105 },
	  },
   },

   -- 影色
   {
	  name = "CShadowManager",
	  params = {
		 color = { 8, 8, 14 },
		 alpha = 110,
	  },
   }, 

   -- 水
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
