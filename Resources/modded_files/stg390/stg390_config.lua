---------------------------------------------------------------
-- @file	stg390_config.lua
-- @author	Miura Yoshitaka <Miura_Yoshitaka@sega.co.jp>
-- @brief	stg390 の設定ファイル
-- @data	2010/2/24
---------------------------------------------------------------

METER = 10.0


---------------------------------------------------------------


-- 落ち死にする高さ。これより下にプレイヤーが移動すると死にます。
dead_line = -50.0 * METER

-- カメラ設定.
camera = {

   near = 0.1 * METER,
   far = 1700.0 * METER,
   fov = 60,
}

-- サービスのリスト.
services = {

	-- グレア
   {
	  name = "CGlareManager",
	  params = {
		 ev = 1.20,
		 brightpass = 2.90,
	  },
   },

	-- ライト
	{
		name = "CLightManager",
		params = {
			-- 環境光
			ambient_color = { 90, 80, 100 },
			
			-- 平行光色、半球ライト色
			lfield_params = {
				{
					index = 1,
					diffuse_color = { 170, 150, 190 },
					gloss = 16.0,
					sky_color = { 120, 120, 150, },
					ground_color = { 70, 60, 80, },
				},
			},
		},
	},

   {
	-- 地形
	  name = "CTerrainManager",
	  params = {
		 yfollow = true,
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
		 anim_range = 1000 * METER,
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
		 start_z = 40.0 * METER,
		 end_z = 1000.0 * METER,
		 color = { 10, 70, 140 },
	  },
   },

   -- レンズフレア
   {
	  name = "CLensFlareManager",
	  params = {
		 source_light = { -2000.0, 1000.0, -10000.0 },
	  },
   },

   -- 影色
   {
	  name = "CShadowManager",
	  params = {
		 color = { 0, 0, 10 },
		 alpha = 90,
	  },
   }, 
}
